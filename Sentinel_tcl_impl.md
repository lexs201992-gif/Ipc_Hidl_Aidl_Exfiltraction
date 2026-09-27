## v1.0 Sentinel SIPC (ring 0 flood protection)

### Concepto
eBPF program que intercepta sys_ioctl al device node del mailbox
Unisoc. Detecta flood (>80 transacciones/30s por channel) y
bloquea con -EPERM. Equivalente a Sentinel TCL en ring 0.

### Por qué es universal
- El device node (/dev/unisoc_mailbox641c0000) existe en TODO
  dispositivo Unisoc T606/T616/T7250
- El ioctl SIEMPRE pasa por sys_ioctl (no hay bypass)
- No depende de firmware, build, ODM, ni versión de Android
- Un solo .bpf.o funciona en todos

### Deploy
# Compilar:
clang -target bpf -O2 -c sentinel_sipc.bpf.c -o sentinel_sipc.bpf.o

# Cargar (con root):
bpftool prog load sentinel_sipc.bpf.o /sys/fs/bpf/sentinel_sipc

# Verificar:
cat /sys/kernel/debug/tracing/trace_pipe
# → "sentinel: FLOOD on chan-4, BLOCKED"

# Lock permanente (equivalente a sl_quicklock):
echo 0 > /sys/class/mbox/chan-4/enabled
echo 0 > /sys/class/mbox/chan-5/enabled   

┌─────────────────────────────────────────────────────────────────┐
│  SENTINEL v1.0 (ring 0):                                        │
│                                                                 │
│  1. MONITOREA: kprobe en sys_ioctl → /dev/unisoc_mailbox*      │
│     → Mismo que: on chanmsg → sl_txflood($chan)                 │
│                                                                 │
│  2. DETECTA: >80 ioctls en 30s en un channel                    │
│     → Mismo que: if [incr sl_txflood($chan)] >= 80              │
│                                                                 │
│  3. BLOQUEA: bpf_override_return(-EPERM)                        │
│     → Mismo que: newban $bhost sentinel $reason                 │
│                                                                 │
│  4. LOGUEA: bpf_trace_printk → /sys/kernel/debug/tracing       │
│     → Mismo que: putlog "sentinel: banned $bhost"              │
│                                                                 │
│  5. LOCK: escribe 0 a /sys/class/mbox/chan-X/enabled           │
│     → Mismo que: sl_quicklock $chan                             │
│                                                                 │
│  FUNCIONA EN CUALQUIER T606/T616 PORQUE:                        │
│  → El device node siempre existe (/dev/unisoc_mailbox641c0000) │
│  → El ioctl siempre pasa por sys_ioctl (kernel)                │
│  → No importa qué firmware, qué build, qué ODM                 │
│  → El mailbox driver SIEMPRE usa ioctl para transacciones       │
└─────────────────────────────────────────────────────────────────┘   
