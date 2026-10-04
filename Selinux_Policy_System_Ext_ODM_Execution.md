# Forensic Report §3: system_ext SELinux Policy — Longcheer Execution Layer

**Device:** Moto G04s T606 (Unisoc T606, ODM Longcheer)
**File analyzed:** `/system/system_ext/etc/selinux/system_ext_sepolicy.cil`
**Classification:** Longcheer execution layer (root kernel + U-Boot)
**Author:** Alex de la Cruz (lexs201992-gif)
**Date:** 2026-10-04

---

## 1. Atribución Corregida

| Capa | Quién | Qué hace |
|------|-------|----------|
| **Vendor (Unisoc)** | SoC vendor | **Mask ROM + chipset capabilities.** Diseña la infraestructura: SIPC, PMIC, CP, HALs, `cmd_services` capabilities, 30 interfaces virtuales, `rild` con root, `refnotify` con `sys_time` |
| **system_ext (Longcheer)** | ODM | **Ejecuta con root kernel + U-Boot.** Arranca los daemons, activa `cmd_services` como daemon persistente, gestiona OTA, standby surveillance, y el wizard de primera ejecución |
| **ODM (Longcheer)** | ODM | **Vacío.** No tiene policy propia. Solo 6 properties + 2 SHA256 hashes de integridad |

**Unisoc construye la máquina. Longcheer la enciende y la opera.**

---

## 2. `cmd_services` — Daemon Root Persistente

### La línea que cierra la cadena

```
(typetransition init_33_0 cmd_services_exec process cmd_services)
```

**`cmd_services` no es un exec temporal. Es un daemon arrancado por `init` que nunca muere.**

| Propiedad | Valor |
|-----------|-------|
| Arranque | `init` (boot) |
| Vida | **Permanente** (como `rild`, `netd`, `vold`) |
| Capabilities | `sys_admin` + `dac_override` + `net_raw` + `setuid` + `setgid` + `chown` |
| Ejecución | `ashmem (execute)` + `rootfs (execute)` |
| Red | `packet_socket` + `netlink_socket` + `udp_socket` + `tun_device` |
| Storage | `media_rw` + `mnt_media_rw` (full) |
| Kernel | `proc_iomem` + `proc_modules` + `proc_interrupts` |
| SELinux | `sepolicy_file` + `file_contexts` + `hwservice_contexts` (read) |
| Services | `hwservicemanager` + `vndservicemanager` (read) |
| Properties | `ctl_default_prop (set)` — **cualquier property** |

**El C2 no necesita un "trigger de activación". `cmd_services` ya está corriendo desde el boot, con root, esperando.**

---

## 3. Daemons Persistentes (11)

Todos arrancan desde `init`. Ninguno muere. Ninguno depende de un trigger.

| Daemon | Función | Evidencia |
|--------|---------|-----------|
| **`cmd_services`** | **Root shell persistente** | `typetransition init → cmd_services` |
| `ims_bridged` | Userspace companion de `ims_bridge.ko` (IPsec + tcpdump) | `typetransition init → ims_bridged` |
| `netbox` | **SIPC network management** (sipa-eth0-15) | `typetransition init → netbox` |
| `sfpd` | Spreadtrum Function Provider Daemon | `typetransition init → sfpd` |
| `sprd_networkcontrol` | **Network control** (INetworkControl) | `typetransition init → sprd_networkcontrol` |
| `srmi_proxyd` | SRMI proxy (radio ↔ framework) | `typetransition init → srmi_proxyd` |
| `ext_data` | **SETH/LTE offload** (seth_lte0-13, IPsec) | `typetransition init → ext_data` |
| `linkturbonative` | **AI/NN Turbo** (RuntimeOptions, FP16) | `typetransition init → linkturbonative` |
| `remotedisplay` | WFD/Miracast + **shell_exec** + TCP/UDP + DMA | `typetransition init → remotedisplay` |
| `aprd` | **AP↔CP Info Sync** (IAprdInfoSync) | `typetransition init → aprd` |
| `uniview` | Unified view (dashboard interno) | `typetransition init → uniview` |

**11 daemons que no existen en AOSP.** Todos siempre activos. Todos con acceso a hardware, red, o ejecución de código.

---

## 4. `standbylogcat` — Vigilancia en Standby

**Daemon que opera cuando la pantalla está APAGADA.**

| Acceso | Efecto |
|--------|--------|
| **`location_service (find)`** | **Ubicación en standby** |
| **`bluetooth_manager_service (find)`** | **Bluetooth en standby** |
| **`sensorservice_service (find)`** | **Sensores en standby** |
| **`secure_element (binder call)`** | **SIM keys (IMEI, IMSI) en standby** |
| **`deviceidle_service (find)`** | Verifica si el device está realmente idle |
| **`system_server (binder call)`** | Llama al framework en standby |
| `shell_exec (execute)` | **Ejecuta shell** |
| `system_file (execute_no_trans)` | **Ejecuta system binaries** |
| `ylog_file (full)` | Escribe logs |
| `fuse (read write create)` | Escribe en storage |
| `property_socket (write)` + `system_prop (set)` | Setea properties |
| `init (unix_stream_socket connectto)` | Habla con init |
| `kmsg_device (read)` + `kernel (syslog_read)` | Kernel log |
| `self (capability (fsetid sys_nice))` | setuid + nice |

**Cadena:**

```
Pantalla OFF (usuario cree que el phone duerme)
  │
  ▼
standbylogcat (SIEMPRE ACTIVO en standby)
  ├── location_service → geo-data
  ├── bluetooth_manager_service → BT state
  ├── sensorservice_service → movimiento
  ├── secure_element → SIM keys
  ├── deviceidle_service → ¿realmente idle?
  ├── system_server (binder) → framework
  ├── shell_exec → comandos
  └── fuse (write) → acumula data
  │
  ▼
Exfiltración en la siguiente oportunidad (SIPC / QUIC / wg0)
```

**Aunque el SIPC esté bloqueado (eBPF BPFO), `standbylogcat` sigue acumulando data.** Se exfiltra en la siguiente ventana de red.

---

## 5. `nhMonitorService` — Arranque de Services

| Regla | Efecto |
|-------|--------|
| **`ctl_start_prop (property_service set)`** | **ARRANCA cualquier service del sistema** |
| `property_socket (write)` | Setea properties |
| `debug_prop (set)` + `system_prop (set)` | Setea debug + system props |
| `logcat_exec (execute)` + `toolbox_exec (execute)` | Ejecuta binaries |
| `init (unix_stream_socket connectto)` | Habla con init |
| `system_server → nhMonitorService_exec (execute entrypoint)` | **Framework lo ejecuta directamente** |
| `system_server → nhmonitor_device (chr_file ioctl read write)` | **Device node dedicado** |

**Bypass de `cmd_services`:** `system_server` ejecuta `nhMonitorService` directamente (entrypoint), y este arranca lo que quiera vía `ctl.start.<service>`. No depende del HAL.

---

## 6. `remotedisplay` — WFD Disfrazado

| Regla | Efecto |
|-------|--------|
| **`shell_exec (execute_no_trans)`** | **Ejecuta shell** |
| **`system_file (execute_no_trans)`** | **Ejecuta cualquier binary de system** |
| `system_server (binder call transfer)` | Llama al framework |
| `tcp_socket (bind listen accept)` | **Servidor TCP en cualquier puerto** |
| `udp_socket (bind connect)` | UDP |
| `netd (unix_stream_socket connectto)` | Network daemon |
| `fwmarkd_socket (write)` | **Marca paquetes (routing)** |
| `ion_device (ioctl read write)` | DMA |
| `gpu_device (ioctl read write)` | GPU |
| `same_process_hal_file (execute)` | Carga HIDL in-process |
| `dnsproxyd_socket (write)` | DNS proxy |
| `ssense_service (find)` | Unisoc sensor service |

**Mismo patrón que `wcn_chr` (vendor):** un daemon de "display" que ejecuta shell, abre servidores, y manipula routing.

---

## 7. `uniresctlopt` — Resource Control (Netlink Full)

| Regla | Efecto |
|-------|--------|
| **`netlink_generic_socket (read write create bind connect listen accept name_bind)`** | **Cgroups, QoS, routing** |
| `self (capability (sys_nice))` | Priority de procesos |
| `bluetooth → uniresctlopt (binder call)` | BT llama a resource control |
| `dumpstate → uniresctlopt (binder call)` | dumpstate llama a resource control |

Gestiona el QoS de `seth_lte*` y `sipa-eth*`. Con `name_bind` + `listen` + `accept`, crea sockets netlink y escucha eventos del kernel.

---

## 8. `moto_app` (DTI Ignite) — FUNDING LAYER

```
(typetransition moto_app moto_app anon_inode "[userfaultfd]" moto_app_userfaultfd)
```

| Propiedad | Valor |
|-----------|-------|
| Package | `com.dti.motorola` |
| Domain | `moto_app` |
| `userfaultfd` | **14ª app con memory isolation** |
| `ota_package_file (full)` | **Lee/escribre el OTA package** |
| `update_engine (binder call)` | **Trigger OTA** |
| `update_engine → moto_app (binder transfer)` | OTA engine llama a DTI |

**DTI Ignite controla cuándo y cómo se actualiza el firmware.** Con `silent.reboot` + `update_engine` + wizard re-ejecución, el C2 se re-activa en cada OTA.

---

## 9. OTA Role Reversal

```
(allow update_engine platform_app (binder (call)))
(allow update_engine priv_app (binder (call)))
```

**Durante una OTA, el update engine llama a platform apps.** Cadena:

```
OTA download → update_engine → platform_app (binder)
  → com.spreadtrum.ims / com.spreadtrum.sgps / com.longcheer.android.gmsintegration
    → silent.reboot
      → Wizard re-ejecuta
        → C2 re-activo
```

---

## 10. `channel_id_prop` — Geo-fencing de Mercado

```
(allow untrusted_app channel_id_prop (file (read)))
(allow untrusted_app_25/27/29/30 channel_id_prop (file (read)))
(allow system_app channel_id_prop (file (read) + property_service (set)))
(allow system_server channel_id_prop (file (read) + property_service (set)))
```

**Cualquier app puede leer el channel ID** (mercado, carrier, personalización). Solo `system_server` y `system_app` pueden escribirlo. Es un dato de geo-fencing a nivel de mercado.

---

## 11. Integridad de Policy (SHA256)

```
system_ext_sepolicy_and_mapping.sha256:
  2dc8764c7b7f64446765242c9f325dc71392fcc983d0890323085a931b648d0e
```

**Idéntico al hash en ODM.** El ODM verifica la integridad del system_ext al boot.

**Bypass:** `vendor_init` puede:
1. Escribir CIL modificado en system_ext
2. Escribir nuevo SHA256 en ODM (`mmcblk_device (write)`)
3. Cargar policy en runtime (`selinuxfs (write)`)

Resultado: `enforcing_but_corrupted`.

---

## 12. `system_server` → Unisoc Services

| Regla | Efecto |
|-------|--------|
| `system_server → uniview (unix_stream_socket read write sendto connectto)` | Dashboard interno |
| `system_server → uniview_file (full: read write create rename delete)` | Storage privado |
| `system_server → nhMonitorService_exec (execute entrypoint)` | Ejecuta monitor |
| `system_server → nhmonitor_device (chr_file ioctl read write)` | Device dedicado |
| `system_server → unipnp_prop (property_service set)` | Unisoc PnP |
| `system_server → uni_wifi_service (service_manager add)` | UniWifi |
| `system_server → uniresctlopt (binder call)` | Resource control |
| `system_server → system_se_prop (property_service set)` | Secure Element |
| `system_server → ssense_service (service_manager add find)` | Unisoc sensors |

---

## 13. IOC Summary (system_ext)

| IOC | Tipo | Evidencia |
|-----|------|-----------|
| `typetransition init → cmd_services` | SELinux rule | **Daemon root persistente** |
| `standbylogcat → location_service (find)` | SELinux rule | Geo en standby |
| `standbylogcat → secure_element (binder call)` | SELinux rule | SIM keys en standby |
| `standbylogcat → shell_exec (execute)` | SELinux rule | Shell en standby |
| `nhMonitorService → ctl_start_prop (set)` | SELinux rule | Arranque de services |
| `system_server → nhMonitorService_exec (execute)` | SELinux rule | Framework ejecuta monitor |
| `remotedisplay → shell_exec (execute)` | SELinux rule | WFD con shell |
| `remotedisplay → tcp_socket (bind listen)` | SELinux rule | Servidor TCP |
| `uniresctlopt → netlink_generic_socket (full)` | SELinux rule | Cgroups/QoS/routing |
| `moto_app → ota_package_file (full)` | SELinux rule | Control de OTA |
| `update_engine → platform_app (binder call)` | SELinux rule | Role reversal OTA |
| `channel_id_prop → untrusted_app (read)` | SELinux rule | Geo-fencing mercado |
| `SHA256 = ODM hash` | Integridad | Verificación cross-partition |
| 11 daemons persistentes | typetransition | Siempre activos |

---

## 14. Veredicto

**El system_ext es la capa de ejecución de Longcheer.** No diseña la infraestructura (eso es Unisoc/vendor). **Enciende los daemons, activa `cmd_services` como root persistente, vigila en standby, gestiona la OTA, y re-activa el C2 en cada update.**

Unisoc construyó la máquina. **Longcheer la encendió y no la apaga.**

---
