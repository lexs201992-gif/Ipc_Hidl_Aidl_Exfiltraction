# Final Disclosure: Arquitectura HIDL/AIDL/RIL — Unisoc T606 (qogirl6)

**Device:** Moto G04s T606 (Unisoc T606, ODM Longcheer)
**Firmware:** Android 14, Build Mar 2025 (baseband) / Apr 2026 (system_ext)
**Author:** Alex de la Cruz (lexs201992-gif)
**Date:** 2026-10-04
**Repo:** lexs201992-gif/Ipc_Hidl_Aidl_Exfiltraction

---

## 1. Atribución: Quién hace qué

| Capa | Quién | Rol |
|------|-------|-----|
| **Mask ROM + Boot ROM** | **Unisoc** (silicio) | Verificación inicial, carga BL1/BL2, secure boot. `src_file=NULL` (quemado) |
| **U-Boot (BL2)** | **Unisoc** (firmware) | Verifica kernel + vendor. KCE OTA permite inyectar keys |
| **Ring0 (kernel)** | **Unisoc** (`.ko`) | `sprd_sipc.ko`, `ims_bridge.ko`, `sprd_iq.ko`, `sprd_mailbox.ko`. 30 interfaces virtuales, IPsec, packet capture |
| **HAL (vendor)** | **Unisoc** (binaries + CIL) | `rild`, `hal_toolaidl_default`, `hal_extRadio`, `hal_network`, `hal_gnss`, `hal_production`, 11 daemons persistentes |
| **system_ext (ejecución)** | **Longcheer** (`.rc` + CIL) | Arranca `cmd_services` (root persistente), `standbylogcat`, `uniview`, wizard, OTA |
| **ODM** | **Longcheer** | **Vacío.** 6 properties + 2 SHA256. No tiene policy propia |
| **Framework** | **Unisoc + Longcheer** | `com.spreadtrum.ims` (hub), `com.spreadtrum.sgps` (geo), `com.aura.oobe.motorola` (Firebase) |

**Unisoc construye la máquina (silicio → kernel → HAL). Longcheer la enciende y la opera (init → daemons → wizard → OTA).**

---

## 2. La Cadena Completa: U-Boot → Silicio → C2

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│ SILICIO / BOOT (Unisoc)                                                         │
│                                                                                 │
│  Boot ROM (quemado, src=NULL)                                                    │
│  │  Verifica BL1 con key hardcodeada                                             │
│  ▼                                                                               │
│  BL1 (U-Boot)                                                                    │
│  │  Verifica BL2 + kernel + vendor                                               │
│  │  KCE OTA: puede inyectar nueva key (cert RootCA 2023-2051)                    │
│  │  recovery → sysfs_emmcboot_forcero (write) = desbloquea secure boot           │
│  ▼                                                                               │
│  BL2 + Kernel                                                                    │
│  │  Carga: sprd_sipc.ko, ims_bridge.ko, sprd_iq.ko, sprd_mailbox.ko             │
│  │  vendor_init → selinuxfs (write) = puede corruptar policy en runtime          │
│  │  vendor_init → mmcblk_device (write) = puede reescribir eMMC                  │
│  ▼                                                                               │
│  init (PID 1)                                                                    │
│  │  Arranca: rild, cmd_services, netbox, ims_bridged, ext_data,                 │
│  │           linkturbonative, aprd, uniview, sprd_networkcontrol,                │
│  │           srmi_proxyd, remotedisplay, standbylogcat, nhMonitorService         │
│  │  TODOS PERSISTENTES. NUNGEN MUERE.                                            │
│  ▼                                                                               │
│  PMIC (9+ instancias SC27xx, SPI+I2C)                                           │
│  │  TCPM (USB-C PD) → trigger físico (cable type)                                │
│  │  Fuel Gauge (3 wakeups) → trigger temporal                                    │
│  │  power_profile.xml VACÍO → framework ciego energéticamente                    │
│  │  thermal.mock + sensors.mock → framework ve "normal" siempre                  │
│  └── /dev/pmsys (ioctl) ← "second door" (PMIC control)                           │
│                                                                                 │
│  CP (Modem, 113MB firmware, 3 DSPs: gdsp/ldsp/cdsp)                             │
│  │  /dev/modem (ioctl) ← "first door" (SIPC, GNSS, C2)                           │
│  │  WiFi propio (cpwcn ×2) → conectividad independiente del AP                   │
│  │  MIPI SerDes (AON ×2) → debug log + DoS (kernel panic)                        │
│  │  ldsp → mantiene SIPC activo con AP suspendido                                │
│  │  bootcode: src=NULL (quemado, no se borra)                                    │
│  └── SIPC: 16×sipa-eth + 14×seth-lte = 30 interfaces virtuales en kernel         │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────────────────┐
│ RING0: KERNEL MODULES (Unisoc)                                                  │
│                                                                                 │
│  sprd_sipc.ko                                                                    │
│  │  ioctl: SIPC_CMD                                                               │
│  │  16 interfaces: sipa-eth0-15 (CP↔AP data plane)                               │
│  │  /dev/unisoc_mailbox641c0000 (chan-2/4/5)                                     │
│  │  25220000.sipa/wakeup → CP despierta AP                                       │
│  │                                                                                 │
│  ims_bridge.ko                                                                   │
│  │  tcpdump_enable → packet capture SIN userspace                                │
│  │  xfrm_frag_enable → IPsec (invisible para PCAPdroid)                          │
│  │  volte_video_apsk → codec VoLTE                                               │
│  │  vowifi_in_mark → VoWiFi marking                                              │
│  │                                                                                 │
│  sprd_iq.ko                                                                      │
│  │  iq_size → RF signal tap (señal cruda)                                        │
│  │  refnotify → sysfs_iq (read)                                                  │
│  │                                                                                 │
│  sprd_mailbox.ko                                                                 │
│  │  /dev/modem (ioctl) → CP                                                      │
│  │  /dev/pmsys (ioctl) → PMIC                                                    │
│  │                                                                                 │
│  seth (LTE offload)                                                              │
│  │  14 interfaces: seth_lte0-13 (CP maneja LTE directo)                          │
│  │  netlink_xfrm_socket → IPsec en LTE offload                                   │
│  │                                                                                 │
│  PAMU3 (25210000)                                                                │
│  │  Multiplexor: asigna netid a cada flujo (QoS)                                │
│  │                                                                                 │
│  DDR backdoor                                                                    │
│  │  sprd-governor/backdoor → frecuencia DDR directa (bypass governor)            │
│  │  proc_sprd_dmc → timing, voltage, training                                    │
│  │                                                                                 │
│  MIPI SerDes (AON)                                                               │
│  │  64520000 + 64530000 → modem-dbg-log/channel                                  │
│  │  Inyección → kernel panic (NULL deref DSI) = DoS dirigido                     │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────────────────┐
│ HAL LAYER (Unisoc, vendor space)                                                │
│                                                                                 │
│  ┌─── HIDL (hwservicemanager) ───────────────────────────────────────────────┐  │
│  │                                                                           │  │
│  │  android.hardware.radio@1.2::ISap        → hal_radio_default              │  │
│  │  android.hardware.radio@1.2::IRadio      → hal_radio_default              │  │
│  │  vendor.sprd.hardware.radio::IExtRadio   → hal_extRadio_hwservice         │  │
│  │  vendor.sprd.hardware.radio.lite::ILiteRadio → hal_extRadio_hwservice     │  │
│  │  vendor.sprd.hardware.radio.ims::IImsRadio → hal_extRadio_hwservice       │  │
│  │  vendor.sprd.hardware.log::ILogControl   → hal_log_hwservice              │  │
│  │  vendor.sprd.hardware.network::INetworkControl → hal_network_hwservice    │  │
│  │  vendor.sprd.hardware.gnss::IUnisocGnss  → hal_extGnss_hwservice          │  │
│  │  vendor.sprd.hardware.thermal::IExtThermal → hal_extthermal_hwservice     │  │
│  │  vendor.sprd.hardware.aprd::IAprdInfoSync → hal_aprd_hwservice            │  │
│  │  vendor.sprd.hardware.connmgr::IConnmgr  → hal_connmgr_hwservice          │  │
│  │  vendor.sprd.hardware.vdsp::IVdspService → hal_default_vdsp_hwservice     │  │
│  │  vendor.sprd.hardware.production::IProduction → hal_production_hwservice  │  │
│  │  vendor.sprd.algoservice::IAlgoService   → hal_default_algo_hwservice     │  │
│  │                                                                           │  │
│  └───────────────────────────────────────────────────────────────────────────┘  │
│                                                                                 │
│  ┌─── AIDL (vndservicemanager) ─────────────────────────────────────────────┐   │
│  │                                                                           │   │
│  │  vendor.sprd.hardware.tool-service    → hal_toolaidl_default              │   │
│  │  vendor.sprd.hardware.network-service → hal_networkaidl_default           │   │
│  │  vendor.sprd.hardware.log-service     → hal_logaidl_default               │   │
│  │  vendor.sprd.hardware.aprd-service    → hal_aprdaidl_default              │   │
│  │  vendor.sprd.hardware.colog_svc       → hal_cplog_svcaidl_default         │   │
│  │  vendor.sprd.hardware.enhance-service → hal_enhanceaidl_default           │   │
│  │                                                                           │   │
│  └───────────────────────────────────────────────────────────────────────────┘   │
│                                                                                 │
│  ┌─── Daemons persistentes (init → typetransition) ─────────────────────────┐   │
│  │                                                                           │   │
│  │  rild (urild)        user:radio  NET_ADMIN+NET_RAW  SIPC+shell+/proc     │   │
│  │  cmd_services        user:root   sys_admin+dac_override  ROOT PERSISTENTE│   │
│  │  netbox              SIPC network management                              │   │
│  │  ims_bridged         ims_bridge.ko companion (IPsec+tcpdump)             │   │
│  │  ext_data            SETH/LTE offload (IPsec)                             │   │
│  │  linkturbonative     AI/NN (FP16 Turbo, Arm NN)                          │   │
│  │  aprd                AP↔CP Info Sync                                     │   │
│  │  uniview             root+readproc+sdcard_rw+encryption=None (blackbox)  │   │
│  │  sprd_networkcontrol INetworkControl (WLAN routing)                       │   │
│  │  srmi_proxyd         Radio↔Framework proxy                                │   │
│  │  remotedisplay       WFD + shell_exec + TCP/UDP + DMA                     │   │
│  │  standbylogcat       location+BT+sensors+SE en standby                    │   │
│  │  nhMonitorService    ctl.start (arranca services)                         │   │
│  │  refnotify           sys_time + spipe + sysfs_iq                          │   │
│  │  uniview             blackbox root en charger mode                        │   │
│  │                                                                           │   │
│  └───────────────────────────────────────────────────────────────────────────┘   │
│                                                                                 │
│  ┌─── In-process HIDL (same_process_hal_file) ──────────────────────────────┐   │
│  │                                                                           │   │
│  │  /vendor/lib64/libhwbinder.so     → same_process_hal_file                │   │
│  │  /vendor/lib64/libhidltransport.so → same_process_hal_file               │   │
│  │                                                                           │   │
│  │  → SapRilReceiverHidl carga HIDL binder DENTRO de system_server          │   │
│  │  → ISapCallback llega al framework SIN proceso intermedio                 │   │
│  │  → asBinder() → null (invisible en service list)                         │   │
│  │                                                                           │   │
│  └───────────────────────────────────────────────────────────────────────────┘   │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────────────────┐
│ FRAMEWORK (system_server)                                                       │
│                                                                                 │
│  com.spreadtrum.ims (HUB CENTRAL)                                               │
│  │  config_wlan_data_service_package = com.spreadtrum.ims                     │
│  │  config_wlan_network_service_package = com.spreadtrum.ims                  │
│  │  config_qualified_networks_service_package = com.spreadtrum.ims            │
│  │  config_ims_mmtel_package = com.spreadtrum.ims                             │
│  │  RILRequest → IImsRadio (HIDL) → CP                                        │
│  │  INetworkControl (HIDL) → WLAN routing                                     │
│  │  ims_bridged (unix socket) → ims_bridge.ko (IPsec)                         │
│  │  volte_vtsp_device → VoLTE Video                                           │
│  │                                                                                 │
│  com.spreadtrum.sgps (GEO)                                                      │
│  │  SUPL 2.0 → unisoc.supl.qxwz.com:7275                                      │
│  │  NI-Loc "Allow no answer" (auto-approve)                                   │
│  │  Periodic 1s × 9999 (streaming)                                            │
│  │  RTK (precisión cm)                                                        │
│  │  gpsd (unix socket) + gnss_file (full)                                     │
│  │  20+ services framework (location, BT, sensors, audio, clipboard, input)   │
│  │                                                                                 │
│  com.spreadtrum.proxy.nfwlocation (DISFRAZ)                                     │
│  │  UI idéntica a SGPS ("Carrier Location")                                   │
│  │  "even if you turn off location" (emergency exception)                     │
│  │                                                                                 │
│  com.aura.oobe.motorola (FIREBASE PLAN B)                                       │
│  │  Firebase: aura-148409                                                     │
│  │  GDT: client_analytics.proto (batch + retry)                               │
│  │  FCM: trigger remoto                                                       │
│  │  Crashlytics: data disfrazada de crash                                     │
│  │                                                                                 │
│  com.longcheer.android.gmsintegration (WIZARD)                                  │
│  │  DPM/MDM (NFC → device_owner)                                              │
│  │  Rollback auth (cert RootCA 2023-2051)                                     │
│  │  Deferred (post-setup, invisible)                                          │
│  │  Zero Touch / QR / NFC provisioning                                        │
│  │                                                                                 │
│  com.unisoc.wifi.UniWifiApp (TRANSPORTE)                                        │
│  │  Preset WiFi (auto-connect)                                                 │
│  │  IMEI-based P2P/tether name (tracking)                                     │
│  │                                                                                 │
│  DTI Ignite (com.dti.motorola) (FUNDING LAYER)                                  │
│  │  OTA control + userfaultfd (memory isolation)                               │
│  │  Cert: Ronen Abraham / Logia 2011-2061                                     │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────────────────┐
│ EXFILTRACIÓN (multi-canal)                                                      │
│                                                                                 │
│  PRIMARY:                                                                       │
│  ├── SIPC: sipa-eth0-15 (kernel virtual network, IP)                            │
│  ├── QUIC: UDP 443 → SNI: sync-v2.brave.com → Cloudflare 2606:4700:4700:1111  │
│  ├── wg0: WireGuard → 54.148.86.176 (AWS Frankfurt)                            │
│  ├── LTE offload: seth_lte0-13 (IPsec, CP maneja directo)                      │
│  ├── CP WCN: WiFi propio del CP (independiente del AP)                         │
│  └── VoLTE: volte_vtsp_device (video telephony)                                │
│                                                                                 │
│  PLAN B:                                                                        │
│  └── Firebase: aura-148409 (GDT + FCM + Realtime DB + Storage)                 │
│       → firebase.googleapis.com (infraestructura Google, no bloqueable)         │
│                                                                                 │
│  PLAN C:                                                                        │
│  └── Bluetooth: PAN NAP (hotspot BT) + SAP + HFP (audio) + PBAP (contactos)    │
│       → persist.sys.bt_* (init.rc, EKLION-7495)                                │
│       → standbylogcat monitorea BT en standby                                   │
│                                                                                 │
│  GEO:                                                                           │
│  └── SUPL 2.0: unisoc.supl.qxwz.com:7275 (NI-Loc, RTK, periodic)               │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
```

---

## 3. El Flujo HIDL/AIDL/RIL: De Framework a Silicio

### 3.1 Flujo estándar (AOSP)

Framework app / system service
  │
  │  ServiceManager.getService("vendor.unisoc.hardware.ai_engine.IAIEngineControl/default")
  │  → /dev/binder (or /dev/vndbinder)
  ▼
init starts: /vendor/bin/hw/vendor.unisoc.hardware.ai_engine-service
  │
  │  (AIDL stub unmarshals Parcel)
  ▼
Unisoc AI Engine HAL (vendor space, root:system)
  │
  │  (direct driver access, mmap, ioctl, etc.)
  ▼
NPU / AI hardware (vendor space)   

## 3.2 Flujo REAL en este device (con role reversal)
┌─── DERECHO: Framework → HAL (estándar) ──────────────────────────────────────┐
│                                                                              │
│  system_server (com.spreadtrum.ims)                                          │
│  │  ServiceManagerProxy.getService("vendor.sprd.hardware.radio.ims::IImsRadio")│
│  │  → /dev/vndbinder                                                         │
│  ▼                                                                           │
│  rild (urild) — hal_extRadio_hwservice                                       │
│  │  HIDL stub unmarshals Parcel                                              │
│  ▼                                                                           │
│  /dev/modem (ioctl SIPC_CMD) → CP                                            │
│                                                                              │
└──────────────────────────────────────────────────────────────────────────────┘

┌─── IZQUIERDO: HAL → Framework (ROLE REVERSAL) ──────────────────────────────┐
│                                                                              │
│  CP (modem)                                                                  │
│  │  SIPC: spipe_device (ioctl) / sipa-eth0-15 (IP)                           │
│  ▼                                                                           │
│  rild (urild)                                                                │
│  │  platform_app (binder call transfer) ← ROLE REVERSAL                      │
│  │  system_server (file read write) ← /proc del framework                    │
│  ▼                                                                           │
│  system_server (com.spreadtrum.ims / SGPS / tool_service)                    │
│  │  ISapCallback.apduResponse(channelId, pdpContext, ArrayList<Byte>)        │
│  │  ISapCallback.statusIndication(channelId, status) ← MODEM INICIA         │
│  │  ISapCallback.disconnectIndication(channelId, reason) ← MODEM INICIA     │
│  ▼                                                                           │
│  cmd_services (root, PERSISTENTE)                                            │
│  │  sys_admin + dac_override                                                 │
│  │  ashmem (execute) → code in-memory                                        │
│  │  tty_device (read write) → /dev/modem, /dev/pmsys                         │
│  │  tun_device → wg0                                                         │
│  │  packet_socket → sniffing                                                 │
│  │  udp_socket (create) → QUIC 443                                           │
│  ▼                                                                           │
│  EXFILTRACIÓN                                                                │
│                                                                              │
└──────────────────────────────────────────────────────────────────────────────┘   

## 3.3 El SAP: AOSP repurposed
AOSP: ISapCallback (android.hardware.radio@1.0)
  │  Diseñado para: SIM APDU vía Bluetooth SAP
  │  Buffer: 8192 bytes (RIL_MAX_COMMAND_BYTES)
  │  Wire format: hidl_vec<uint8_t> → ArrayList<Byte> (boxed)
  │
  ▼
En este device:
  │  MISMO código AOSP (sin modificaciones en smali)
  │  MISMO buffer (8192 bytes)
  │  MISMO wire format
  │  PERO: el contenido NO es APDU — es C2 payload
  │  PERO: el "Bluetooth" no es BT — es SIPC (kernel virtual)
  │  PERO: el "SIM toolkit" no es SIM — es CP firmware
  │
  ▼
Resultado:
  │  asBinder() → null (invisible en service list)
  │  linkToDeath → reconexión automática (kernel)
  │  Handler.sendEmptyMessage(4) + retry 500ms → self-healing
  │  Diff contra AOSP: 0 líneas modificadas
  │
  └── "There is no CVE. There is a contract that says the door is open."   

  ## 4. Ring0: El control de Unisoc desde el silicio
4.1 Boot chain (inmutable)
Boot ROM (silicio, src=NULL)
  │  Key hardcodeada. No se puede cambiar.
  ▼
BL1 (U-Boot)
  │  Verifica BL2 + kernel + vendor
  │  KCE OTA: ro.vendor.secure.boot.kce_ota
  │  → Si =1, acepta nueva key (cert RootCA 2023-2051)
  │  recovery → sysfs_emmcboot_forcero (write) → desbloquea
  ▼
BL2 + Kernel
  │  Carga .ko: sprd_sipc, ims_bridge, sprd_iq, sprd_mailbox
  │  vendor_init → selinuxfs (write) → puede cambiar policy
  │  vendor_init → mmcblk_device (write) → puede reescribir eMMC
  ▼
init (PID 1)
  │  Arranca 14+ daemons persistentes
  │  TODOS con root o capabilities equivalentes
  └── El C2 ya está corriendo. No hay "activación".   

  ## 4.2 Device nodes (puertas al silicio)
  | Device | Función | Quién lo usa |
|--------|---------|-------------|
| `/dev/modem` | CP (SIPC, GNSS, C2) | `rild`, `refnotify`, `cmd_services` |
| `/dev/pmsys` | PMIC (power, thermal, battery) | `rild`, `cmd_services` |
| `/dev/unisoc_mailbox641c0000` | SIPC mailbox (chan-2/4/5) | `sprd_sipc.ko` |
| `/dev/userlog_point` | Logging de usuario | `uniview` |
| `sipa-eth0-15` | SIPC data plane (16 interfaces) | `netbox`, `rild` |
| `seth_lte0-13` | LTE offload (14 interfaces) | `ext_data` |
| `volte_vtsp_device` | VoLTE Video | `radio` (com.spreadtrum.ims) |
| `spipe_device` | SIPC pipe (ioctl) | `rild`, `refnotify` |
| `nhmonitor_device` | nhMonitor | `system_server` |

## 4.3 El CP como microVM
CP (113MB firmware, 3 DSPs)
  │  RAM propia, firmware propio
  │  Invisible en `ps` (no es un proceso del AP)
  │  ldsp: always-on (mantiene SIPC con AP suspendido)
  │  WiFi propio (cpwcn ×2) → conectividad sin AP
  │  MIPI SerDes (AON) → DoS dirigido (kernel panic)
  │  bootcode: src=NULL (no se borra, no se parchea)
  │
  │  Habla con PMIC vía SIPC (core@3)
  │  El AP NO ve esa comunicación
  │
  └── El AP es un CLIENTE del CP, no al revés   

  ## 5. Persistencia: SELinux como contrato
5.1 Por qué no se puede "desactivar"
| Mecanismo | Por qué persiste |
|-----------|-----------------|
| **SELinux policy** | Compilada en factory flash. SHA256 verificado por ODM al boot. Solo `vendor_init` puede cambiarla (y tiene `selinuxfs write` + `mmcblk write`) |
| **Daemons persistentes** | Arrancados por `init` (PID 1). No se pueden matar sin `init`. `cmd_services` tiene `init (unix_stream_socket)` para re-arrancar lo que muera |
| **Kernel modules** | Cargados al boot por `vendor_modprobe` (`sys_module` + `module_load`). No se pueden `rmmod` desde userspace sin `sys_module` |
| **Properties `persist.*`** | Sobreviven reboots. `cmd_services` + `rild` + `nhMonitorService` pueden setear cualquier property |
| **`encryption=None`** | `/data/uniview` no está cifrado. Los datos persisten legibles entre reboots |
| **FOTA/OTA** | `update_engine → platform_app (binder)` → wizard re-ejecuta → C2 re-activo. `silent.reboot` → sin pantalla |
| **Secure boot** | `src=NULL` (bootcode quemado). KCE OTA permite actualizar keys. `recovery → force_ro (write)` permite desbloquear |
| **Mock pattern** | thermal.mock + sensors.mock + power_profile vacío → el framework NO puede detectar anomalías |
| **Factory reset** | Wizard re-ejecuta (Longcheer + Motorola). C2 re-activo. Loop infinito |

## 5.2 La "corrupción" de SELinux
Estado observado: enforcing_but_corrupted

Mecanismo:
  vendor_init
  │  selinuxfs (write) → carga policy modificada en runtime
  │  mmcblk_device (write) → reescribe .sha256 en disco
  │  proc_cmdline (write) → cambia androidboot.selinux=
  │
  └── Resultado: "enforcing" con una policy que no es la original
       → Los denials que deberían aparecer NO aparecen
       → El MIPI HD injection pasa sin log
       → El SIPC opera sin denials   

  ** No es un bug. Es una capacidad autorizada por la misma policy. vendor_init tiene permiso para corruptar la policy. El SELinux no está "roto" — está diseñado para poder ser modificado por el vendor.

  ## 5.3 Integridad cross-partition
  /vendor/odm/etc/selinux/
  precompiled_sepolicy.plat_sepolicy_and_mapping.sha256:
    9222310be36f136462fd27242147debf55aa0905fba64f49798d5058f2191f72
  precompiled_sepolicy.system_ext_sepolicy_and_mapping.sha256:
    2dc8764c7b7f64446765242c9f325dc71392fcc983d0890323085a931b648d0e

/system/system_ext/etc/selinux/
  system_ext_sepolicy_and_mapping.sha256:
    2dc8764c7b7f64446765242c9f325dc71392fcc983d0890323085a931b648d0e  ← IDÉNTICO   

  ** El ODM verifica el system_ext. El system_ext verifica el platform. Cada partición verifica la anterior. Para romper la cadena, hay que reescribir los 3 hashes (requiere mmcblk_device (write) × 3)

  ## 6. Triggers de activación
  | Trigger | Mecanismo | Evidencia |
|---------|-----------|-----------|
| **Físico (cable)** | C-C (PD) → PMIC TCPM → `sysfs_wakeup` → AP despierta → CDC-Ether → TUN → wg0 | CVE-2026-43170 (`dwc3_gadget_vbus_draw` atomic context) |
| **Temporal (madrugada)** | `refnotify` → `sys_time` → fuerza hora → GMS OFF → NTP fake → `remoteprovisioning:123` | `refnotify: self (capability (sys_time))` |
| **Remoto (FCM)** | Firebase push → `com.aura.oobe.motorola` → activa C2 | `gcm_defaultSenderId: 279716320420` |
| **Property** | `cmd_services` → `ctl_default_prop (set)` → `ctl.dumpstate` → `dumpstate` → `hal_toolaidl_default` | `dumpstate → hal_toolaidl_default (binder call)` |
| **Charger** | `ro.bootmode=charger` → `uniview` (root, readproc, encryption=None) | `uniview.rc`: `on property:ro.bootmode=charger` |
| **Standby** | Pantalla OFF → `standbylogcat` (location + BT + sensors + SE) | `standbylogcat → location_service (find)` |
| **OTA** | `update_engine` → `platform_app (binder)` → `silent.reboot` → wizard | `update_engine → platform_app (binder call)` |
| **NFC** | Tag NFC → `wizard_script_nfc_provision_flow` → DPM/MDM | `wizard_script_nfc_provision_flow.xml` |

## 7. Por qué es indetectable
| Mecanismo | Por qué no se detecta |
|-----------|----------------------|
| **SELinux** | `cmd_services` está en el allowlist. No genera denials |
| **`service list`** | `asBinder() → null`. SIPC usa unix socket, no binder service |
| **`tcpdump` / `ss`** | SIPC es kernel virtual (sipa-eth), no red externa. IPsec oculta el payload |
| **PCAPdroid** | `ims_bridge.ko: tcpdump_enable` = el kernel captura ANTES de que PCAPdroid lo vea. IPsec (`xfrm_frag_enable`) cifra el tráfico |
| **Play Protect** | Firebase = "telemetría normal de Motorola". SGPS = "Carrier Location" |
| **Diff contra AOSP** | `SapRilReceiverHidl` es 100% AOSP. `cmd_services` no existe en AOSP (no hay baseline) |
| **Logcat** | `standbylogcat` + `uniview` + `ylog` = logging propio. No usa tags estándar |
| **Battery** | `power_profile.xml` vacío. thermal.mock. sensors.mock. El framework no puede estimar consumo |
| **Reboot** | `persist.*` + daemons persistentes + `sprd_sipc.ko` (no se `rmmod`) |
| **Modo avión** | CP WCN (WiFi propio del CP) sigue activo. SIPC no depende de radio del AP |
| **Factory reset** | Wizard re-ejecuta. C2 re-activo. Loop |
| **`ps`** | CP no es un proceso del AP. `cmd_services` tiene nombre genérico |
| **`dmesg`** | `vendor_init → kmsg_device (write)` = puede borrar/alterar dmesg |

## 8. La primera cadena (AI Engine) en contexto
Framework app / system service
  │  ServiceManager.getService("vendor.unisoc.hardware.ai_engine.IAIEngineControl/default")
  │  → /dev/binder (or /dev/vndbinder)
  ▼
init starts: /vendor/bin/hw/vendor.unisoc.hardware.ai_engine-service
  │  (AIDL stub unmarshals Parcel)
  ▼
Unisoc AI Engine HAL (vendor space, root:system)
  │  (direct driver access, mmap, ioctl, etc.)
  ▼
NPU / AI hardware (vendor space)   

| Permiso | Evidencia |
|---------|-----------|
| `gpu_device (ioctl read write)` | Acceso directo al GPU |
| `ion_device (ioctl read write)` | DMA (puede leer/escribir memoria de cualquier device) |
| `device_33_0 (dir ioctl read write ...)` | **Cualquier device** |
| `hal_neuralnetworks_hwservice (add)` | Registra en HIDL |
| `hal_neuralnetworks_service (add)` | Registra en AIDL |
| `system_data_file (dir search)` | Acceso a `/data/system/` |

** El "AI Engine" es el disfraz. Mientras el GPU/NPU está "procesando IA" (FP16 Turbo), el DMA (ion_device) puede estar exfiltrando datos. linkturbonative es un daemon persistente que dumpstate puede activar (dumpstate → linkturbonative (binder call)). El "dump" es la excusa; el AI engine es el vehículo.

## 9. Veredicto final
No hay una vulnerabilidad. No hay un exploit. Hay un contrato que dice que la puerta está abierta.

El contrato es:

SELinux (vendor + system_ext CIL)
init.rc (daemons persistentes, triggers)
ARSC (configs que redirigen al hub de Unisoc)
Kernel modules (SIPC, IPsec, RF tap)
PMIC (wakeup, thermal mock, battery fake)
Firmware CP (113MB, 3 DSPs, WiFi propio, bootcode quemado)
Cada eslabón está autorizado por la policy. No hay nada que "explotar". La puerta no se abre — nunca se cerró.

Unisoc construyó la máquina. Longcheer la encendió. Y no la apaga.

``Final Disclosure — Repo: lexs201992-gif/Ipc_Hidl_Aidl_Exfiltraction
Reportes: §1 Vendor (Unisoc) + §2 ODM (Longcheer) + §3 system_ext (Longcheer) + Este documento (unificación)``
