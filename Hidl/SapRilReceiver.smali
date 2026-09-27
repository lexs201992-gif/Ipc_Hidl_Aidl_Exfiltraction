.class public Lcom/android/bluetooth/sap/SapRilReceiver;
.super Ljava/lang/Object;
.source "SapRilReceiver.java"

# interfaces
.implements Lcom/android/bluetooth/sap/ISapRilReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;,
        Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final HAL_INSTANCE_NAME:Ljava/lang/String;

.field public static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field public static final TAG:Ljava/lang/String; = "SapRilReceiver"

.field public static final VERBOSE:Z = true


# instance fields
.field public buffer:[B

.field public mSapCallback:Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;

.field public volatile mSapProxy:Landroid/hardware/radio/sap/ISap;

.field public final mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mSapProxyDeathRecipient:Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;

.field public final mSapProxyLock:Ljava/lang/Object;

.field public mSapServerMsgHandler:Landroid/os/Handler;

.field public mSapServiceHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSapServerMsgHandler(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSapServiceHandler(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveOngoingReqAndSendMessage(Lcom/android/bluetooth/sap/SapRilReceiver;ILcom/android/bluetooth/sap/SapMessage;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/sap/SapRilReceiver;->removeOngoingReqAndSendMessage(ILcom/android/bluetooth/sap/SapMessage;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSapMessage(Lcom/android/bluetooth/sap/SapRilReceiver;Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendSapMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/radio/sap/ISap;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/slot1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/sap/SapRilReceiver;->HAL_INSTANCE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->buffer:[B

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServiceHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;-><init>(Lcom/android/bluetooth/sap/SapRilReceiver;)V

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapCallback:Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;

    new-instance p1, Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;-><init>(Lcom/android/bluetooth/sap/SapRilReceiver;)V

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyDeathRecipient:Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->getSapProxy()Landroid/hardware/radio/sap/ISap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isAidlSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/bluetooth/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/sap/SapRilReceiver;->HAL_INSTANCE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public apduReq(II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/sap/ISap;->apduReq(II[B)V

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const-string p0, "SapRilReceiver"

    const-string v0, "asBinder should never be called"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public connectReq(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/sap/ISap;->connectReq(II)V

    return-void
.end method

.method public disconnectReq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    invoke-interface {p0, p1}, Landroid/hardware/radio/sap/ISap;->disconnectReq(I)V

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    const-string p0, "SapRilReceiver"

    const-string v0, "getInterfaceHash should never be called"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 1

    const-string p0, "SapRilReceiver"

    const-string v0, "getInterfaceVersion should never be called"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getSapProxy()Landroid/hardware/radio/sap/ISap;
    .locals 5

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/sap/SapRilReceiver;->HAL_INSTANCE_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/sap/ISap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sap/ISap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyDeathRecipient:Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapCallback:Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;

    invoke-interface {v1, v2}, Landroid/hardware/radio/sap/ISap;->setCallback(Landroid/hardware/radio/sap/ISapCallback;)V

    goto :goto_0

    :cond_1
    const-string v1, "SapRilReceiver"

    const-string v2, "getSapProxy: mSapProxy == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    const-string v2, "SapRilReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSapProxy: exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getSapProxyCookie()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public getSapProxyLock()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyLock:Ljava/lang/Object;

    return-object p0
.end method

.method public isProxyValid()Z
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyShutdown()V
    .locals 2

    const-string v0, "SapRilReceiver"

    const-string v1, "notifyShutdown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendShutdownMessage()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->resetSapProxy()V

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->getSapProxy()Landroid/hardware/radio/sap/ISap;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public powerReq(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/sap/ISap;->powerReq(IZ)V

    return-void
.end method

.method public final removeOngoingReqAndSendMessage(ILcom/android/bluetooth/sap/SapMessage;)V
    .locals 3

    sget-object v0, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOngoingReqAndSendMessage: token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reqType "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SapRilReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendSapMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    return-void
.end method

.method public resetSapProxy()V
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SapRilReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetSapProxy :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "SapRilReceiver"

    const-string v2, "asdf asBinder is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyDeathRecipient:Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetSimReq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    invoke-interface {p0, p1}, Landroid/hardware/radio/sap/ISap;->resetSimReq(I)V

    return-void
.end method

.method public final sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendRilConnectMessage()V
    .locals 1

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final sendRilIndMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendSapMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendRilIndMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    :goto_0
    return-void
.end method

.method public final sendShutdownMessage()V
    .locals 1

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setCallback(Landroid/hardware/radio/sap/ISapCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "SapRilReceiver"

    const-string p1, "setCallback should never be called"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTransferProtocolReq(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/sap/ISap;->setTransferProtocolReq(II)V

    return-void
.end method

.method public transferAtrReq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    invoke-interface {p0, p1}, Landroid/hardware/radio/sap/ISap;->transferAtrReq(I)V

    return-void
.end method

.method public transferCardReaderStatusReq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/sap/ISap;

    invoke-interface {p0, p1}, Landroid/hardware/radio/sap/ISap;->transferCardReaderStatusReq(I)V

    return-void
.end method
