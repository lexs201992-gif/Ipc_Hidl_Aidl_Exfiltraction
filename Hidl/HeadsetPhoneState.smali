.class public Lcom/android/bluetooth/hfp/HeadsetPhoneState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;,
        Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HeadsetPhoneState"


# instance fields
.field public mCallState:I

.field public mCindBatteryCharge:I

.field public mCindRoam:I

.field public mCindService:I

.field public mCindSignal:I

.field public final mDeviceEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public final mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

.field public mIsSignalStrengthRequestSet:Z

.field public mNumActive:I

.field public mNumHeld:I

.field public final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public final mPhoneStateListenerLock:Ljava/lang/Object;

.field public mServiceState:Landroid/telephony/ServiceState;

.field public mSignalStrengthHandler:Landroid/os/Handler;

.field public mSignalStrengthUpdateRequest:Landroid/telephony/SignalStrengthUpdateRequest;

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$RmAr7TtlXvKmRgupAWPs0hCkIZ0(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jAo9BdG2tyhDcTD83J5LWM88QKg(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->lambda$getTelephonyEventsToListen$1(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lX7L6HA2GhikELMyexPR3cfzX-Y(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->lambda$startListenForPhoneState$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$odT2Fjhq_TtFIVS_tsYKOQlZy0Q(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->lambda$startListenForPhoneState$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$rMbE2Wfq5Poi4IAmUojJYj0-Aw4(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->lambda$stopListenForPhoneState$4()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCindRoam(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCindService(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCindSignal(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceEventMap(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCindRoam(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCindService(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCindSignal(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmServiceState(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendDeviceStateChanged(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartListenForPhoneState(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->startListenForPhoneState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopListenForPhoneState(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->stopListenForPhoneState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListenerLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mIsSignalStrengthRequestSet:Z

    monitor-enter v1

    :try_start_0
    const-string v0, "headsetService is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "TELEPHONY_SERVICE is null"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string v2, "TELEPHONY_SUBSCRIPTION_SERVICE is null"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "BluetoothSignalStrengthUpdateRequest"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignalStrengthHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getStateMachinesThreadLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetPhoneState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$$ExternalSyntheticLambda0;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    invoke-virtual {v0, v2, p1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    new-instance p1, Landroid/telephony/SignalStrengthUpdateRequest$Builder;

    invoke-direct {p1}, Landroid/telephony/SignalStrengthUpdateRequest$Builder;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->setSignalThresholdInfos(Ljava/util/Collection;)Landroid/telephony/SignalStrengthUpdateRequest$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->setSystemThresholdReportingRequestedWhileIdle(Z)Landroid/telephony/SignalStrengthUpdateRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->build()Landroid/telephony/SignalStrengthUpdateRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignalStrengthUpdateRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$getTelephonyEventsToListen$1(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$startListenForPhoneState$2(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$startListenForPhoneState$3()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSignalStrengthUpdateRequest, hasSet : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mIsSignalStrengthRequestSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadsetPhoneState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mIsSignalStrengthRequestSet:Z

    if-nez v0, :cond_0

    const-string v0, "setSignalStrengthUpdateRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignalStrengthUpdateRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setSignalStrengthUpdateRequest(Landroid/telephony/SignalStrengthUpdateRequest;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "setSignalStrengthUpdateRequest called again with same subId"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mIsSignalStrengthRequestSet:Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$stopListenForPhoneState$4()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearSignalStrengthUpdateRequest, hasSet : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mIsSignalStrengthRequestSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadsetPhoneState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignalStrengthUpdateRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->clearSignalStrengthUpdateRequest(Landroid/telephony/SignalStrengthUpdateRequest;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mIsSignalStrengthRequestSet:Z

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->stopListenForPhoneState()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCallState()I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    return p0
.end method

.method public getCindBatteryCharge()I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindBatteryCharge:I

    return p0
.end method

.method public getCindRoam()I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    return p0
.end method

.method public getCindService()I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    return p0
.end method

.method public getCindSignal()I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    return p0
.end method

.method public getNumActiveCall()I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    return p0
.end method

.method public getNumHeldCall()I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    return p0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object p0
.end method

.method public final getTelephonyEventsToListen()I
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetPhoneState$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v1, v2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isInCall()Z
    .locals 1

    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listenForPhoneState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getTelephonyEventsToListen()I

    move-result v1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getTelephonyEventsToListen()I

    move-result p1

    if-eq v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->stopListenForPhoneState()V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->startListenForPhoneState()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final declared-synchronized sendDeviceStateChanged()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "HeadsetPhoneState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDeviceStateChanged. mService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSignal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRoam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mBatteryCharge="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindBatteryCharge:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    iget v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindBatteryCharge:I

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/android/bluetooth/hfp/HeadsetDeviceState;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->onDeviceStateChanged(Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallState(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    return-void
.end method

.method public setCindBatteryCharge(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindBatteryCharge:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindBatteryCharge:I

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    :cond_0
    return-void
.end method

.method public setNumActiveCall(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    return-void
.end method

.method public setNumHeldCall(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    return-void
.end method

.method public final startListenForPhoneState()V
    .locals 6

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    const-string p0, "HeadsetPhoneState"

    const-string v1, "startListenForPhoneState, already listening"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getTelephonyEventsToListen()I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "HeadsetPhoneState"

    const-string v1, "startListenForPhoneState, no event to listen"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "HeadsetPhoneState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startListenForPhoneState, invalid subscription ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    const-string v3, "HeadsetPhoneState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startListenForPhoneState(), subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enabled_events="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;

    new-instance v3, Lcom/android/bluetooth/hfp/HeadsetPhoneState$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$$ExternalSyntheticLambda3;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Ljava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignalStrengthHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetPhoneState$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$$ExternalSyntheticLambda4;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopListenForPhoneState()V
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignalStrengthHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetPhoneState$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$$ExternalSyntheticLambda1;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_0

    const-string p0, "HeadsetPhoneState"

    const-string v1, "stopListenForPhoneState(), no listener indicates nothing is listening"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "HeadsetPhoneState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopListenForPhoneState(), stopping listener, enabled_events="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getTelephonyEventsToListen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeadsetPhoneState [mTelephonyServiceAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNumActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNumHeld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRoam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBatteryCharge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindBatteryCharge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TelephonyEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getTelephonyEventsToListen()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
