.class public Lcom/android/bluetooth/sap/SapRilReceiverHidl;
.super Ljava/lang/Object;
.source "SapRilReceiverHidl.java"

# interfaces
.implements Lcom/android/bluetooth/sap/ISapRilReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapProxyDeathRecipient;,
        Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapCallback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field public static final SERVICE_NAME_RIL_BT:Ljava/lang/String; = "slot1"

.field public static final TAG:Ljava/lang/String; = "SapRilReceiver"

.field public static final VERBOSE:Z = true


# instance fields
.field public buffer:[B

.field public mSapCallback:Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapCallback;

.field public volatile mSapProxy:Landroid/hardware/radio/V1_0/ISap;

.field public final mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mSapProxyDeathRecipient:Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapProxyDeathRecipient;

.field public final mSapProxyLock:Ljava/lang/Object;

.field public mSapServerMsgHandler:Landroid/os/Handler;

.field public mSapServiceHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSapServerMsgHandler(Lcom/android/bluetooth/sap/SapRilReceiverHidl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapServerMsgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSapServiceHandler(Lcom/android/bluetooth/sap/SapRilReceiverHidl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveOngoingReqAndSendMessage(Lcom/android/bluetooth/sap/SapRilReceiverHidl;ILcom/android/bluetooth/sap/SapMessage;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->removeOngoingReqAndSendMessage(ILcom/android/bluetooth/sap/SapMessage;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSapMessage(Lcom/android/bluetooth/sap/SapRilReceiverHidl;Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->sendSapMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxyLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->buffer:[B

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapServerMsgHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapServiceHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapCallback;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapCallback;-><init>(Lcom/android/bluetooth/sap/SapRilReceiverHidl;)V

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapCallback:Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapCallback;

    new-instance p1, Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapProxyDeathRecipient;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapProxyDeathRecipient;-><init>(Lcom/android/bluetooth/sap/SapRilReceiverHidl;)V

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxyDeathRecipient:Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapProxyDeathRecipient;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->getSapProxy()Landroid/hardware/radio/V1_0/ISap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public apduReq(II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->primitiveArrayToContainerArrayList([B)Ljava/util/ArrayList;

    move-result-object p3

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_0/ISap;->apduReq(IILjava/util/ArrayList;)V

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

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/ISap;->connectReq(II)V

    return-void
.end method

.method public disconnectReq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/ISap;->disconnectReq(I)V

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

.method public getSapProxy()Landroid/hardware/radio/V1_0/ISap;
    .locals 5

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "slot1"

    invoke-static {v1}, Landroid/hardware/radio/V1_0/ISap;->getService(Ljava/lang/String;)Landroid/hardware/radio/V1_0/ISap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxyDeathRecipient:Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapProxyDeathRecipient;

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/ISap;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapCallback:Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapCallback;

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/ISap;->setCallback(Landroid/hardware/radio/V1_0/ISapCallback;)V

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
    iput-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

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
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapServerMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

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
    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

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

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public getSapProxyLock()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxyLock:Ljava/lang/Object;

    return-object p0
.end method

.method public isProxyValid()Z
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

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

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->sendShutdownMessage()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->resetSapProxy()V

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->getSapProxy()Landroid/hardware/radio/V1_0/ISap;

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

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/ISap;->powerReq(IZ)V

    return-void
.end method

.method public final primitiveArrayToContainerArrayList([B)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
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

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->sendSapMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    return-void
.end method

.method public resetSapProxy()V
    .locals 5

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SapRilReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetSapProxy :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxyDeathRecipient:Lcom/android/bluetooth/sap/SapRilReceiverHidl$SapProxyDeathRecipient;

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/ISap;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SapRilReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetSapProxy: exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public resetSimReq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/ISap;->resetSimReq(I)V

    return-void
.end method

.method public final sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapServerMsgHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendRilConnectMessage()V
    .locals 1

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapServerMsgHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final sendRilIndMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapServerMsgHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendSapMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->sendRilIndMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    :goto_0
    return-void
.end method

.method public final sendShutdownMessage()V
    .locals 1

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapServerMsgHandler:Landroid/os/Handler;

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

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_0/ISap;->setTransferProtocolReq(II)V

    return-void
.end method

.method public transferAtrReq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/ISap;->transferAtrReq(I)V

    return-void
.end method

.method public transferCardReaderStatusReq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiverHidl;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_0/ISap;->transferCardReaderStatusReq(I)V

    return-void
.end method
