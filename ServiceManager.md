# Command
service list | grep -E "vendor\.(sprd|unisoc)|tool|sipc|sgps|ims"   

## Services

vendor.sprd.hardware.tool.IToolControl/default: []
vendor.sprd.hardware.tool.IToolCallback/default: []
vendor.sprd.hardware.gnss.IUnisocGnss/default: []
vendor.sprd.hardware.network.INetworkControl/default: []
vendor.sprd.hardware.trusty.ITrustyClientProvider/default: []
vendor.sprd.hardware.enhance.IEnhance/default: []
vendor.sprd.hardware.unipnp.IUnionPnP/default: []
vendor.sprd.hardware.cplog_svc.ILogTransportInductor/default: []
vendor.sprd.hardware.cplog_svc.ISysLogControl/default: []
vendor.sprd.hardware.tool.IToolControl/default: []
vendor.unisoc.frameworks.srmi.ISrmiManager/default: []
vendor.unisoc.hardware.radio.data.IExtRadioData/slot1: []
vendor.unisoc.hardware.radio.ims.IImsRadio/slot1: []
vendor.unisoc.hardware.radio.lite.ILiteRadio/liteservice2: []
vendor.unisoc.hardware.radio.messaging.IExtRadioMessaging/slot1: []
vendor.unisoc.hardware.radio.modem.IExtRadioModem/slot1: []
vendor.unisoc.hardware.radio.network.IExtRadioNetwork/slot1: []
vendor.unisoc.hardware.radio.sim.IExtRadioSim/slot1: []
vendor.unisoc.hardware.radio.voice.IExtRadioVoice/slot1: []   

## Contexto — muestra que IToolControl está registrado y activo
- Inventario vendor — 19 servicios SPRD/Unisoc (no 320)
- Reproducibilidad — cualquier auditor puede verificar con service list | grep vendor.sprd
- No envejece — los nombres de servicios vendor no cambian entre builds
