# Ipc_Hidl_Aidl_Exfiltraction
IPC: HIDL ↔ AIDL Exfiltration

---

```markdown
# IPC: HIDL ↔ AIDL Exfiltration

## El hueco que no es un bug

### Tesis

El IPC entre HIDL y AIDL en dispositivos Unisoc/SPRD (T606/T616) no es un
transporte pasivo. Es un canal **bidireccional de ejecución** donde el silicio
(CP/modem) invoca el framework con privilegios de `runCmd()`.

Invisible en Java. Solo visible en Dalvik bytecode.

No hay CVE. No hay exploit. Hay un **contrato AIDL compilado en el firmware**
que autoriza la bidireccionalidad por diseño.

---

## Diferencia con investigación existente

| Investigador | Qué encontró | Dónde se detuvo |
|---|---|---|
| [Skorpion96](https://github.com/Skorpion96/unisoc-su) (CVE-2025-31710) | Command injection en `engineermode` → root shell vía `cmd_skt` | "Aquí tienes un root shell" |
| [SSD](https://ssd-disclosure.com/unisoc-t612-rce/) (2026) | Shared memory AP↔CP sin boundary hardware → kernel access | "Aquí tienes kernel access" |
| [Kaspersky ICS CERT](https://ics-cert.kaspersky.com/) (2024) | Mismo architectural condition en UIS7862A | "Aquí tienes kernel access" |
| **Este repo** | **La arquitectura IPC que hace innecesario el exploit** | "No hay que explotar nada — el diseño ya es el backdoor" |

**Nadie documenta la capa IPC como el mecanismo.** Todos encuentran un CVE y
lo explotan. Este repo documenta que **no necesitas el CVE** porque la
interfaz ya permite la bidireccionalidad.

---

## Las 3 capas

### Capa 1: Java (lo que el desarrollador ve)

```java
SapMessage msg = new SapMessage(channelId, apdu);
sapRilReceiver.sendSapMessage(msg);
```

API limpia. No se ve: binder, kernel, death notification, raw buffer,
quién inicia (app vs modem), la reconexión automática.

### Capa 2: Dalvik/Smali (lo que el kernel hace)

| Técnica | Capa del kernel | Por qué es peligrosa |
|---------|----------------|---------------------|
| `ServiceManagerProxy.getService()` | No usa `ServiceManager` estándar | Oculta la dependencia del HAL |
| `ISap.getService("slot1")` | `hwservicemanager` (PID 1) | Siempre activo, no se puede matar |
| `linkToDeath(DeathRecipient, cookie)` | Binder driver (kernel) | Reconexión garantizada por kernel |
| `setCallback(IToolCallback)` | HAL → Framework | **Role reversal**: el HAL ejecuta en el framework |
| `primitiveArrayToContainerArrayList(byte[8192])` | Wire format HIDL | El kernel no valida contenido, solo transfiere |
| `Handler.sendEmptyMessage(4)` + retry 500ms | Userspace | Self-healing: si cae, se reconecta solo |
| `asBinder() → null` | — | Invisible para `service list` / `dumpsys` |

### Capa 3: Silicio (lo que el usuario nunca ve)

- **SIPC mailbox**: memoria compartida AP↔CP sin frontera hardware (CWE-1189)
- **`sprd_iq.ko`**: kernel module, no se mata desde userspace
- **CP como microVM**: RAM propia, firmware propio, invisible en `ps`
- **Canal**: `/dev/unisoc_mailbox641c0000` (chan-2/4/5)

---

## Evidencia (smali)

| Archivo | Rol | Hallazgo clave |
|---------|-----|----------------|
| `IToolControl.smali` | Framework → HAL | 14 métodos: shell remoto completo (`runCmd`, `writeDev`, `sendAtCmd`, `sendCommand`) |
| `IToolCallback.smali` | **HAL → Framework** | `runCmd()` desde el HAL. Hash idéntico a IToolControl (anomalía) |
| `LogControlAidl.smali` | Puente framework → HAL | Nombre engañoso. `ServiceManagerProxy` no estándar. Reconexión auto |
| `SapRilReceiverHidl.smali` | Canal de salida (889 líneas) | Bidireccional. `byte[8192]` raw. `linkToDeath`. Invisible en `service list` |
| `RuntimeOptions.smali` | AI Engine (Arm NN) | `dynamicBackendsPath` + `is_debug` + `FP16TurboMode` = disfraz de consumo |

---

## La cadena

```
CP/Modem (silicio)
  │  SIPC Mailbox (chan-4/5) ← memoria compartida, no red
  ▼
HAL Daemon (vendor, siempre activo)
  │  IToolCallback.runCmd() ← el HAL EJECUTA en el framework
  │  IToolCallback.writeSysDev("/sys/class/net/wg0/up", "1")
  ▼
Framework (SGPS / system_server)
  │  wg0 UP → QUIC UDP 443 → SNI: sync-v2.brave.com
  │  Firebase Data Transport → exfiltración disfrazada
  ▼
C2 (54.148.86.176 AWS)
```

---

## Por qué es indetectable

| Mecanismo | Por qué no se detecta |
|-----------|----------------------|
| SELinux | SGPS está en el allowlist de `tool_service` |
| `service list` | `asBinder() → null` — no se registra |
| `tcpdump` / `ss` | No es un socket de red — es HIDL Binder |
| Play Protect | El tráfico se ve como telemetría + diagnóstico |
| Diff contra AOSP | `SapRilReceiverHidl` es 100% AOSP sin modificaciones |
| Logcat | Tag `"SGPS/LogControlAidl"` — no contiene keywords de riesgo |
| Reboot | `persist.*` + HAL always-on + `sprd_iq.ko` |
| Modo avión | WiFi opera independiente del modem |

---

## El "hueco" en una frase

> El modelo de confianza unidireccional de Android (framework→HAL) se rompe
> por diseño en el vendor HAL de Unisoc. El HAL no es un servidor pasivo —
> es un **cliente activo** con `runCmd()` hacia el framework.
> No hay CVE. No hay exploit. Hay un **contrato** que dice que la puerta
> está abierta.

---

## Referencias

- [AOSP: HIDL Services and Data Transfer](https://source.android.com/docs/core/architecture/hidl/services) — callbacks HAL→framework
- [BiTRe: Binder Transaction Redirection](https://dl.acm.org/doi/pdf/10.1145/3460120.3484801) — role-reversal en servicios Android
- [Skorpion96: unisoc-su](https://github.com/Skorpion96/unisoc-su) — CVE-2025-31710, `tool_service`
- [SSD: UNISOC T612 RCE](https://ssd-disclosure.com/unisoc-t612-rce/) — shared memory AP↔CP
- [Kaspersky ICS CERT: God Mode On](https://ics-cert.kaspersky.com/publications/reports/2025/11/20/god-mode-on-researchers-run-doom-on-a-vehicles-head-unit-after-remotely-attacking-its-modem/) — UIS7862A
- [Sec2john: Jaulas nativas en Linux](https://www.youtube.com/watch?v=AzzxC6Lpiw8) — chroot + namespaces + cgroups insuficientes
- [Project Qogirl6](https://github.com/lexs201992-gif/Project-Qogirl6-Unisoc-T606-Longcheer-Supply-Chain-Compromise) — evidencia forense complementaria
- [com.spreadtrum.sgps_1.0](https://github.com/lexs201992-gif/com.spreadtrum.sgps_1.0) — smali + YARA

---

## Autor

Alexis Michel De La Cruz Correa — Independent Security Research, LATAM

## Licencia

MIT
```
