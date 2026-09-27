.class public Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;
    }
.end annotation


# static fields
.field public static final ACCEPT_CALL:I = 0xc

.field public static final AT_OK:I = 0x0

.field public static final CONNECT:I = 0x1

.field static final CONNECTING_TIMEOUT:I = 0x35
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final CONNECTING_TIMEOUT_MS:I = 0x2710
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final CONNECT_AUDIO:I = 0x3

.field public static final DBG:Z

.field public static final DIAL_NUMBER:I = 0xa

.field public static final DISABLE_NREC:I = 0x14

.field public static final DISCONNECT:I = 0x2

.field public static final DISCONNECT_AUDIO:I = 0x4

.field public static final ENTER_PRIVATE_MODE:I = 0x10

.field public static final EXPLICIT_CALL_TRANSFER:I = 0x12

.field public static final HF_ORIGINATED_CALL_ID:I = -0x1

.field public static final HOLD_CALL:I = 0xe

.field public static final IN_BAND_RING_ENABLED:I = 0x1

.field public static final MAX_HFP_SCO_VOICE_CALL_VOLUME:I = 0xf

.field public static final MIN_HFP_SCO_VOICE_CALL_VOLUME:I = 0x1

.field public static final NO_ACTION:I = 0x0

.field public static final OUTGOING_TIMEOUT_MILLI:J = 0x2710L

.field static final QUERY_CURRENT_CALLS:I = 0x32
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final QUERY_CURRENT_CALLS_WAIT_MILLIS:J = 0x7d0L

.field static final QUERY_OPERATOR_NAME:I = 0x33
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final REJECT_CALL:I = 0xd

.field public static final ROUTING_DELAY_MS:I = 0xfa

.field public static final SEND_ANDROID_AT_COMMAND:I = 0x17

.field public static final SEND_BIEV:I = 0x16

.field public static final SEND_DTMF:I = 0x11

.field public static final SEND_VENDOR_AT_COMMAND:I = 0x15

.field public static final SET_MIC_VOLUME:I = 0x7

.field public static final SET_SPEAKER_VOLUME:I = 0x8

.field static final SUBSCRIBER_INFO:I = 0x34
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "HeadsetClientStateMachine"

.field public static final TERMINATE_CALL:I = 0xf

.field public static final TERMINATE_SPECIFIC_CALL:I = 0x35

.field public static final VOICE_RECOGNITION_START:I = 0x5

.field public static final VOICE_RECOGNITION_STOP:I = 0x6

.field public static sAudioIsRouted:Z

.field public static sMaxAmVcVol:I

.field public static sMinAmVcVol:I


# instance fields
.field public final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mAudioFocusRequest:Landroid/media/AudioFocusRequest;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

.field public mAudioPolicyRemoteSupported:I

.field public mAudioRouteAllowed:Z

.field mAudioState:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mAudioWbs:Z

.field final mCalls:Ljava/util/Hashtable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/android/bluetooth/hfpclient/HfpClientCall;",
            ">;"
        }
    .end annotation
.end field

.field public final mCallsUpdate:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/android/bluetooth/hfpclient/HfpClientCall;",
            ">;"
        }
    .end annotation
.end field

.field mChldFeatures:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mClccPollDuringCall:Z

.field public mClccTimer:J

.field public final mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

.field public final mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

.field public final mConnectingTimePolicyProperty:I

.field mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

.field public final mForceSetAudioPolicyProperty:Z

.field public final mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

.field public mHsClientAudioPolicy:Landroid/bluetooth/BluetoothSinkAudioPolicy;

.field public mInBandRing:Z

.field public final mInBandRingtonePolicyProperty:I

.field public mIndicatorBatteryLevel:I

.field public mIndicatorNetworkSignal:I

.field public mIndicatorNetworkState:I

.field public mIndicatorNetworkType:I

.field public final mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

.field public mOperatorName:Ljava/lang/String;

.field mPeerFeatures:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mPendingAction:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mPrevState:Lcom/android/internal/util/State;

.field mQueuedActions:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

.field mSubscriberInfo:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mVendorProcessor:Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;

.field public mVoiceRecognitionActive:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioOn(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioRouteAllowed(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioWbs(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallsUpdate(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClccPollDuringCall(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mClccPollDuringCall:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnected(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnecting(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectingTimePolicyProperty(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnectingTimePolicyProperty:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisconnected(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForceSetAudioPolicyProperty(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mForceSetAudioPolicyProperty:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHeadsetService(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHsClientAudioPolicy(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothSinkAudioPolicy;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mHsClientAudioPolicy:Landroid/bluetooth/BluetoothSinkAudioPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInBandRingtonePolicyProperty(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtonePolicyProperty:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIndicatorNetworkState(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNativeInterface(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOperatorName(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrevState(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPrevState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVendorProcessor(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVendorProcessor:Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVoiceRecognitionActive(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAudioFocusRequest(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/media/AudioFocusRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAudioWbs(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInBandRing(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRing:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIndicatorBatteryLevel(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIndicatorNetworkSignal(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIndicatorNetworkState(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIndicatorNetworkType(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOperatorName(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPrevState(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPrevState:Lcom/android/internal/util/State;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVoiceRecognitionActive(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$macceptCall(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->acceptCall(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddQueuedAction(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastConnectionState(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearPendingAction(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mholdCall(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->holdCall()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mqueryCallsDone(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsDone()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mqueryCallsStart(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsStart()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mqueryCallsUpdate(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IILjava/lang/String;ZZ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsUpdate(IILjava/lang/String;ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mqueryRemoteSupportedFeatures(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryRemoteSupportedFeatures()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrejectCall(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->rejectCall()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestAudioFocus(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioFocusRequest;
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->requestAudioFocus()Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreturnAudioFocusIfNecessary(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->returnAudioFocusIfNecessary()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendCallChangedIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HfpClientCall;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Lcom/android/bluetooth/hfpclient/HfpClientCall;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendNetworkStateChangedIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendNetworkStateChangedIntent(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mterminateCall(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->terminateCall()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->DBG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smlogD(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "HeadsetClientStateMachine"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sAudioIsRouted:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Lcom/android/bluetooth/hfp/HeadsetService;Landroid/os/Looper;Lcom/android/bluetooth/hfpclient/NativeInterface;)V
    .locals 4

    const-string v0, "HeadsetClientStateMachine"

    invoke-direct {p0, v0, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mClccTimer:J

    new-instance p3, Ljava/util/Hashtable;

    invoke-direct {p3}, Ljava/util/Hashtable;-><init>()V

    iput-object p3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    iput-object p4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    new-instance p2, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;

    invoke-direct {p2, p1, p4}, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Lcom/android/bluetooth/hfpclient/NativeInterface;)V

    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVendorProcessor:Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    iput-boolean p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    iput p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v3, 0x7f02000b

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    const-string v3, "bluetooth.headset_client.initial_audio_route.enabled"

    invoke-static {v3, p4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f02000c

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const-string p4, "bluetooth.hfp.clcc_poll_during_call.enabled"

    invoke-static {p4, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mClccPollDuringCall:Z

    new-instance p1, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;

    invoke-direct {p1}, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->build()Landroid/bluetooth/BluetoothSinkAudioPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mHsClientAudioPolicy:Landroid/bluetooth/BluetoothSinkAudioPolicy;

    const-string p1, "bluetooth.headset_client.audio_policy.connecting_time.config"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getAudioPolicySystemProp(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnectingTimePolicyProperty:I

    const-string p1, "bluetooth.headset_client.audio_policy.in_band_ringtone.config"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getAudioPolicySystemProp(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtonePolicyProperty:I

    const-string p1, "bluetooth.headset_client.audio_policy.force_enabled"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mForceSetAudioPolicyProperty:Z

    iput p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    iput p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    iput p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    iput p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    invoke-virtual {v2, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    sput p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMaxAmVcVol:I

    invoke-virtual {v2, p2}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p1

    sput p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMinAmVcVol:I

    iput-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    invoke-virtual {p3}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    new-instance p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    new-instance p2, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    new-instance p3, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-direct {p3, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    iput-object p3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    new-instance p4, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    invoke-direct {p4, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    iput-object p4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0, p3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0, p4, p3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method public static amToHfVol(I)I
    .locals 3

    sget v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMaxAmVcVol:I

    sget v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMinAmVcVol:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sub-int v1, p0, v1

    mul-int/lit8 v1, v1, 0xe

    div-int/2addr v1, v0

    add-int/2addr v1, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AM -> HF "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    return v1
.end method

.method public static getConnectionStateFromAudioState(I)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static getMessageName(I)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "CONNECTING_TIMEOUT"

    return-object p0

    :pswitch_1
    const-string p0, "SUBSCRIBER_INFO"

    return-object p0

    :pswitch_2
    const-string p0, "QUERY_OPERATOR_NAME"

    return-object p0

    :pswitch_3
    const-string p0, "QUERY_CURRENT_CALLS"

    return-object p0

    :pswitch_4
    const-string p0, "SEND_BIEV"

    return-object p0

    :pswitch_5
    const-string p0, "SEND_VENDOR_AT_COMMAND"

    return-object p0

    :pswitch_6
    const-string p0, "DISABLE_NREC"

    return-object p0

    :pswitch_7
    const-string p0, "EXPLICIT_CALL_TRANSFER"

    return-object p0

    :pswitch_8
    const-string p0, "SEND_DTMF"

    return-object p0

    :pswitch_9
    const-string p0, "ENTER_PRIVATE_MODE"

    return-object p0

    :pswitch_a
    const-string p0, "TERMINATE_CALL"

    return-object p0

    :pswitch_b
    const-string p0, "HOLD_CALL"

    return-object p0

    :pswitch_c
    const-string p0, "REJECT_CALL"

    return-object p0

    :pswitch_d
    const-string p0, "ACCEPT_CALL"

    return-object p0

    :pswitch_e
    const-string p0, "SET_SPEAKER_VOLUME"

    return-object p0

    :pswitch_f
    const-string p0, "SET_MIC_VOLUME"

    return-object p0

    :pswitch_10
    const-string p0, "VOICE_RECOGNITION_STOP"

    return-object p0

    :pswitch_11
    const-string p0, "VOICE_RECOGNITION_START"

    return-object p0

    :pswitch_12
    const-string p0, "DISCONNECT_AUDIO"

    return-object p0

    :pswitch_13
    const-string p0, "CONNECT_AUDIO"

    return-object p0

    :pswitch_14
    const-string p0, "DISCONNECT"

    return-object p0

    :pswitch_15
    const-string p0, "CONNECT"

    return-object p0

    :cond_0
    const-string p0, "STACK_EVENT"

    return-object p0

    :cond_1
    const-string p0, "DIAL_NUMBER"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x32
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hfToAmVol(I)I
    .locals 3

    sget v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMaxAmVcVol:I

    sget v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMinAmVcVol:I

    sub-int/2addr v0, v1

    add-int/lit8 v2, p0, -0x1

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0xe

    add-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HF -> AM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    return v1
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HeadsetClientStateMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Lcom/android/bluetooth/hfp/HeadsetService;Landroid/os/Looper;Lcom/android/bluetooth/hfpclient/NativeInterface;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .locals 1

    const-string v0, "make"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Lcom/android/bluetooth/hfp/HeadsetService;Landroid/os/Looper;Lcom/android/bluetooth/hfpclient/NativeInterface;)V

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    return-object v0
.end method


# virtual methods
.method public final acceptCall(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptCall: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x5

    filled-new-array {v0, v1}, [I

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Lcom/android/bluetooth/hfpclient/HfpClientCall;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-nez v2, :cond_0

    filled-new-array {v3, v4}, [I

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Lcom/android/bluetooth/hfpclient/HfpClientCall;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call to accept: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getState()I

    move-result v2

    const-string v5, "HeadsetClientStateMachine"

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v2, v4, :cond_9

    if-eq v2, v0, :cond_7

    if-eq v2, v1, :cond_2

    if-eq v2, v3, :cond_1

    return-void

    :cond_1
    const/16 v7, 0xa

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_c

    return-void

    :cond_3
    if-eq p1, v4, :cond_6

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    if-ne p1, v7, :cond_5

    const-string v0, "Accepting call with accept and reject"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Aceept call with invalid flag: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_0
    const-string v0, "Accepting call with accept and hold"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    return-void

    :cond_8
    const/4 v7, 0x7

    goto :goto_2

    :cond_9
    if-ne p1, v4, :cond_a

    goto :goto_2

    :cond_a
    if-ne p1, v7, :cond_b

    :goto_1
    move v7, v4

    goto :goto_2

    :cond_b
    filled-new-array {v6}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Lcom/android/bluetooth/hfpclient/HfpClientCall;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v7, 0x3

    :cond_c
    :goto_2
    if-ne p1, v4, :cond_d

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->routeHfpAudio(Z)V

    :cond_d
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v7, v6}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallAction(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_3

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ERROR: Couldn\'t accept a call, action:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public addQueuedAction(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    return-void
.end method

.method public final addQueuedAction(II)V
    .locals 1

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addQueuedAction(ILjava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionStateFromAudioState(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x7f

    invoke-static {v5, v0, v1, v2, v4}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BIII)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne p2, v3, :cond_1

    const-string v1, "android.bluetooth.headsetclient.extra.AUDIO_WBS"

    iget-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {}, Lcom/android/bluetooth/Utils;->getTempAllowlistBroadcastOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/bluetooth/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HfpClientConnectionService;->onAudioStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method public final broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_8

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const-string v2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    const-string v2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    const-string v2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/16 v5, 0x80

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_3

    const-string v2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/16 v5, 0x8

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_4

    const-string v2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_5

    const-string v2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_6

    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_7

    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    const-string v2, "android.permission.BLUETOOTH_PRIVILEGED"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/bluetooth/Utils;->getTempBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Service;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    invoke-static {p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HfpClientConnectionService;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method public callsInState(I)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getState()I

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final clearPendingAction()V
    .locals 2

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    return-void
.end method

.method public final createMaskString(Landroid/bluetooth/BluetoothSinkAudioPolicy;)Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SINKAUDIOPOLICY"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSinkAudioPolicy;->getCallEstablishPolicy()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSinkAudioPolicy;->getActiveDevicePolicyAfterConnection()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSinkAudioPolicy;->getInBandRingtonePolicy()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doQuit()V
    .locals 2

    const-string v0, "doQuit"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->routeHfpAudio(Z)V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->returnAudioFocusIfNecessary()V

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->quitNow()V

    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==== StateMachine for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAudioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAudioWbs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIndicatorNetworkState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIndicatorNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIndicatorNetworkSignal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIndicatorBatteryLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOperatorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubscriberInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAudioRouteAllowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAudioPolicyRemoteSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioPolicyRemoteSupported:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHsClientAudioPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mHsClientAudioPolicy:Landroid/bluetooth/BluetoothSinkAudioPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInBandRing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v0, "  mCalls:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    const-string v1, "    "

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "  mCallsUpdate:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-super {p0, v3, v2, v4}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    const-string p0, "  StateMachineLog:"

    invoke-static {p1, p0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance p0, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public enterPrivateMode(I)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterPrivateMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getState()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->isMultiParty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallAction(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: Couldn\'t enter private  id:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HeadsetClientStateMachine"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "explicitCallTransfer"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallAction(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V

    goto :goto_0

    :cond_1
    const-string p0, "HeadsetClientStateMachine"

    const-string v0, "ERROR: Couldn\'t transfer call"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAudioPolicyRemoteSupported()I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioPolicyRemoteSupported:I

    return p0
.end method

.method public final getAudioPolicySystemProp(Ljava/lang/String;)I
    .locals 1

    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method public getAudioRouteAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    return p0
.end method

.method public declared-synchronized getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public varargs getCall([I)Lcom/android/bluetooth/hfpclient/HfpClientCall;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFromCallsWithStates states:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getState()I

    move-result v4

    if-ne v4, v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectingTimePolicyProperty()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnectingTimePolicyProperty:I

    return p0
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_1

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad currentState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_3
    :goto_0
    monitor-exit p0

    const/4 p0, 0x2

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_4
    :goto_1
    monitor-exit p0

    return v0
.end method

.method public getCurrentAgEvents()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCurrentAgFeatures()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isSupported(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isSupported(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/16 v4, 0x20

    invoke-virtual {p0, v1, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isSupported(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/16 v5, 0x80

    invoke-virtual {p0, v1, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isSupported(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/16 v5, 0x8

    invoke-virtual {p0, v1, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isSupported(II)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isSupported(II)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isSupported(II)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    invoke-virtual {p0, v1, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isSupported(II)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isSupported(II)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method

.method public getCurrentAgFeaturesBundle()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/16 v4, 0x80

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/4 v4, 0x2

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/16 v1, 0x40

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_8

    const-string p0, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    return-object v0
.end method

.method public getCurrentCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/hfpclient/HfpClientCall;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HFP_AG:Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Lcom/android/bluetooth/Utils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget v6, p1, v5

    if-ne v3, v6, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDisconnectedState()Lcom/android/internal/util/IState;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    return-object p0
.end method

.method public getForceSetAudioPolicyProperty()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mForceSetAudioPolicyProperty:Z

    return p0
.end method

.method public getInBandRing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRing:Z

    return p0
.end method

.method public getInBandRingtonePolicyProperty()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtonePolicyProperty:I

    return p0
.end method

.method public getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getMessageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "arg1="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", arg2="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", obj="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final holdCall()V
    .locals 4

    const-string v0, "holdCall"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Lcom/android/bluetooth/hfpclient/HfpClientCall;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Lcom/android/bluetooth/hfpclient/HfpClientCall;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallAction(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: Couldn\'t hold a call, action:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HeadsetClientStateMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public isAudioOn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnected()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isSupported(II)Z
    .locals 0

    and-int p0, p1, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-gtz p0, :cond_1

    const/4 v0, -0x1

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final processAndroidAtFeature([Ljava/lang/String;)V
    .locals 3

    array-length v0, p1

    const-string v1, "HeadsetClientStateMachine"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const-string p0, "processAndroidAtFeature: Invalid feature length"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v0, "SINKAUDIOPOLICY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "processAndroidAtFeature:SINKAUDIOPOLICY supported"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setAudioPolicyRemoteSupported(Z)V

    :cond_1
    return-void
.end method

.method public processAndroidSlcCommand(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "+ANDROID:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz p2, :cond_2

    if-ltz v0, :cond_2

    if-lt p2, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAndroidSlcCommand: feature=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeadsetClientStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->processAndroidAtFeature([Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final queryCallsDone()V
    .locals 15

    const-string v0, "queryCallsDone"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currCallIdSet "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " newCallIdSet "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " callAddedIds "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " callRemovedIds "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " callRetainedIds "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x7

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getCreationElapsedMilli()J

    move-result-wide v11

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Associating the first call with HF originated call"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v11, 0x0

    aget-object v0, v0, v11

    check-cast v0, Ljava/lang/Integer;

    iget-object v11, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v11, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    invoke-virtual {v11, v0, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v11, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    const-wide/16 v11, 0x2710

    cmp-long v0, v13, v11

    if-lez v0, :cond_2

    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "Outgoing call did not see a response, clear the calls and send CHUP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->terminateCall()V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    invoke-virtual {v1, v10}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->setState(I)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Lcom/android/bluetooth/hfpclient/HfpClientCall;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADJUST: currCallIdSet "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    invoke-virtual {v2, v10}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->setState(I)V

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Lcom/android/bluetooth/hfpclient/HfpClientCall;)V

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Lcom/android/bluetooth/hfpclient/HfpClientCall;)V

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getState()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getState()I

    move-result v5

    if-ne v4, v5, :cond_6

    invoke-virtual {v3}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->isMultiParty()Z

    move-result v4

    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->isMultiParty()Z

    move-result v5

    if-eq v4, v5, :cond_5

    :cond_6
    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->setNumber(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->setState(I)V

    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->isMultiParty()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->setMultiParty(Z)V

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Lcom/android/bluetooth/hfpclient/HfpClientCall;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mClccPollDuringCall:Z

    const/16 v2, 0x32

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Lcom/android/bluetooth/hfpclient/HfpClientCall;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "Still have incoming call; polling"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    goto :goto_6

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    :cond_b
    :goto_6
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public final queryCallsStart()Z
    .locals 2

    const-string v0, "queryCallsStart"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->queryCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Z

    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final queryCallsUpdate(IILjava/lang/String;ZZ)V
    .locals 13

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCallsUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lcom/android/bluetooth/hfpclient/HfpClientCall;

    iget-object v4, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v10, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRing:Z

    move-object v3, v12

    move v5, p1

    move v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/hfpclient/HfpClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZZ)V

    invoke-virtual {v1, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final queryRemoteSupportedFeatures()Z
    .locals 4

    const-string v0, "queryRemoteSupportedFeatures"

    const-string v1, "HeadsetClientStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v3, "+ANDROID=?"

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/hfpclient/NativeInterface;->sendAndroidAt(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ERROR: Couldn\'t send audio policy feature query"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final rejectCall()V
    .locals 6

    const-string v0, "rejectCall"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x1

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Lcom/android/bluetooth/hfpclient/HfpClientCall;

    move-result-object v4

    if-nez v4, :cond_0

    const-string p0, "No call to reject, returning."

    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getState()I

    move-result v4

    const/4 v5, 0x0

    if-eq v4, v3, :cond_3

    if-eq v4, v0, :cond_2

    if-eq v4, v1, :cond_3

    if-eq v4, v2, :cond_1

    return-void

    :cond_1
    const/16 v0, 0xb

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v0, v5}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallAction(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject call action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: Couldn\'t reject a call, action:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HeadsetClientStateMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final requestAudioFocus()Landroid/media/AudioFocusRequest;
    .locals 4

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v3, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v3, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v3, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p0

    if-ne p0, v2, :cond_0

    const-string p0, "AudioFocus granted"

    goto :goto_0

    :cond_0
    const-string p0, "AudioFocus NOT granted"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioManager requestAudioFocus returned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public final returnAudioFocusIfNecessary()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    return-void
.end method

.method public declared-synchronized routeHfpAudio(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string p1, "HeadsetClientStateMachine"

    const-string v0, "AudioManager is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hfp_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sAudioIsRouted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setHfpEnabled(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setHfpEnabled(Z)V

    :cond_2
    :goto_0
    sput-boolean p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sAudioIsRouted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final sendCallChangedIntent(Lcom/android/bluetooth/hfpclient/HfpClientCall;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCallChangedIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.extra.CALL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {}, Lcom/android/bluetooth/Utils;->getTempAllowlistBroadcastOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/bluetooth/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/android/bluetooth/hfpclient/HfpClientCall;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/bluetooth/hfpclient/HfpClientConnectionService;->onCallChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hfpclient/HfpClientCall;)V

    return-void
.end method

.method public final sendNetworkStateChangedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v6, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    iget v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    if-ne v0, v2, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    move-object v0, v6

    move-object v1, p1

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;-><init>(Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;IZ)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.NETWORK_SERVICE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.bluetooth.headsetclient.extra.EXTRA_NETWORK_SERVICE_STATE"

    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_PRIVILEGED"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/bluetooth/Utils;->getTempBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/Service;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    return-void
.end method

.method public setAudioPolicy(Landroid/bluetooth/BluetoothSinkAudioPolicy;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mHsClientAudioPolicy:Landroid/bluetooth/BluetoothSinkAudioPolicy;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getAudioPolicyRemoteSupported()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "HeadsetClientStateMachine"

    if-eq v0, v1, :cond_0

    const-string p0, "Audio Policy feature not supported!"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+ANDROID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->createMaskString(Landroid/bluetooth/BluetoothSinkAudioPolicy;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->sendAndroidAt(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "ERROR: Couldn\'t send call audio policies"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 p1, 0x17

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V

    return-void
.end method

.method public setAudioPolicyRemoteSupported(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioPolicyRemoteSupported:I

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioPolicyRemoteSupported:I

    :goto_0
    return-void
.end method

.method public setAudioRouteAllowed(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getForceSetAudioPolicyProperty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mHsClientAudioPolicy:Landroid/bluetooth/BluetoothSinkAudioPolicy;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;-><init>(Landroid/bluetooth/BluetoothSinkAudioPolicy;)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->setCallEstablishPolicy(I)Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectingTimePolicyProperty()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->setActiveDevicePolicyAfterConnection(I)Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getInBandRingtonePolicyProperty()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->setInBandRingtonePolicy(I)Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->build()Landroid/bluetooth/BluetoothSinkAudioPolicy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setAudioPolicy(Landroid/bluetooth/BluetoothSinkAudioPolicy;)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mHsClientAudioPolicy:Landroid/bluetooth/BluetoothSinkAudioPolicy;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;-><init>(Landroid/bluetooth/BluetoothSinkAudioPolicy;)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->setCallEstablishPolicy(I)Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->build()Landroid/bluetooth/BluetoothSinkAudioPolicy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setAudioPolicy(Landroid/bluetooth/BluetoothSinkAudioPolicy;)V

    :goto_1
    return-void
.end method

.method public final terminateCall()V
    .locals 4

    const-string v0, "terminateCall"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Lcom/android/bluetooth/hfpclient/HfpClientCall;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Lcom/android/bluetooth/hfpclient/HfpClientCall;

    move-result-object v0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallAction(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_1

    :cond_1
    const-string p0, "HeadsetClientStateMachine"

    const-string v0, "ERROR: Couldn\'t terminate outgoing call"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
