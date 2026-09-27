.class public Lcom/spreadtrum/ims/IwlanDataService;
.super Landroid/telephony/data/DataService;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;,
        Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;,
        Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceConnector;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEACTIVATE_DATA_ALL_COMPLETE:I = 0x2

.field private static final IMS_DATA_CALL_LIST_CHANGED:I = 0x3ea

.field private static final IWLAN_PDN_STATE_CHANGED:I = 0x3e9

.field private static final REQUEST_DATA_CALL_LIST_COMPLETE:I = 0x5

.field private static final SETUP_DATA_CALL_COMPLETE:I = 0x1

.field private static final SET_DATA_PROFILE_COMPLETE:I = 0x4

.field private static final SET_INITIAL_ATTACH_APN_COMPLETE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final VOWIFI_IMS_DATA_CALL_CID:I = 0x64

.field private static final VOWIFI_MMS_DATA_CALL_CID:I = 0x65


# instance fields
.field private mDataCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;

.field public mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

.field private mImsDataCallListenerBinder:Lcom/android/ims/internal/IImsDataCallListChangedCallback$Stub;

.field private mImsIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mImsListenerBinder:Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;

.field public mIsImsListenerRegistered:Z

.field public mIwlanPdnState:[I

.field public mIwlanProviderArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneCount:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataCallList(Lcom/spreadtrum/ims/IwlanDataService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mDataCallList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneCount(Lcom/spreadtrum/ims/IwlanDataService;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mPhoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$misPdnActived(Lcom/spreadtrum/ims/IwlanDataService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanDataService;->isPdnActived(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPdnDeactived(Lcom/spreadtrum/ims/IwlanDataService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanDataService;->isPdnDeactived(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/IwlanDataService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMmsTransportState(Lcom/spreadtrum/ims/IwlanDataService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/IwlanDataService;->setMmsTransportState(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryRegisterImsListener(Lcom/spreadtrum/ims/IwlanDataService;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/IwlanDataService;->tryRegisterImsListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/IwlanDataService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/spreadtrum/ims/IwlanDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/IwlanDataService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/data/DataService;-><init>()V

    new-instance v0, Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;-><init>(Lcom/spreadtrum/ims/IwlanDataService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mHandler:Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanProviderArray:Landroid/util/SparseArray;

    const/4 v0, 0x2

    iput v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mPhoneCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mDataCallList:Ljava/util/List;

    new-instance v0, Lcom/spreadtrum/ims/IwlanDataService$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanDataService$1;-><init>(Lcom/spreadtrum/ims/IwlanDataService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/spreadtrum/ims/IwlanDataService$2;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanDataService$2;-><init>(Lcom/spreadtrum/ims/IwlanDataService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsListenerBinder:Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;

    new-instance v0, Lcom/spreadtrum/ims/IwlanDataService$3;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/IwlanDataService$3;-><init>(Lcom/spreadtrum/ims/IwlanDataService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsDataCallListenerBinder:Lcom/android/ims/internal/IImsDataCallListChangedCallback$Stub;

    return-void
.end method

.method public static convertHalDataCallResult(Lcom/android/ims/internal/DataCallResponse;)Landroid/telephony/data/DataCallResponse;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getCause()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getSuggestedRetryTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getLinkStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getProtocolType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getGatewayAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getMtuV4()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getMtuV6()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getMtuV4()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getMtuV6()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getHandoverFailureMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getPduSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getDefaultQos()Landroid/telephony/data/Qos;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getQosBearerSessions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/internal/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v0

    return-object v0
.end method

.method private isPdnActived(I)Z
    .locals 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanPdnState:[I

    aget v0, v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private isPdnDeactived(I)Z
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanPdnState:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/IwlanDataService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setMmsTransportState(IZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsServiceEx;->notifyMmsTranportStateChange(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/spreadtrum/ims/IwlanDataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMmsTransportState RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private declared-synchronized tryRegisterImsListener()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIsImsListenerRegistered:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIsImsListenerRegistered:Z

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsListenerBinder:Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->registerforVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsDataCallListenerBinder:Lcom/android/ims/internal/IImsDataCallListChangedCallback$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->registerForDataCallListChanged(Lcom/android/ims/internal/IImsDataCallListChangedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/spreadtrum/ims/IwlanDataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regiseterforImsException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized tryUnregisterImsListener()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIsImsListenerRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIsImsListenerRegistered:Z

    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsListenerBinder:Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->unregisterVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsDataCallListenerBinder:Lcom/android/ims/internal/IImsDataCallListChangedCallback$Stub;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsServiceEx;->unregisterForDataCallListChanged(Lcom/android/ims/internal/IImsDataCallListChangedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/spreadtrum/ims/IwlanDataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public isVoWiFiRegisteredForPhone(I)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "gsm.sys.vowifi.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string v2, ",1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    :cond_2
    return v0
.end method

.method public notifyVoWiFiAttachStateChanged(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVoWiFiAttachStateChanged, slotIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanDataService;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanProviderArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;

    if-eqz v0, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->notifyActionComplete()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->notifyActionComplete()V

    nop

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "com.unisoc.ims.tests"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onBind for test"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanDataService;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceConnector;

    invoke-super {p0, p1}, Landroid/telephony/data/DataService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceConnector;-><init>(Lcom/spreadtrum/ims/IwlanDataService;Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/telephony/data/DataService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "IWLAN Data Service onCreate."

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanDataService;->log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/telephony/data/DataService;->onCreate()V

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanPdnState:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanProviderArray:Landroid/util/SparseArray;

    new-instance v2, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;-><init>(Lcom/spreadtrum/ims/IwlanDataService;ILcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider-IA;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanPdnState:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/IwlanDataService;->tryRegisterImsListener()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataServiceProvider created for slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanDataService;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanProviderArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataService$DataServiceProvider;

    return-object v0

    :cond_0
    const-string v0, "onCreateDataServiceProvider, invalid slotId\uff01"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/IwlanDataService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/telephony/data/DataService;->onDestroy()V

    invoke-direct {p0}, Lcom/spreadtrum/ims/IwlanDataService;->tryUnregisterImsListener()V

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanDataService;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/data/DataService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
