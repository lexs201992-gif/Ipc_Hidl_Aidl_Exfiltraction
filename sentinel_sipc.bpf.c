// sentinel_sipc.bpf.c — ring 0 flood protection
#include <linux/bpf.h>
#include <bpf/bpf_helpers.h>

// Equivalente a: set sl_txflood 80:30
#define FLOOD_THRESHOLD 80
#define FLOOD_WINDOW_US 30000000  // 30 segundos

// Equivalente a: global sl_txflood($chan)
struct {
    __uint(type, BPF_MAP_TYPE_HASH);
    __uint(max_entries, 16);
    __type(key, __u32);    // channel ID (2, 4, 5)
    __type(value, __u64);  // timestamp + count
} chan_counters SEC(".maps");

// Equivalente a: global sl_flooded
struct {
    __uint(type, BPF_MAP_TYPE_HASH);
    __uint(max_entries, 16);
    __type(key, __u32);
    __type(value, __u8);   // 1 = flooded (banned)
} flooded SEC(".maps");

// Hook en ioctl() — el "sentinel" del mailbox
SEC("kprobe/sys_ioctl")
int sentinel_ioctl(struct pt_regs *ctx) {
    __u32 fd = PT_REGS_PARM1(ctx);
    __u32 cmd = PT_REGS_PARM2(ctx);

    // Solo intercepta ioctls al mailbox (filtrar por fd → inode → device)
    // (En producción: verificar que el fd apunta a /dev/unisoc_mailbox*)

    __u32 chan = get_channel_from_cmd(cmd);  // Extrae chan-2/4/5 del ioctl
    __u64 now = bpf_ktime_get_ns();

    // Equivalente a: incr sl_txflood($chan)
    __u64 *counter = bpf_map_lookup_elem(&chan_counters, &chan);
    if (counter) {
        if (now - (*counter & 0xFFFFFFFFFFFF0000ULL) > FLOOD_WINDOW_US) {
            // Reset window
            *counter = (now & 0xFFFFFFFFFFFF0000ULL) | 1;
        } else {
            __u64 count = *counter & 0xFFFFULL;
            if (count >= FLOOD_THRESHOLD) {
                // Equivalente a: sl_flud → return 1 (ya está floodeado)
                __u8 *is_flooded = bpf_map_lookup_elem(&flooded, &chan);
                if (is_flooded && *is_flooded) {
                    // Equivalente a: newban → bloquear
                    bpf_trace_printk("sentinel: FLOOD on chan-%d, BLOCKED\n", chan);
                    return 1;  // → bpf_override_return(-EPERM)
                }
            }
            *counter = (*counter & 0xFFFFFFFFFFFF0000ULL) | (count + 1);
        }
    }
    return 0;
}   
