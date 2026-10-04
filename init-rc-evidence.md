# zhangcuihong10@20231213 Bluetooth Profiles Control [EKLION-7495] begin
on property:persist.sys.bt_hpf=1
   setprop bluetooth.profile.hfp.ag.enabled true
on property:persist.sys.bt_hpf=0
   setprop bluetooth.profile.hfp.ag.enabled false
on property:persist.sys.bt_a2dp=1
   setprop bluetooth.profile.a2dp.source.enabled true
on property:persist.sys.bt_a2dp=0
   setprop bluetooth.profile.a2dp.source.enabled false
on property:persist.sys.bt_hid_host=1
   setprop bluetooth.profile.hid.host.enabled true
on property:persist.sys.bt_hid_host=0
   setprop bluetooth.profile.hid.host.enabled false
on property:persist.sys.bt_pan_nap=1
   setprop bluetooth.profile.pan.nap.enabled true
on property:persist.sys.bt_pan_nap=0
   setprop bluetooth.profile.pan.nap.enabled false
on property:persist.sys.bt_pan_panu=1
   setprop bluetooth.profile.pan.panu.enabled true
on property:persist.sys.bt_pan_panu=0
   setprop bluetooth.profile.pan.panu.enabled false
on property:persist.sys.bt_pbap=1
   setprop bluetooth.profile.pbap.server.enabled true
on property:persist.sys.bt_pbap=0
   setprop bluetooth.profile.pbap.server.enabled false
on property:persist.sys.bt_gatt=1
   setprop bluetooth.profile.gatt.enabled true
on property:persist.sys.bt_gatt=0
   setprop bluetooth.profile.gatt.enabled false
on property:persist.sys.bt_map=1
   setprop bluetooth.profile.map.server.enabled true
on property:persist.sys.bt_map=0
   setprop bluetooth.profile.map.server.enabled false
on property:persist.sys.bt_sap=1
   setprop bluetooth.profile.sap.server.enabled true
on property:persist.sys.bt_sap=0
   setprop bluetooth.profile.sap.server.enabled false
on property:persist.sys.bt_avrcp=1
   setprop bluetooth.profile.avrcp.target.enabled true
on property:persist.sys.bt_avrcp=0
   setprop bluetooth.profile.avrcp.target.enabled false
on property:persist.sys.bt_hid_device=1
   setprop bluetooth.profile.hid.device.enabled true
on property:persist.sys.bt_hid_device=0
   setprop bluetooth.profile.hid.device.enabled false
on property:persist.sys.bt_opp=1
   setprop bluetooth.profile.opp.enabled true
on property:persist.sys.bt_opp=0
   setprop bluetooth.profile.opp.enabled false
 # zhangcuihong10@20231213 Bluetooth Profiles Control [EKLION-7495] end
