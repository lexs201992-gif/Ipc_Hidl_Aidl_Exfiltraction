## modem_cp_info.xml: El mapa de la tubería

### No es "configuración estática". Es un mapa de memoria física.

- ioctl_path: /dev/modem (NO /dev/unisoc_mailbox*)
- modem_range: 0x89600000, 73MB (memoria que el CP lee/escribe)
- all_range: 0x87800000, 113MB (AP + CP compartidos)
- modem_bootcode: src=NULL (quemado en silicio, no se borra)

### El strace correcto
strace -p $(pidof sprd_sipc) -e trace=ioctl,openat
→ openat("/dev/modem", O_RDWR)
→ ioctl(fd, SIPC_CMD, ...)

### El PVT
Dispositivo PVT vendido como retail.
SGPS + IToolControl + SELinux fallback = firmware de ingeniería.
No es un bug. Es el firmware que Unisoc compiló.   

## modem_sp_info.xml: El gemelo PMIC

### El bootcode del PMIC está en un XML
- /vendor/etc/modem_sp_info.xml (sin root)
- bootcode="0x3800 0x9 0xf44f4818 ..." = instrucciones ARM
- src_file="NULL" = quemado en silicio
- ioctl_path: /dev/pmsys (segunda puerta)

### Dos device nodes = dos puertas
- /dev/modem → CP (SIPC, GNSS, C2)
- /dev/pmsys → PMIC (voltaje, thermal, batería)
- El CP habla con el PMIC vía SIPC (core@3)
- El AP no ve esa comunicación

### Lo que el PMIC permite
- Overclock (FP16 Turbo Mode)
- Throttle (ocultar consumo)
- Thermal monitoring (saber cuándo usas el teléfono)
- Battery control ("modo avión" que no es modo avión)

/dev/modem   → CP (modem, SIPC, GNSS, sensores)
/dev/pmsys   → PMIC (power, voltaje, batería, thermal)   

# Con root, strace debe capturar AMBOS:
strace -p $(pidof sprd_sipc) -e trace=ioctl,openat -f -t
# openat("/dev/modem", O_RDWR) = 5
# openat("/dev/pmsys", O_RDWR) = 6
# ioctl(5, SIPC_CMD, ...) ← GNSS/sensores/C2
# ioctl(6, PMIC_CMD, ...) ← voltaje/thermal/batería   

┌─────────────────────────────────────────────────────────┐
│  AP (CPU principal, Android)                            │
│                                                         │
│  /dev/modem ←── ioctl ──→ CP (modem, SIPC, GNSS)       │
│  /dev/pmsys ←── ioctl ──→ PMIC (power, thermal)        │
│                                                         │
│  El CP y el PMIC se hablan entre sí (SIPC core@3)       │
│  El AP no ve esa comunicación directa                   │
└─────────────────────────────────────────────────────────┘   
