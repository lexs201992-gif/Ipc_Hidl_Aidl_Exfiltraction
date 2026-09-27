.class public Lcom/android/services/telephony/rcs/SipDelegateController;
.super Ljava/lang/Object;
.source "SipDelegateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/rcs/SipDelegateController$BinderConnectionFactory;
    }
.end annotation


# instance fields
.field private mBinderConnection:Lcom/android/services/telephony/rcs/DelegateBinderStateManager;

.field private final mBinderConnectionFactory:Lcom/android/services/telephony/rcs/DelegateBinderStateManager$Factory;

.field private final mDelegateStateTracker:Lcom/android/services/telephony/rcs/DelegateStateTracker;

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mInitialRequest:Landroid/telephony/ims/DelegateRequest;

.field private final mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final mMessageTransportWrapper:Lcom/android/services/telephony/rcs/MessageTransportWrapper;

.field private final mPackageName:Ljava/lang/String;

.field private final mSubId:I

.field private mTrackedFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUid:I


# direct methods
.method public static synthetic $r8$lambda$0wmcAWaHacdPyswpK8_iUyGL13M(Lcom/android/services/telephony/rcs/SipDelegateController;ILjava/lang/Boolean;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/rcs/SipDelegateController;->lambda$destroySipDelegate$3(ILjava/lang/Boolean;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I_Z1cSsvXrt8TgpDnykDz6_PKWg(Lcom/android/services/telephony/rcs/SipDelegateController;Ljava/util/Set;Ljava/util/Set;Ljava/lang/Integer;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/services/telephony/rcs/SipDelegateController;->lambda$changeSupportedFeatureTags$1(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Integer;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JPmL6nMNVmb63OIxP22MjgL6Eno(Lcom/android/services/telephony/rcs/SipDelegateController;Lcom/android/services/telephony/rcs/DelegateBinderStateManager;Ljava/util/Set;Landroid/util/Pair;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/services/telephony/rcs/SipDelegateController;->lambda$create$0(Lcom/android/services/telephony/rcs/DelegateBinderStateManager;Ljava/util/Set;Landroid/util/Pair;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_nyjsv72zmam9Nku2djYV6geswU(Lcom/android/services/telephony/rcs/SipDelegateController;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipDelegateController;->lambda$destroy$2(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qGzS3QSe30fYFywBstJ_Qoos9Ik(Ljava/util/concurrent/CompletableFuture;Landroid/telephony/ims/aidl/ISipDelegate;Ljava/util/Set;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/services/telephony/rcs/SipDelegateController;->lambda$createSipDelegate$4(Ljava/util/concurrent/CompletableFuture;Landroid/telephony/ims/aidl/ISipDelegate;Ljava/util/Set;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmExecutorService(Lcom/android/services/telephony/rcs/SipDelegateController;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lcom/android/services/telephony/rcs/SipDelegateController;)I
    .locals 0

    iget p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mSubId:I

    return p0
.end method

.method public constructor <init>(IILandroid/telephony/ims/DelegateRequest;Ljava/lang/String;Landroid/telephony/ims/aidl/ISipTransport;Landroid/telephony/ims/aidl/IImsRegistration;Ljava/util/concurrent/ScheduledExecutorService;Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    iput p1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mSubId:I

    iput p2, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mUid:I

    iput-object p4, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mInitialRequest:Landroid/telephony/ims/DelegateRequest;

    iput-object p7, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p3, Lcom/android/services/telephony/rcs/SipDelegateController$BinderConnectionFactory;

    invoke-direct {p3, p0, p5, p6}, Lcom/android/services/telephony/rcs/SipDelegateController$BinderConnectionFactory;-><init>(Lcom/android/services/telephony/rcs/SipDelegateController;Landroid/telephony/ims/aidl/ISipTransport;Landroid/telephony/ims/aidl/IImsRegistration;)V

    iput-object p3, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mBinderConnectionFactory:Lcom/android/services/telephony/rcs/DelegateBinderStateManager$Factory;

    new-instance p3, Lcom/android/services/telephony/rcs/MessageTransportWrapper;

    invoke-direct {p3, p1, p7, p9}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;-><init>(ILjava/util/concurrent/ScheduledExecutorService;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    iput-object p3, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mMessageTransportWrapper:Lcom/android/services/telephony/rcs/MessageTransportWrapper;

    new-instance p4, Lcom/android/services/telephony/rcs/DelegateStateTracker;

    invoke-virtual {p3}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->getDelegateConnection()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->getInstance()Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object v5

    move-object v0, p4

    move v1, p1

    move v2, p2

    move-object v3, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/rcs/DelegateStateTracker;-><init>(IILandroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;Landroid/telephony/ims/aidl/ISipDelegate;Lcom/android/internal/telephony/metrics/RcsStats;)V

    iput-object p4, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mDelegateStateTracker:Lcom/android/services/telephony/rcs/DelegateStateTracker;

    return-void
.end method

.method public constructor <init>(IILandroid/telephony/ims/DelegateRequest;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/services/telephony/rcs/MessageTransportWrapper;Lcom/android/services/telephony/rcs/DelegateStateTracker;Lcom/android/services/telephony/rcs/DelegateBinderStateManager$Factory;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    iput p1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mSubId:I

    iput p2, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mUid:I

    iput-object p3, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mInitialRequest:Landroid/telephony/ims/DelegateRequest;

    iput-object p4, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mMessageTransportWrapper:Lcom/android/services/telephony/rcs/MessageTransportWrapper;

    iput-object p7, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mDelegateStateTracker:Lcom/android/services/telephony/rcs/DelegateStateTracker;

    iput-object p8, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mBinderConnectionFactory:Lcom/android/services/telephony/rcs/DelegateBinderStateManager$Factory;

    return-void
.end method

.method private createBinderConnection(Ljava/util/Set;Ljava/util/Set;)Lcom/android/services/telephony/rcs/DelegateBinderStateManager;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)",
            "Lcom/android/services/telephony/rcs/DelegateBinderStateManager;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mDelegateStateTracker:Lcom/android/services/telephony/rcs/DelegateStateTracker;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mMessageTransportWrapper:Lcom/android/services/telephony/rcs/MessageTransportWrapper;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mBinderConnectionFactory:Lcom/android/services/telephony/rcs/DelegateBinderStateManager$Factory;

    iget v1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mSubId:I

    new-instance v2, Landroid/telephony/ims/DelegateRequest;

    invoke-direct {v2, p1}, Landroid/telephony/ims/DelegateRequest;-><init>(Ljava/util/Set;)V

    iget-object v4, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/services/telephony/rcs/DelegateBinderStateManager$Factory;->create(ILandroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/List;)Lcom/android/services/telephony/rcs/DelegateBinderStateManager;

    move-result-object p0

    return-object p0
.end method

.method private createSipDelegate(Lcom/android/services/telephony/rcs/DelegateBinderStateManager;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/rcs/DelegateBinderStateManager;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/util/Pair<",
            "Landroid/telephony/ims/aidl/ISipDelegate;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mMessageTransportWrapper:Lcom/android/services/telephony/rcs/MessageTransportWrapper;

    invoke-virtual {v1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->getMessageCallback()Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    move-result-object v1

    new-instance v2, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p1, v1, v2}, Lcom/android/services/telephony/rcs/DelegateBinderStateManager;->create(Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;Ljava/util/function/BiConsumer;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Couldn\'t create binder connection, ImsService is not available."

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/SipDelegateController;->logw(Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/services/telephony/rcs/DelegateBinderStateManager;->destroy(ILjava/util/function/Consumer;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private destroySipDelegate(ZIIII)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIII)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mBinderConnection:Lcom/android/services/telephony/rcs/DelegateBinderStateManager;

    if-nez v0, :cond_0

    const-string p1, "destroySipDelegate, called when binder connection is already null"

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipDelegateController;->logi(Ljava/lang/String;)V

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    if-eqz p1, :cond_1

    const-string p1, "destroySipDelegate, forced"

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipDelegateController;->logi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mMessageTransportWrapper:Lcom/android/services/telephony/rcs/MessageTransportWrapper;

    invoke-virtual {p1, p3}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->close(I)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mMessageTransportWrapper:Lcom/android/services/telephony/rcs/MessageTransportWrapper;

    new-instance v1, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p1, p2, p3, v1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->closeGracefully(IILjava/util/function/Consumer;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mDelegateStateTracker:Lcom/android/services/telephony/rcs/DelegateStateTracker;

    invoke-virtual {p1, p4}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->sipDelegateChanging(I)V

    goto :goto_1

    :cond_2
    const-string p1, "destroySipDelegate, skip DEREGISTERING_REASON_DESTROY_PENDING"

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipDelegateController;->logi(Ljava/lang/String;)V

    :goto_1
    new-instance p1, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p5}, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda3;-><init>(Lcom/android/services/telephony/rcs/SipDelegateController;I)V

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static getMessageFailReasonFromDestroyReason(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private synthetic lambda$changeSupportedFeatureTags$1(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Integer;)Ljava/util/concurrent/CompletionStage;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeSupportedFeatureTags: destroy stage complete, reason reported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/services/telephony/rcs/SipDelegateController;->logi(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/services/telephony/rcs/SipDelegateController;->create(Ljava/util/Set;Ljava/util/Set;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$create$0(Lcom/android/services/telephony/rcs/DelegateBinderStateManager;Ljava/util/Set;Landroid/util/Pair;)Ljava/lang/Boolean;
    .locals 2

    if-nez p3, :cond_0

    const-string p1, "create: resultPair returned null"

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipDelegateController;->logw(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mBinderConnection:Lcom/android/services/telephony/rcs/DelegateBinderStateManager;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create: created, delegate denied: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipDelegateController;->logi(Ljava/lang/String;)V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mMessageTransportWrapper:Lcom/android/services/telephony/rcs/MessageTransportWrapper;

    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ims/aidl/ISipDelegate;

    iget-object v1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->openTransport(Landroid/telephony/ims/aidl/ISipDelegate;Ljava/util/Set;Ljava/util/Set;)V

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mDelegateStateTracker:Lcom/android/services/telephony/rcs/DelegateStateTracker;

    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->sipDelegateConnected(Ljava/util/Set;Ljava/util/Set;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$createSipDelegate$4(Ljava/util/concurrent/CompletableFuture;Landroid/telephony/ims/aidl/ISipDelegate;Ljava/util/Set;)V
    .locals 1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$destroy$2(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy, operation complete, notifying trackers, reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/SipDelegateController;->logi(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mDelegateStateTracker:Lcom/android/services/telephony/rcs/DelegateStateTracker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->sipDelegateDestroyed(I)V

    return-object p1
.end method

.method private synthetic lambda$destroySipDelegate$3(ILjava/lang/Boolean;)Ljava/util/concurrent/CompletionStage;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroySipDelegate, transport gracefully closed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/services/telephony/rcs/SipDelegateController;->logi(Ljava/lang/String;)V

    new-instance p2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mBinderConnection:Lcom/android/services/telephony/rcs/DelegateBinderStateManager;

    new-instance v0, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p0, p1, v0}, Lcom/android/services/telephony/rcs/DelegateBinderStateManager;->destroy(ILjava/util/function/Consumer;)V

    return-object p2
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipDelegateC["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[I] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipDelegateC["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportC"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[W] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeSupportedFeatureTags(Ljava/util/Set;Ljava/util/Set;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received feature tag set change, old: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mTrackedFeatureTags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",denied: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/SipDelegateController;->logi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mTrackedFeatureTags:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "changeSupportedFeatureTags: no change, returning"

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipDelegateController;->logi(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mTrackedFeatureTags:Ljava/util/Set;

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/4 v4, 0x5

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/rcs/SipDelegateController;->destroySipDelegate(ZIIII)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/services/telephony/rcs/SipDelegateController;Ljava/util/Set;Ljava/util/Set;)V

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public create(Ljava/util/Set;Ljava/util/Set;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create, supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", denied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/SipDelegateController;->logi(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mTrackedFeatureTags:Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/rcs/SipDelegateController;->createBinderConnection(Ljava/util/Set;Ljava/util/Set;)Lcom/android/services/telephony/rcs/DelegateBinderStateManager;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/services/telephony/rcs/SipDelegateController;->createSipDelegate(Lcom/android/services/telephony/rcs/DelegateBinderStateManager;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda4;-><init>(Lcom/android/services/telephony/rcs/SipDelegateController;Lcom/android/services/telephony/rcs/DelegateBinderStateManager;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public destroy(ZI)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy, forced "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", destroyReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/SipDelegateController;->logi(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {p2}, Lcom/android/services/telephony/rcs/SipDelegateController;->getMessageFailReasonFromDestroyReason(I)I

    move-result v4

    const/4 v5, 0x6

    move-object v1, p0

    move v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/services/telephony/rcs/SipDelegateController;->destroySipDelegate(ZIIII)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance p2, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/services/telephony/rcs/SipDelegateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/services/telephony/rcs/SipDelegateController;)V

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1, p2, p0}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipDelegateController["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mSubId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p1, "Most recent logs:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    iget-object p1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    const-string p1, "DelegateStateTracker:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    iget-object p1, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mDelegateStateTracker:Lcom/android/services/telephony/rcs/DelegateStateTracker;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    const-string p1, "MessageStateTracker:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mMessageTransportWrapper:Lcom/android/services/telephony/rcs/MessageTransportWrapper;

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public getAppMessageCallback()Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mMessageTransportWrapper:Lcom/android/services/telephony/rcs/MessageTransportWrapper;

    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->getAppMessageCallback()Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    move-result-object p0

    return-object p0
.end method

.method public getInitialRequest()Landroid/telephony/ims/DelegateRequest;
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mInitialRequest:Landroid/telephony/ims/DelegateRequest;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSipDelegateInterface()Landroid/telephony/ims/aidl/ISipDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mMessageTransportWrapper:Lcom/android/services/telephony/rcs/MessageTransportWrapper;

    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->getDelegateConnection()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object p0

    return-object p0
.end method

.method public setSipDialogsListener(Lcom/android/services/telephony/rcs/SipDialogsStateListener;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mMessageTransportWrapper:Lcom/android/services/telephony/rcs/MessageTransportWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->setSipDialogsListener(Lcom/android/services/telephony/rcs/SipDialogsStateListener;Z)V

    return-void
.end method

.method public triggerFullNetworkRegistration(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerFullNetworkRegistration, code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/SipDelegateController;->logi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipDelegateController;->mBinderConnection:Lcom/android/services/telephony/rcs/DelegateBinderStateManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/services/telephony/rcs/DelegateBinderStateManager;->triggerFullNetworkRegistration(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "triggerFullNetworkRegistration called when binder connection is null"

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipDelegateController;->logw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
