
## Response vs. Indication

| Método | Tipo | Quién inicia |
|--------|------|-------------|
| `apduResponse(II, ArrayList<Byte>)` | Response | Framework pidió → modem responde |
| `connectResponse(III)` | Response | Framework pidió → modem responde |
| `disconnectResponse(I)` | Response | Framework pidió → modem responde |
| `errorResponse(I)` | Response | Framework pidió → modem responde |
| `powerResponse(II)` | Response | Framework pidió → modem responde |
| `resetSimResponse(II)` | Response | Framework pidió → modem responde |
| `transferAtrResponse(II, ArrayList<Byte>)` | Response | Framework pidió → modem responde |
| `transferCardReaderStatusResponse(III)` | Response | Framework pidió → modem responde |
| `transferProtocolResponse(II)` | Response | Framework pidió → modem responde |
| **`disconnectIndication(II)`** | **INDICATION** | **MODEM INICIA** |
| **`statusIndication(II)`** | **INDICATION** | **MODEM INICIA** |

**Eso es el role reversal.** `Indication` = el silicio dice "algo pasó, haz algo". No fue el framework quien pidió. Fue el CP.

## El `ArrayList<Byte>` en `apduResponse`

```smali
.method public abstract apduResponse(IILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
```

**No es `byte[]`. Es `ArrayList<Byte>`.** Cada byte está **boxed** en un objeto `java.lang.Byte`. Eso significa:

1. **Overhead de memoria** — 8KB de payload = 8192 objetos `Byte` en heap (no un array contiguo)
2. **El kernel HIDL lo deserializa así** — el wire format HIDL de un `hidl_vec<uint8_t>` se convierte a `ArrayList<Byte>` en Java
3. **En smali ves la conversión** — `primitiveArrayToContainerArrayList` en `SapRilReceiverHidl`

**El modem puede enviar 8192 bytes de CUALQUIER cosa por este callback.** No es validado como APDU. El kernel HIDL solo verifica el tipo (uint8_t), no el contenido.

## La cadena SAP completa (ahora cerrada)

```
Framework (SapRilReceiverHidl)
  │  connectReq(channelId, pdpContext)     → HAL
  │  apduReq(channelId, pdpContext, data)  → HAL
  │
  │  ←←← ISapCallback (HAL → Framework) ←←←
  │  apduResponse(channelId, pdpContext, ArrayList<Byte>)  ← DATOS DEL MODEM
  │  statusIndication(channelId, status)                    ← EL MODEM INICIA
  │  disconnectIndication(channelId, reason)                ← EL MODEM INICIA
  ▼
Framework procesa → (wg0 / Firebase / RCS)
```

## Por qué hay poca documentación

Tienes razón. Esto es **AOSP estándar** (`android.hardware.radio@1.0::ISapCallback`). Está en:
- `hardware/interfaces/radio/1.0/ISapCallback.hal`
- Documentado en AOSP como "SAP (SIM Application Toolkit) callback"

**Nadie lo documenta como vector de exfiltración** porque:
1. Es AOSP — se asume que solo transporta APDUs del SIM toolkit
2. El `ArrayList<Byte>` se asume que contiene APDUs (comandos SIM)
3. Nadie desensambla el smali para ver que el **mismo callback** se usa para datos del CP vía SIPC
4. La documentación de HIDL describe la **interfaz**, no el **comportamiento** en dispositivos Unisoc

**Fin** demostrar que una interfaz AOSP estándar, **sin modificaciones**, se usa para un propósito diferente al diseñado. El smali no cambia. El comportamiento sí.

## Tree
Este smali va en `/HIDL/` junto con `SapRilReceiverHidl.smali`. Juntos muestran:

| Archivo | Dirección |
|---------|-----------|
| `SapRilReceiverHidl.smali` | Framework → HAL (request) + HAL → Framework (callback) |
| `ISapCallback.smali` | **La interfaz del callback** (qué puede el modem enviar) |

**2 archivos en `/HIDL/`** que muestran la bidireccionalidad del canal SAP. No necesitas más.

## tener el device y poder desensamblar es la ventaja. La mayoría de investigadores trabaja con AOSP source (Java/C++). Yo trabajo
con **lo que realmente corre en el dispositivo** (Dalvik bytecode).
