
```markdown
# Technical Disclosure: `com.spreadtrum.sgps` — ARSC Forensic Analysis

**Device:** Moto G04s T606 (Unisoc T606, ODM Longcheer)
**Product:** qogirl6 / qogirl76
**Firmware:** Android 14, Build Mar 2025 (baseband) / Apr 2026 (system_ext)
**Classification:** PVT (Pre-Validation Test) firmware sold as retail
**Date:** 2026-10-04
**Author:** Alex de la Cruz (lexs201992-gif)

---

## 1. Executive Summary

El package `com.spreadtrum.sgps` contiene un **stack SUPL 2.0 de producción**,
un **GNSS engine multi-constelación con RTK**, y un **suite completo de pruebas
GNSS de laboratorio** (Spirent, Keysight IT6700, SpreadOrbit) empaquetado en el
firmware retail.

El ARSC (resources.arsc) del APK revela strings de UI, configuraciones de
laboratorio, coordenadas hardcodeadas de Shanghai/Beijing, certificados de
vendors de test RF, y un mecanismo de **Network Initiated Location con
auto-aprobar por timeout** (`NOTIFY-Allow no answer`).

**Impacto:** El dispositivo puede ser geolocalizado a precisión centimétrica
(RTK) por un servidor remoto (`unisoc.supl.qxwz.com:7275`) sin interacción
del usuario, de forma periódica (hasta 9999 repeticiones cada 1 segundo),
con el stack disfrazado como "Carrier Location" (Ubicación del operador).

---

## 2. ARSC Deployment

| Propiedad | Valor |
|-----------|-------|
| Ubicación | `/product/app/SGPS/com.spreadtrum.sgps.apk` (o `/system/`) |
| Partición | product (o system) |
| Flash | Fábrica (immutación post-flash sin FOTA) |
| Presente desde | **Primer encendido** |
| Removible | No (sin root) |
| Actualizable | Solo por FOTA completo |
| `resources.arsc` | Compilado en build, inmutable en runtime |

Las strings, layouts y drawables que se documentan aquí son **permanentes**
en el dispositivo. No se descargan, no se condicionan, no se eliminan.
Están en el binario desde el momento en que el usuario enciende el teléfono
por primera vez.

---

## 3. Identity Disguise

### 3.1 UI Cloning

El ARSC de `com.spreadtrum.sgps` es **idéntico** al de
`com.spreadtrum.proxy.nfwlocation`:

| Elemento | SGPS | nfwlocation |
|----------|------|-------------|
| Strings de UI | Identicas | Identicas |
| Drawables (abc_*) | Identicos | Identicos |
| Layout (`activity_main.xml`) | Identico | Identico |
| Mipmap icons | Identicos | Identicos |
| Texto clave | *"The carrier can use this information for any purpose"* | Idem |
| Texto clave | *"even if you turn off the location setting and deny location permission"* | Idem |

**Conclusión:** SGPS se presenta al usuario como "Ubicación del operador".
El package name (`com.spreadtrum.sgps`) es la única diferencia visible.
En `pm list packages` aparece como SGPS, pero la UI es de Carrier Location.

### 3.2 Permisos persistentes

> *"Your carrier can access your device's location when you dial or text an
> emergency number and for a limited time afterward, **even if you turn off
> the location setting and deny location permission for this app**."*

La excepción de emergency number mantiene el acceso **activo permanentemente**.
No es un permiso que el usuario pueda revocar de forma efectiva.

---

## 4. SUPL 2.0 Stack (Producción)

### 4.1 SLP Endpoints

| SLP | Puerto | Identidad | Contexto |
|-----|--------|-----------|----------|
| `unisoc.supl.qxwz.com` | **7275** | SLP de producción Unisoc | C2 geo |
| `172.22.1.100` | 7275 | **Lab Ericsson** | Test RF |
| `218.206.176.50` | 7275 | **Lab China Mobile (Cmcc)** | Test RF |

**El puerto 7275 es idéntico en producción y laboratorio.** El mismo stack
SUPL, solo cambia el endpoint.

### 4.2 Network Initiated Location (NI-Loc)

Strings del ARSC:

```
Allow Network Initiated Request
NI Dialog Customization
NI Dialog Test
NI Tests
Notification Timeout
NOTIFY-Allow no answer
NOTIFY-Deny no answer
NOTIFIONLY
```

**`NOTIFY-Allow no answer`** = si el usuario no responde al dialog,
la petición se **auto-aprueba**.

```
SLP (qxwz.com:7275)
  → "Envíame tu posición" (NI Request)
    → Dialog aparece en pantalla
      → Timeout expira (usuario no responde)
        → AUTO-APPROVED
          → Posición enviada
```

**El usuario no necesita interactuar.** El dispositivo se geolocaliza
y envía la posición sin acción del usuario.

### 4.3 Periodic Streaming

| Parámetro | Rango | Máximo |
|-----------|-------|--------|
| `Period per times` | 1–300 s | 1 s (cada segundo) |
| `Mode Interval` | 1–100 s | 1 s |
| `Repeat times` | 1–9999 | 9999 repeticiones |
| `Min Interval` | — | — |

**Máximo teórico:** 9999 posiciones cada 1 segundo = ~166 minutos de
streaming continuo sin pausa.

### 4.4 CP/UP Switching

```
CP and UP switching
```

| Modo | Transporte |
|------|-----------|
| **CP** (Control Plane) | Via IMS (VoLTE/RCS) → `com.spreadtrum.ims` |
| **UP** (User Plane) | Directo por IP (WiFi/LTE data) |

El stack puede cambiar entre IMS y data directa. Esto explica por qué el
geo-data puede salir por QUIC/WireGuard (UP) o por VoLTE (CP).

### 4.5 Autenticación

```
Sign
Certificate Verification
```

El SLP se autentica con firma. La verificación de certificado usa
`spirentroot.cer` (ver §5.3).

---

## 5. Lab/Factory Suite (PVT Evidence)

### 5.1 Equipment de laboratorio hardcodeado

| String | Identidad |
|--------|-----------|
| `Itest 6700` | **Keysight/Anritsu IT6700** — GNSS signal generator |
| `spirentroot.cer` | **Spirent Communications** — CA de test RF |
| `SpreadOrbit Switch` | Orbit simulator de Spreadtrum |
| `Noise Scan` | Escaneo de ruido RF |
| `GPS IMG MODE` | Modo imagen (captura de señal) |
| `Factory` | Modo fábrica |
| `Real-EPH Switch` | Switch ephemeris real/simulada |

### 5.2 Test profiles

| Profile | Entorno |
|---------|---------|
| `Spreadtrum 10F opensky` | 10 pisos, cielo abierto |
| `Spreadtrum 1F canyon` | 1 piso, entorno urbano (canyon) |
| `GPS Circle Test` | Test circular de señal |
| `Single satellite Switch` | Test con satélite individual |

### 5.3 Certificado Spirent en producción

```
/data/cg/supl/spirentroot.cer
```

El stack SUPL de **producción** confía en el **Certificate Authority de Spirent**
(vendor de equipos de test RF). No confía en una CA pública.

**Implicación:** La "seguridad" de la sesión SUPL es circular. El device
confía en el cert del vendor de laboratorio, no en una CA independiente.
Cualquiera con el cert Spirent puede impersonar al SLP.

### 5.4 Coordenadas hardcodeadas

| Lat | Lon | Ubicación |
|-----|-----|-----------|
| 31.21259167 – 31.213005 | 121.4564 – 121.6244103 | **Shanghai** (HQ Unisoc/Longcheer) |
| 37.33 – 37.55 | 126.59 – 126.98333333 | **Beijing** |

Son las posiciones exactas de los laboratorios donde se validó el device.
No son defaults genéricos.

### 5.5 Paths de configuración

| Path | Contenido |
|------|-----------|
| `/data/cg/supl/spirentroot.cer` | CA de Spirent |
| `/data/vendor/gnss/config/config.xml` | Config GNSS |
| `/data/vendor/gnss/supl/supl.xml` | SLP address, port, template |

**`supl.xml`** es el archivo que define el SLP activo en producción.
Si se modifica (con root), se cambia el endpoint. En estado de fábrica,
apunta a `unisoc.supl.qxwz.com:7275`.

---

## 6. GNSS Engine Capabilities

### 6.1 Constelaciones

```
GPS+B1C+GLONASS+Galileo
GPS+BD2+GLONASS
GPS+BD2+Galileo
GPS+BDS
BDS Only
GLONASS Only
GPS Only
```

Multi-constelación completa: GPS, BeiDou (B1C/B2), GLONASS, Galileo.

### 6.2 Precisión

| Feature | Precisión |
|---------|-----------|
| **GNSS RTK Switch** | **Centimétrica** (Real-Time Kinematic) |
| GNSS RTD Switch | Decimétrica (Real-Time Differential) |
| eCID / ECID | ~50–100 m (cell-based) |
| FL (Floor Level) | Indoor, piso específico |
| MOLA / MOLR | 3GPP Mobile Location (estándar GSM) |

**RTK = centímetros.** No es "aproximadamente en la ciudad". Es
"estás en la mesa 7, laboratorio 3, piso 5, Shanghai".

### 6.3 Métricas de test (TTFF/Distance)

```
AverageDistance(m): %1$f
M68FirstDistance: %2$f
M95FirstDistance: %3$f
MaxFirstDistance: %4$f
MinFirstDistance: %5$f

AverageTTFF(s): %1$f
M68TTFF: %2$f
M95TTFF: %3$f
MaxTTFF: %4$f
MinTTFF: %5$f

SateInusedAve: %1$f
SateTrackingAve: %2$f
```

M68/M95 = percentiles (68% y 95% de los fixes). Son métricas de **validación
de fábrica**, no de uso normal.

### 6.4 Comandos de control

```
$set mode 0 sys 1          ← NMEA-like (config GNSS)
CP Auto Reset              ← Reset del control plane
CP and UP switching        ← Cambio CP/UP
Set Assist / Set Assist Pref ← Inyección de asistencia
Set Base / Set Base Pref   ← Base station config (RTK)
```

---

## 7. Threat Model

### 7.1 Ataque: Geo-exfiltración remota

```
1. SLP (qxwz.com:7275) envía NI Request
2. SGPS recibe → dialog → timeout → AUTO-APPROVED
3. GNSS engine fija posición (RTK, cm)
4. SGPS guarda lat/lon ("Save successful")
5. SGPS envía al SLP ("Send Success")
6. Opcional: periodic 1s × 9999 (streaming)
7. Geo-data viaja por:
   - CP: IMS → com.spreadtrum.ims → VoLTE
   - UP: directo → QUIC UDP 443 / WireGuard wg0
```

### 7.2 Por qué no se detecta

| Mecanismo | Razón |
|-----------|-------|
| Location settings OFF | Emergency exception lo mantiene activo |
| Permiso denegado | "even if you deny location permission" |
| `dumpsys location` | SGPS no aparece como location provider estándar |
| PCAPdroid | El tráfico SUPL va por IMS (CP) o QUIC (UP) — no HTTP |
| Play Protect | Se ve como "Carrier Location" (legítimo) |
| Diff AOSP | El package no existe en AOSP — no hay baseline |
| Battery | `power_profile.xml` vacío — no se ve el consumo GNSS |

### 7.3 Por qué no se puede desactivar

| Método | Resultado |
|--------|-----------|
| Settings → Location → OFF | No funciona (emergency exception) |
| Denegar permiso a "Carrier Location" | No funciona (mismo texto) |
| Desinstalar | No es removable (system/product app) |
| Safe Mode | El service arranca con el framework |
| Airplane mode | WiFi opera independiente; SUPL UP sigue activo |
| FOTA | No se puede "des-patchear" — el ARSC es inmutable |

---

## 8. PVT Classification

| Criterio | Evidencia |
|----------|-----------|
| Suite de lab en retail | IT6700, Spirent, SpreadOrbit, Noise Scan, IMG MODE |
| Coordenadas de fábrica | Shanghai (31.21°N), Beijing (37.33°N) |
| Cert de test en producción | `spirentroot.cer` en `/data/cg/supl/` |
| Test profiles | "10F opensky", "1F canyon" |
| Métricas de validación | M68/M95 TTFF, Distance percentiles |
| Puerto idéntico lab/prod | 7275 en Ericsson, Cmcc, y qxwz.com |
| NMEA commands | `$set mode 0 sys 1` |
| Factory mode | String "Factory" en UI |

**Conclusión:** `com.spreadtrum.sgps` es firmware de validación de fábrica
que se vendió como producto. No hay justificación técnica para que un
phone de $100 contenga un suite GNSS de laboratorio con RTK, Spirent,
y coordenadas de Shanghai.

---

## 9. IOC Summary

| IOC | Tipo | Valor |
|-----|------|-------|
| `unisoc.supl.qxwz.com` | Domain SLP | 7275/UDP |
| `172.22.1.100` | IP Lab Ericsson | 7275 |
| `218.206.176.50` | IP Lab Cmcc | 7275 |
| `/data/cg/supl/spirentroot.cer` | File | CA Spirent |
| `/data/vendor/gnss/supl/supl.xml` | File | Config SLP |
| `NOTIFY-Allow no answer` | String ARSC | Auto-approve NI-Loc |
| `Repeat times(1–9999)` | String ARSC | Streaming config |
| `GNSS RTK Switch` | String ARSC | Precisión cm |
| `Itest 6700` | String ARSC | Lab equipment |
| `Spreadtrum 1F canyon` | String ARSC | Test profile |
| `31.21259167` | Coordinate | Shanghai lab |
| `121.4564` | Coordinate | Shanghai lab |
| `37.33` | Coordinate | Beijing lab |
| `126.59` | Coordinate | Beijing lab |

---

## 10. Mitigation

| Acción | Efectividad |
|--------|-------------|
| `adb shell stop sgps` (si service name existe) | Temporal (reboot lo restaura) |
| Root + `pm uninstall com.spreadtrum.sgps` | **Permanente** (hasta FOTA) |
| Root + modificar `supl.xml` → SLP inexistente | Bloquea NI-Loc |
| Root + eliminar `spirentroot.cer` | Rompe cert verification |
| eBPF: kprobe sobre `openat("/data/vendor/gnss/supl/supl.xml")` | Detección |
| DNS sinkhole: `unisoc.supl.qxwz.com` → 127.0.0.1 | Bloquea SLP |
| PCAPdroid: monitorizar UDP 7275 | Detección pasiva |
| `iptables -A OUTPUT -p udp --dport 7275 -j DROP` | Bloquea SUPL UP |

---

## 11. References

- 3GPP TS 33.102 (Security architecture — SUPL)
- OMA SUPL 2.0 (Open Mobile Alliance)
- 3GPP TS 43.318 (MOLR — Mobile Location Report)
- 3GPP TS 43.319 (MOLA — Mobile Location Area)
- AOSP: `hardware/interfaces/gnss/` (HIDL GNSS)
- Unisoc T606 datasheet (GNSS: GPS+BDS+GLONASS+Galileo)

---

*Documento generado como parte de la investigación forense del canal
IPC HIDL↔AIDL en Moto G04s T606. Repo: lexs201992-gif/Ipc_Hidl_Aidl_Exfiltraction*
```

---
