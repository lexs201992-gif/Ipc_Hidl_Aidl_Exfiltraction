rule Android_Unisoc_IPC_Exfil_Behaviour_VT {
    meta:
        severity = "Critical"
        description = "Unisoc IPC bidirectional architecture - behavioural detection"
        author = "Alex de la cruz"
        reference = "https://github.com/lexs201992-gif/Ipc-Hidl-Aidl-Exfiltraction"

    strings:
        $aidl_tool = "vendor.sprd.hardware.tool.IToolControl" ascii
        $aidl_hash = "1df77246035d6bdcb23dcafae03b6b272cb89fab" ascii
        $sipc_virt = "sipc-virt:core@5" ascii
        $mailbox = "unisoc_mailbox641c0000" ascii
        $logcontrol = "LogControlAidl" ascii
        $sap_ril = "SapRilReceiverHidl" ascii
        $chan4 = "chan-4" ascii
        $chan5 = "chan-5" ascii
        $wg = "wg0" ascii nocase
        $wireguard = "WireGuard" ascii

    condition:
        vt.FileType.ANDROID and
        (
            // APK con SGPS + AIDL tool control
            ( $logcontrol and $aidl_tool and $aidl_hash ) or
            // .so con SIPC + mailbox
            ( $sipc_virt and $mailbox and ( $chan4 or $chan5 ) ) or
            // Binario con SAP RIL + WireGuard
            ( $sap_ril and $wg and $wireguard ) or
            // Comportamiento: abre mailbox + hace conexiones
            ( $mailbox and
              for any http_req in vt.behaviour.http_conversations :
                ( http_req.url contains "brave.com" or http_req.url contains "54.148.86.176" ) )
        )
}   
