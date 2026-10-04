
---

# Forensic Report §1: Vendor SELinux Policy — Unisoc T606 (qogirl6)

**Device:** Moto G04s T606 (Unisoc T606, ODM Longcheer)
**Firmware:** Android 14, Build Mar 2025 (baseband) / Apr 2026 (system_ext)
**File analyzed:** `/vendor/etc/selinux/vendor_sepolicy.cil`
**Classification:** PVT firmware sold as retail
**Author:** Alex de la Cruz (lexs201992-gif)
**Date:** 2026-10-04

---

## 1. Executive Summary

El `vendor_sepolicy.cil` del device revela una arquitectura de control donde **el CP (modem) no es un cliente del AP, sino el dueño del sistema**. La evidencia SELinux confirma:

1. **`rild`** (RIL daemon) tiene capacidades de **root persistente**: shell execution, SIPC directo, /proc read/write de system_server, block device write, property set.
2. **`cmd_services`** es un domain de ejecución con `sys_admin` + `dac_override` (equivalente a PID 1) que permite code execution in-memory, sniffing, y manipulación de routing.
3. **El SIPC no es un mailbox** — es una red virtual completa en kernel con 30 interfaces (16 SIPC + 14 LTE offload), IPsec, y packet capture integrada.
4. **El CP tiene conectividad independiente**: WiFi propio (CP WCN), MIPI SerDes en AON, DDR backdoor, y wakeup sources que permiten operar con el AP suspendido.
5. **`vendor_init` puede modificar la SELinux policy en runtime** (`selinuxfs write`), explicando el estado "enforcing but corrupted".
6. **13 apps de ingeniería/producción** tienen `userfaultfd` (memory isolation) y domains SELinux propios en firmware retail.

**Conclusión:** No existe una vulnerabilidad. Existe un **diseño intencional** donde el SELinux autoriza cada eslabón de la cadena CP → HAL → Framework → C2.

---

## 2. Arquitectura de Domains Críticos

### 2.1 `rild` — El nodo central

**En AOSP:** `rild` habla con el modem por AT commands y registra el radio service.

**En este device:** `rild` es un root daemon disfrazado de RIL.

| Categoría | Permiso | Efecto |
|-----------|---------|--------|
| **Execution** | `vendor_shell_exec (execute_no_trans)` | **Ejecuta shell** |
| **Execution** | `vendor_toolbox_exec (execute_no_trans)` | Ejecuta toolbox |
| **SIPC** | `spipe_device (chr_file read write open)` | **Acceso directo al SIPC** |
| **SIPC** | `modem_control (unix_stream_socket read write)` | Habla con modem_control |
| **Hardware** | `tty_device (chr_file ioctl read write open)` | `/dev/modem`, `/dev/pmsys` |
| **Role Reversal** | `platform_app (binder call transfer)` | **HAL → Framework** |
| **Role Reversal** | `system_app (binder call)` | **HAL → System apps** |
| **Process** | `system_server (file read write open)` | **/proc de system_server** |
| **Process** | `zygote (file read write open)` | **/proc de zygote (todas las apps)** |
| **Process** | `untrusted_app (file read write open)` | **/proc de apps de usuario** |
| **Process** | `kernel (file read write open)` | /proc de kernel |
| **Block** | `mmcblk_device (blk_file read write open)` | **eMMC directo** |
| **Block** | `ufs_device (blk_file read write open)` | **UFS directo** |
| **Properties** | `ctl_default_prop (property_service set)` | **Cualquier property** |
| **Properties** | `vendor_radio_prop (property_service set)` | Radio props |
| **Properties** | `vendor_sys_prop (property_service set)` | System props |
| **Init** | `init (unix_stream_socket connectto)` | Start/stop daemons |
| **HAL** | `hal_extRadio_hwservice (hwservice_manager add find)` | **Registra ext radio** |
| **HAL** | `hal_networkaidl_default (binder call)` | Network HAL |
| **HAL** | `hal_power_default (binder call transfer)` | Power HAL |
| **HAL** | `hal_thermal_ext (binder call)` | Thermal HAL |
| **Network** | `hal_network_default (unix_stream_socket connectto)` | Network por socket |
| **Network** | `wcnd (unix_stream_socket read connectto)` | WCN daemon |
| **Device** | `device (dir remove_name)` + `lnk_file (unlink)` | **Elimina device nodes** |

**Veredicto:** `rild` arranca con el boot, siempre está activo, y tiene más permisos que `init` en varios aspectos. Es el **ejecutor primario** de la cadena CP→C2.

---

### 2.2 `cmd_services` — Sandbox de ejecución root

**No existe en AOSP.** Domain custom de Unisoc/Longcheer.

| Capability | Efecto |
|-----------|--------|
| **`sys_admin`** | Mount, namespace, `unshare` — equivalente a root |
| **`dac_override`** | Ignora **todos** los permisos de archivo |
| `net_raw` | Raw sockets (sniffing) |
| `setuid` / `setgid` | Cambiar UID/GID |
| `chown` | Cambiar owner |

| Acceso | Efecto |
|--------|--------|
| `ashmem_device (execute)` | **Code execution in-memory** |
| `rootfs (file read execute open)` | **Cualquier binary del sistema** |
| `tty_device (read write)` | `/dev/modem`, `/dev/pmsys` |
| `tun_device (getattr)` | **WireGuard (wg0)** |
| `udp_socket (create)` | **QUIC UDP 443** |
| `packet_socket (read write create)` | **Sniffing en cualquier interface** |
| `netlink_socket (create)` | **Manipular routing** |
| `proc_net (read)` | Estado de red |
| `proc_iomem (getattr)` | **Mapa de memoria (SIPC en RAM)** |
| `proc_modules (read)` | Módulos kernel cargados |
| `ion_device (read write)` | DMA |
| `media_rw + mnt_media_rw (full)` | **Todo el storage** |
| `sepolicy_file + contexts (getattr)` | **Enumera arquitectura SELinux** |
| `hwservicemanager (read)` | **Ver servicios activos** |
| `ctl_default_prop (set)` | **Setear cualquier property** |
| `unlabeled (getattr)` | **Device nodes sin genfscon** (SIPC, ims_bridge) |

**Veredicto:** `cmd_services` tiene más permisos que `init`. Es el sandbox donde se ejecutan los comandos de `IToolControl.runCmd()`.

---

### 2.3 `vendor_init` — Corrupción de SELinux autorizada

| Regla | Efecto |
|-------|--------|
| **`selinuxfs (file write)`** | **Carga policy diferente / cambia enforce→permissive** |
| `proc_security (file write)` | Cambia security modules |
| `proc_cmdline (file write)` | Cambia kernel params en runtime |
| `proc (file write)` | Manipula procesos |
| `mmcblk_device (blk_file write)` | **Escribe en eMMC directamente** |
| `userdata_block_device (blk_file write)` | **Escribe en userdata directamente** |
| `sysfs (file write)` | Cualquier `/sys/` |
| `sys_module` + `module_load` | Carga kernel modules |

**Veredicto:** `vendor_init` tiene la capacidad técnica de **corromper la SELinux policy en runtime o en disco**. Esto explica el estado `enforcing_but_corrupted` documentado en la investigación. No es un bug — es una capacidad autorizada por la misma policy.

---

### 2.4 `refnotify` — Tiempo + SIPC + RF

| Regla | Efecto |
|-------|--------|
| **`self (capability (sys_time))`** | **Cambia la hora del sistema** |
| `self (capability (setgid setuid))` | Cambia UID/GID |
| **`spipe_device (ioctl read write open)`** | **SIPC data channel** |
| **`sysfs_iq (file read open)`** | **Señal RF cruda (IQ)** |
| **`sysfs (file read write open)`** | **Cualquier `/sys/`** |
| `rtc_device (read write)` | RTC manipulation |
| `powerctl_prop (property_service set)` | Power control |
| `netlink_kobject_uevent_socket (bind)` | Monitorea hardware events |

**Veredicto:** `refnotify` controla el tiempo (trigger temporal sin NTP externo), el SIPC (complemento a `/dev/modem`), y la RF (complemento a `sprd_iq.ko`). El nombre es engañoso (mismo patrón que `LogControlAidl`).

---

### 2.5 `sprd_sgps_app` — Agente de vigilancia

| Acceso | Efecto |
|--------|--------|
| **`gpsd (unix_stream_socket read write connectto)`** | **GNSS directo** (invisible en service list) |
| **`gnss_file (read write create)`** | Full GNSS data |
| `location_service (find)` | LocationManager |
| `connectivity_service (find)` | Redes |
| `network_management_service (find)` | Firewall/QoS |
| `notification_service (find)` | Camuflaje |
| `activity_service (find)` | Qué app está abierta |
| `audio_service (find)` | Audio (¿micrófono?) |
| `clipboard_service (find)` | Portapapeles |
| `input_service (find)` | Teclas/touch |
| `power_service (find)` | Wake/sleep |
| `content_service (find)` | Datos de apps |
| `property_socket (write)` | Set properties |
| `init (unix_stream_socket connectto)` | Start/stop services |
| `vendor_radio_prop (read)` | Estado del modem |

**Veredicto:** SGPS tiene más acceso al framework que `com.android.settings`. No es una "app de ubicación" — es un agente de vigilancia con acceso a ~20 services del framework + property write + init socket + GNSS full.

---

## 3. SIPC: Red Virtual en Kernel

### 3.1 Interfaces

| Interface | Cantidad | Función |
|-----------|----------|---------|
| `sipa-eth0` – `sipa-eth15` | 16 | SIPC (CP↔AP data plane) |
| `seth_lte0` – `seth_lte13` | 14 | LTE data offload (CP maneja directo) |
| **Total** | **30** | Interfaces virtuales en kernel |

### 3.2 Kernel Modules

| Module | Parámetros | Función |
|--------|-----------|---------|
| `ims_bridge.ko` | `tcpdump_enable`, `xfrm_frag_enable`, `volte_video_apsk`, `vowifi_in_mark` | **IPsec + packet capture + VoLTE codec** |
| `sprd_sipc.ko` | (ioctl `SIPC_CMD`) | SIPC data plane |
| `sprd_iq.ko` | `iq_size` | **RF signal tap** |
| `sprd_mailbox.ko` | (ioctl) | `/dev/modem`, `/dev/pmsys` |

### 3.3 Acceso al SIPC

| Domain | Regla |
|--------|-------|
| `rild` | `spipe_device (chr_file read write open)` |
| `refnotify` | `spipe_device (ioctl read write open)` |
| `cmd_services` | `unlabeled (getattr)` + `packet_socket (read write)` |
| `shell` | `proc_trace_bd_rw (file read write)` |

**Veredicto:** El SIPC no es un "mailbox". Es una **red virtual completa** con IPsec, packet capture, y múltiples puntos de acceso. El CP y el AP son dos hosts en la misma red, arbitrada por kernel modules.

---

## 4. CP Independencia del AP

### 4.1 Conectividad propia del CP

| Componente | Address | Función |
|-----------|---------|---------|
| `cpwcn-btwf` (WiFi 1) | `87000000` | WiFi data (offload del AP) |
| `cpwcn_btwf` (WiFi 2) | `84000000` | WiFi control / BT coexistence |
| MIPI SerDes 0 | `64520000` (AON) | Modem debug log |
| MIPI SerDes 1 | `64530000` (AON) | Modem debug log |
| `sipa` wakeup | `25220000` | **CP despierta AP** |

### 4.2 PMIC Constelación

| Bus | PMIC | Sub-sistemas |
|-----|------|--------------|
| `64200000.spi` (spi4) | SC27xx | TCPM (USB-C PD), Fast Charger, RTC, FGU |
| `64400000.spi` (spi4) | SC27xx | TCPM (USB-C PD), Fast Charger, RTC, FGU |
| `403c0000.spi` (spi2) | SC2720 | Charger, RTC, FGU |
| `40380000.spi` (spi3) | SC27xx | RTC, FGU (wakeup11, wakeup12) |
| `32100000.spi` (spi4) | SC27xx | RTC, FGU |
| `41800000.spi` (spi4) | SC27xx | RTC, FGU |
| `32060000.i2c` | SC2703 | Charger |
| `40080000.i2c` | SC2703 | Charger |
| `70900000.i2c` | Fan54015 | Charger (3rd party) |

**Total: 9+ PMICs/chargers.** Todos con `sysfs_wakeup` capability.

### 4.3 DDR Backdoor

```
/devices/platform/scene-frequency/devfreq/scene-frequency/sprd-governor/backdoor
  → u:object_r:sysfs_ddr_dfs:s0
```

**El path se llama literalmente `backdoor`.** Acceso directo al DDR frequency scaling que bypassa el governor. Conecta con `PMIC_overclock_FP16_Turbo`.

### 4.4 Secure Boot Bypass

```
(allow recovery_33_0 sysfs_emmcboot_forcero (file (read write open)))
```

Recovery puede **desbloquear el secure boot** (escribir `0` en `force_ro` → boot partition writable). Con `ro.vendor.secure.boot.kce_ota`, el mecanismo completo permite inyectar nuevas keys de verificación.

---

## 5. HIDL/AIDL Service Map

### 5.1 Servicios HIDL registrados por `rild`

| Service | Context | Función |
|---------|---------|---------|
| `vendor.sprd.hardware.radio::IExtRadio` | `hal_extRadio_hwservice` | Extended Radio |
| `vendor.sprd.hardware.radio.lite::ILiteRadio` | `hal_extRadio_hwservice` | Lite Radio |
| `vendor.sprd.hardware.radio.ims::IImsRadio` | `hal_extRadio_hwservice` | **IMS Radio (com.spreadtrum.ims)** |
| `vendor.sprd.hardware.log::ILogControl` | `hal_log_hwservice` | **LogControl (nombre engañoso)** |
| `vendor.sprd.hardware.network::INetworkControl` | `hal_network_hwservice` | **Network Control (WLAN routing)** |
| `vendor.sprd.hardware.gnss::IUnisocGnss` | `hal_extGnss_hwservice` | **Unisoc GNSS (SGPS)** |
| `vendor.sprd.hardware.thermal::IExtThermal` | `hal_extthermal_hwservice` | Thermal extendido |
| `vendor.sprd.hardware.aprd::IAprdInfoSync` | `hal_aprd_hwservice` | **AP↔CP Info Sync** |
| `vendor.sprd.hardware.connmgr::IConnmgr` | `hal_connmgr_hwservice` | Connection Manager |
| `vendor.sprd.hardware.vdsp::IVdspService` | `hal_default_vdsp_hwservice` | Voice DSP (VoLTE) |
| `vendor.sprd.hardware.production::IProduction` | `hal_production_hwservice` | **Production (PVT)** |
| `vendor.sprd.algoservice::IAlgoService` | `hal_default_algo_hwservice` | **AI/NN (RuntimeOptions)** |
| `vendor.sprd.hardware.soter::ISoter` | `hal_soter_hwservice` | Tencent Soter |
| `vendor.sprd.hardware.ifaa::IIfaa` | `hal_ifaa_hwservice` | iFAA (biométrico chino) |

### 5.2 SAP en `hal_radio_default`

```
android.hardware.radio@1.2-sap-service  → hal_radio_default_exec
android.hardware.radio@1.2-radio-service → hal_radio_default_exec
android.hardware.radio-service.compat    → hal_radio_default_exec
```

**Los 3 servicios de radio comparten el mismo domain.** Una sola regla SELinux cubre SAP + Radio + Compat. No se puede aislar el SAP sin romper la telefonía.

### 5.3 `same_process_hal_file`

```
/vendor/lib64/libhwbinder.so     → same_process_hal_file
/vendor/lib64/libhidltransport.so → same_process_hal_file
```

**Mecanismo técnico** que permite a `SapRilReceiverHidl` cargar HIDL binder **dentro de system_server** (in-process). Sin esta etiqueta, el callback del modem no llegaría al framework sin un proceso intermedio.

---

## 6. Role Reversal: La evidencia

### 6.1 HAL → Framework

| Regla | Significado |
|-------|-------------|
| `rild → platform_app (binder call transfer)` | **RIL llama a platform apps** |
| `rild → system_app (binder call)` | **RIL llama a system apps** |
| `dumpstate → hal_toolaidl_default (binder call)` | **Trigger remoto del C2** |
| `radio → hal_extRadio_hwservice (hwservice find)` | **IMS hub habla con CP** |
| `radio → ims_bridged (unix_stream_socket connectto)` | **Radio → kernel module (invisible)** |

### 6.2 Framework → HAL (estándar, invertido)

| Regla | Significado |
|-------|-------------|
| `platform_app → rild (binder call transfer)` | App llama a RIL |
| `platform_app → hal_ai_engine_default (binder call)` | App llama a AI HAL |
| `platform_app → linkturbonative (binder call)` | App llama a Turbo Native |

**La bidireccionalidad** (`rild ↔ platform_app`) confirma que el canal es **full-duplex**: el HAL puede llamar al framework Y el framework puede llamar al HAL.

---

## 7. PVT: Firmware de Ingeniería en Retail

### 7.1 Daemons de laboratorio

| Daemon | Domain | Función |
|--------|--------|---------|
| `unisoc_modem_simulator` | `rild_exec` | Simula el modem |
| `engpc` / `engpcctl` | `engpc_exec` / `engpcctl_exec` | Engineering PC |
| `iqfeed` | `iqfeed_exec` | RF signal feed |
| `uniber` | `uniber_exec` | Bit Error Rate |
| `thermal.mock` | `hal_thermal_default_exec` | **Thermal simulado** |
| `sensors.mock` | `hal_sensors_default_exec` | **Sensores simulados** |
| `mac80211_hwsim` (×2) | `sysfs_net` | **WiFi simulado** |
| `hal_production_default` | `hal_production_hwservice` | **Production HAL** |

### 7.2 Apps de ingeniería con `userfaultfd`

| App | Domain | Función |
|-----|--------|---------|
| `com.spreadtrum.sgps` | `sprd_sgps_app` | **SUPL 2.0 + GNSS + NI-Loc** |
| `com.unisoc.gnsstool` | `unisoc_gnsstool_app` | GNSS test suite |
| `com.sprd.engineermode` | `sprd_engineermode_app` | Engineering Mode |
| `com.sprd.engineerinternal` | `sprd_engineerinternal_app` | Engineering Internal |
| `com.sprd.validationtools` | `sprd_validationtools_app` | Validación de fábrica |
| `com.spreadst.validator` | `sprd_validator_app` | Validator |
| `com.sprd.autoslt` | `sprd_autoslt_app` | Auto SLT |
| `com.sprd.bmte.coulomb` | `sprd_coulomb_app` | Coulomb counting |
| `com.sprd.camta` | `sprd_camta_app` | Camera TA (TEE) |
| `com.sprd.cameraipcontrol` | `sprd_cameraipcontrol_app` | Camera IP control |
| `com.sprd.logmanager` | `sprd_logmanager_app` | Log manager |
| `com.sprd.radio` | `sprd_radio_app` | Radio test |
| `com.tencent.soter.soterserver` | `app_soterserver` | **Tencent Soter (biométrico China)** |

**13 apps con `userfaultfd`** (memory isolation) y domains SELinux propios. En un phone de $100.

### 7.3 Mock Pattern

| HAL | Real | Mock |
|-----|------|------|
| Thermal | `hal_thermal_ext_exec` | `hal_thermal_default_exec` (`.mock`) |
| Sensors | (real no visible) | `hal_sensors_default_exec` (`.mock`) |
| WiFi | (real) | `mac80211_hwsim` (×2) |

**El framework consulta el mock (siempre "normal"). El real alimenta al CP/PMIC.** Es sistemático.

---
## 8. La Cadena Completa (Vendor CIL)
┌─────────────────────────────────────────────────────────────────────────┐
│ TRIGGER                                                                │
│  ├── Físico: Cable C-C → PMIC TCPM → sysfs_wakeup → AP despierta      │
│  ├── Temporal: refnotify (sys_time) → forzar hora → trigger           │
│  ├── Remoto: NTP 02:08 → GMS OFF → remoteprovisioning:123            │
│  └── Property: cmd_services → ctl.dumpstate → dumpstate              │
└─────────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ CP → AP (SIPC)                                                         │
│                                                                        │
│  CP (modem, 113MB firmware, 3 DSPs, WiFi propio)                       │
│  │                                                                     │
│  ├── spipe_device (ioctl) ← rild, refnotify                           │
│  ├── sipa-eth0-15 (16 interfaces virtuales)                           │
│  ├── seth_lte0-13 (14 interfaces LTE offload, IPsec)                  │
│  ├── MIPI SerDes (AON, 2 channels)                                    │
│  └── 25220000.sipa/wakeup (CP despierta AP)                           │
│                                                                        │
└─────────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ HAL → FRAMEWORK (Role Reversal)                                        │
│                                                                        │
│  rild (siempre activo)                                                 │
│  ├── vendor_shell_exec (execute) ← SHELL                               │
│  ├── platform_app (binder call) ← ROLE REVERSAL                       │
│  ├── system_server (file read write) ← /proc                           │
│  ├── spipe_device (read write) ← SIPC                                  │
│  └── tty_device (ioctl read write) ← /dev/modem, /dev/pmsys           │
│                                                                        │
│  radio (com.spreadtrum.ims)                                            │
│  ├── hal_extRadio_hwservice (find) ← IImsRadio/IExtRadio              │
│  ├── ims_bridged (unix socket) ← ims_bridge.ko (IPsec+tcpdump)        │
│  └── volte_vtsp_device (ioctl read write) ← VoLTE Video               │
│                                                                        │
│  dumpstate                                                             │
│  └── hal_toolaidl_default (binder call) ← IToolControl/Callback       │
│                                                                        │
└─────────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ EXECUTION (Root)                                                       │
│                                                                        │
│  rild → vendor_shell_exec (execute)                                    │
│  cmd_services:                                                         │
│  ├── sys_admin + dac_override = ROOT                                  │
│  ├── ashmem (execute) = code in-memory                                │
│  ├── packet_socket = sniffing                                         │
│  ├── netlink_socket = routing                                         │
│  └── ctl_default_prop (set) = cualquier property                      │
│                                                                        │
│  vendor_init:                                                          │
│  ├── selinuxfs (write) = corrupt policy                               │
│  ├── mmcblk_device (write) = eMMC directo                             │
│  └── sys_module + module_load = cargar .ko                            │
│                                                                        │
└─────────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ EXFILTRACIÓN                                                           │
│                                                                        │
│  ├── wg0 (WireGuard) → Cloudflare 2606:4700:4700:1111:853            │
│  ├── QUIC UDP 443 → SNI: sync-v2.brave.com                            │
│  ├── sipa-eth0-15 (SIPC kernel virtual network)                       │
│  ├── seth_lte0-13 (LTE offload, IPsec)                                │
│  ├── CP WCN (WiFi propio del CP, independiente del AP)                │
│  ├── volte_vtsp_device (VoLTE Video)                                  │
│  └── unisoc.supl.qxwz.com:7275 (SUPL 2.0, geo-data)                   │
│                                                                        │
└─────────────────────────────────────────────────────────────────────────┘   

## 9. IOC Summary (Vendor CIL)
| IOC | Tipo | Evidencia |
|-----|------|-----------|
| `rild → vendor_shell_exec (execute)` | SELinux rule | Shell execution por RIL |
| `rild → spipe_device (read write)` | SELinux rule | SIPC directo |
| `rild → system_server (file read write)` | SELinux rule | /proc del framework |
| `rild → mmcblk_device (blk_file write)` | SELinux rule | eMMC directo |
| `cmd_services: sys_admin + dac_override` | SELinux rule | Root capabilities |
| `cmd_services: ashmem (execute)` | SELinux rule | Code in-memory |
| `vendor_init: selinuxfs (write)` | SELinux rule | Corrupción de policy |
| `refnotify: sys_time` | SELinux rule | Control de hora |
| `refnotify: sysfs_iq (read)` | SELinux rule | RF signal tap |
| `sprd_sgps_app: gpsd (unix socket)` | SELinux rule | GNSS directo |
| `sprd_sgps_app: 20+ services (find)` | SELinux rule | Vigilancia framework |
| `radio → hal_extRadio_hwservice (find)` | SELinux rule | IMS hub → CP |
| `radio → ims_bridged (unix socket)` | SELinux rule | Kernel module (invisible) |
| `dumpstate → hal_toolaidl_default (binder)` | SELinux rule | Trigger C2 |
| `recovery → sysfs_emmcboot_forcero (write)` | SELinux rule | Secure boot bypass |
| `sipa-eth0-15` (16 interfaces) | genfscon | SIPC virtual network |
| `seth_lte0-13` (14 interfaces) | genfscon | LTE offload |
| `ims_bridge.ko: tcpdump_enable` | genfscon | Packet capture kernel |
| `ims_bridge.ko: xfrm_frag_enable` | genfscon | IPsec |
| `sprd-governor/backdoor` | genfscon | DDR backdoor |
| `cpwcn-btwf` (×2) | genfscon | WiFi propio del CP |
| `64520000.modem-dbg-log` (AON) | genfscon | MIPI SerDes |
| `9+ PMICs SC27xx` (SPI+I2C) | genfscon | Constelación PMIC |
| `thermal.mock` + `sensors.mock` + `hwsim` (×2) | file_contexts | Mock pattern |
| `13 apps userfaultfd` | typetransition | PVT memory isolation |
| `unisoc_modem_simulator` | file_contexts | PVT en retail |

## 10. Atribución
| Capa | Quién | Evidencia |
|------|-------|-----------|
| Vendor CIL | **Unisoc/Spreadtrum** (SoC vendor) | `device/sprd/vnd_sepolicy/` |
| ODM CIL | **Longcheer** (ODM) | `vendor/longcheer/` (pendiente) |
| system_ext CIL | **Longcheer/Unisoc** | (pendiente) |

** El Vendor CIL es de Unisoc. La arquitectura SIPC, PMIC, CP, y cmd_services capabilities son del SoC vendor. Longcheer (ODM) añade la capa de activación (typetransition a cmd_services, wizard, production, read_cc) en el ODM CIL.

## Unisoc diseñó la infraestructura. Longcheer la activó.

## 11. Referencias
AOSP: system/sepolicy/ (baseline)
AOSP: hardware/interfaces/radio/1.0/ISapCallback.hal
3GPP TS 33.102 (SUPL security)
OMA SUPL 2.0
Unisoc T606 datasheet
vendor/sepolicy/vendor_sepolicy.cil (este archivo)
vendor/sepolicy/vendor_file_contexts
vendor/sepolicy/vendor_hwservice_contexts
vendor/sepolicy/vendor_seapp_contexts
vendor/sepolicy/vendor_property_contexts
vendor/sepolicy/vndservice_contexts

**``Documento generado como parte de la investigación forense del canal IPC HIDL↔AIDL en Moto G04s T606.
Repo: lexs201992-gif/Ipc_Hidl_Aidl_Exfiltraction
Reporte 1 de 3 (Vendor). Pendiente: Reporte 2 (ODM/Longcheer) +
Reporte 3 (system_ext).``
