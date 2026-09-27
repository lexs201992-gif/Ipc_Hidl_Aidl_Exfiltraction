.class public Lcom/android/services/telephony/rcs/SipSessionTracker;
.super Ljava/lang/Object;
.source "SipSessionTracker.java"


# static fields
.field public static final SIP_REQUEST_DIALOG_START_METHODS:[Ljava/lang/String;


# instance fields
.field private mDelegateKey:Ljava/lang/String;

.field private final mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final mPendingAck:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

.field private mSipDialogsListener:Lcom/android/services/telephony/rcs/SipDialogsStateListener;

.field mSubId:I

.field private final mTrackedDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/services/telephony/rcs/SipDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3Y-v9-Zi-fOALUB3xQEHcl9I4ow(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$filterSipMessage$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6VIyV3gMPP_mT9GD9WTcfzOhEZY(Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$getClosedDialogs$5(Lcom/android/services/telephony/rcs/SipDialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7lDBpz3jwoHfQKJ3qM8z8_XBfOg([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$startsEarlyDialog$6([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CDTT8tq_gyAISdA0_PxhC733uTo(Landroid/telephony/ims/SipMessage;Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$getCloseDialogRunnable$9(Landroid/telephony/ims/SipMessage;Lcom/android/services/telephony/rcs/SipDialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IRoVCBAUGxEFwbjE0Xp61pyKOiE(Lcom/android/services/telephony/rcs/SipSessionTracker;Landroid/telephony/ims/SipMessage;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$getCreateDialogRunnable$8(Landroid/telephony/ims/SipMessage;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KmJQMM2YyC8UM3TiBM-ym-wgp8k(Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$getEarlyDialogs$3(Lcom/android/services/telephony/rcs/SipDialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RX-xyfRLL8BkE-8GzP7qnfjs5Js(Ljava/lang/String;Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$getDialogStateChangeRunnable$12(Ljava/lang/String;Lcom/android/services/telephony/rcs/SipDialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YmzopERUEuf4AG7NCgY_xQ_1INY(Landroid/telephony/ims/SipMessage;Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$getDialogStateChangeRunnable$11(Landroid/telephony/ims/SipMessage;Lcom/android/services/telephony/rcs/SipDialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZvErsQhXY18GFQrgXtDtwnGlZeo(Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$getConfirmedDialogs$4(Lcom/android/services/telephony/rcs/SipDialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$a0rL6cuXL32W1ckUbwnoyOLzxdQ(Landroid/telephony/ims/SipMessage;Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$getCreateDialogRunnable$7(Landroid/telephony/ims/SipMessage;Lcom/android/services/telephony/rcs/SipDialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dckrR73WpxRjAeXLWtRWx2O6CFw(Ljava/lang/String;Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$cleanupSession$1(Ljava/lang/String;Lcom/android/services/telephony/rcs/SipDialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kAb8EjoTRKShSvJ8Dk-Z6sVpGvc(Lcom/android/services/telephony/rcs/SipSessionTracker;Landroid/telephony/ims/SipMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$getCloseDialogRunnable$10(Landroid/telephony/ims/SipMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l6zVOwaB74ZnhGMvW921qC1tj0Q(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$getCallIdsAssociatedWithFeatureTag$2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uyGBizfzxMrIQzfjkcmktWa6phc(Lcom/android/services/telephony/rcs/SipSessionTracker;Landroid/telephony/ims/SipMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->lambda$getDialogStateChangeRunnable$13(Landroid/telephony/ims/SipMessage;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "invite"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/rcs/SipSessionTracker;->SIP_REQUEST_DIALOG_START_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/telephony/metrics/RcsStats;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mPendingAck:Landroid/util/ArrayMap;

    iput p1, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mSubId:I

    iput-object p2, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mDelegateKey:Ljava/lang/String;

    return-void
.end method

.method private closesDialog(Landroid/telephony/ims/SipMessage;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipRequest(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string p1, "bye"

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getCloseDialogRunnable(Landroid/telephony/ims/SipMessage;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda7;-><init>(Lcom/android/services/telephony/rcs/SipSessionTracker;Landroid/telephony/ims/SipMessage;)V

    return-object v0
.end method

.method private getCreateDialogRunnable(ILandroid/telephony/ims/SipMessage;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda9;-><init>(Lcom/android/services/telephony/rcs/SipSessionTracker;Landroid/telephony/ims/SipMessage;I)V

    return-object v0
.end method

.method private getDialogStateChangeRunnable(Landroid/telephony/ims/SipMessage;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda8;-><init>(Lcom/android/services/telephony/rcs/SipSessionTracker;Landroid/telephony/ims/SipMessage;)V

    return-object v0
.end method

.method private static synthetic lambda$cleanupSession$1(Ljava/lang/String;Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/services/telephony/rcs/SipDialog;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$filterSipMessage$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$getCallIdsAssociatedWithFeatureTag$2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getCloseDialogRunnable$10(Landroid/telephony/ims/SipMessage;)V
    .locals 5

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/SipMessage;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing dialogs associated with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v2, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/internal/telephony/metrics/RcsStats;->onSipTransportSessionClosed(ILjava/lang/String;IZ)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/rcs/SipDialog;

    invoke-virtual {v0}, Lcom/android/services/telephony/rcs/SipDialog;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logi(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->notifySipDialogState()V

    return-void
.end method

.method private static synthetic lambda$getCloseDialogRunnable$9(Landroid/telephony/ims/SipMessage;Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/services/telephony/rcs/SipDialog;->isRequestAssociatedWithDialog(Landroid/telephony/ims/SipMessage;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getClosedDialogs$5(Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/SipDialog;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getConfirmedDialogs$4(Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/SipDialog;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$getCreateDialogRunnable$7(Landroid/telephony/ims/SipMessage;Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/services/telephony/rcs/SipDialog;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getCreateDialogRunnable$8(Landroid/telephony/ims/SipMessage;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/SipMessage;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trying to create a dialog for a call ID that already exists, skip: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logi(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/services/telephony/rcs/SipDialog;->fromSipMessage(Landroid/telephony/ims/SipMessage;)Lcom/android/services/telephony/rcs/SipDialog;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v0}, Lcom/android/services/telephony/rcs/SipDialog;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->earlySipTransportSession(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Starting new SipDialog: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logi(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getDialogStateChangeRunnable$11(Landroid/telephony/ims/SipMessage;Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/services/telephony/rcs/SipDialog;->isResponseAssociatedWithDialog(Landroid/telephony/ims/SipMessage;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getDialogStateChangeRunnable$12(Ljava/lang/String;Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/services/telephony/rcs/SipDialog;->getToTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/rcs/SipDialog;->getToTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private synthetic lambda$getDialogStateChangeRunnable$13(Landroid/telephony/ims/SipMessage;)V
    .locals 4

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/SipMessage;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getHeaderSection()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getToTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/rcs/SipDialog;

    if-nez v1, :cond_1

    const-string v1, "Dialog forked"

    invoke-direct {p0, v1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logi(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/rcs/SipDialog;

    invoke-virtual {v0}, Lcom/android/services/telephony/rcs/SipDialog;->forkDialog()Lcom/android/services/telephony/rcs/SipDialog;

    move-result-object v1

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is associated with: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logi(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->updateSipDialogState(Lcom/android/services/telephony/rcs/SipDialog;Landroid/telephony/ims/SipMessage;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dialog state updated to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logi(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Dialogs are associated with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logi(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$getEarlyDialogs$3(Lcom/android/services/telephony/rcs/SipDialog;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/SipDialog;->getState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$startsEarlyDialog$6([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

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

    const-string v1, "SessionT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportC"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

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

.method private notifySipDialogState()V
    .locals 4

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mSipDialogsListener:Lcom/android/services/telephony/rcs/SipDialogsStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/rcs/SipDialog;

    new-instance v3, Landroid/telephony/ims/SipDialogState$Builder;

    invoke-virtual {v2}, Lcom/android/services/telephony/rcs/SipDialog;->getState()I

    move-result v2

    invoke-direct {v3, v2}, Landroid/telephony/ims/SipDialogState$Builder;-><init>(I)V

    invoke-virtual {v3}, Landroid/telephony/ims/SipDialogState$Builder;->build()Landroid/telephony/ims/SipDialogState;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mSipDialogsListener:Lcom/android/services/telephony/rcs/SipDialogsStateListener;

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mDelegateKey:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Lcom/android/services/telephony/rcs/SipDialogsStateListener;->reMappingSipDelegateState(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private startsEarlyDialog(Landroid/telephony/ims/SipMessage;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipRequest(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    sget-object p1, Lcom/android/services/telephony/rcs/SipSessionTracker;->SIP_REQUEST_DIALOG_START_METHODS:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda10;-><init>([Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private updateSipDialogState(Lcom/android/services/telephony/rcs/SipDialog;Landroid/telephony/ims/SipMessage;)V
    .locals 5

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not parse start line for SIP message: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logw(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getHeaderSection()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getToTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSipDialogState: message has statusCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", and to tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logi(Ljava/lang/String;)V

    const/16 v3, 0x64

    if-gt v0, v3, :cond_1

    return-void

    :cond_1
    const/16 v3, 0x12c

    if-lt v0, v3, :cond_2

    iget-object v2, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v3, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2, v0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->onSipTransportSessionClosed(ILjava/lang/String;IZ)V

    invoke-virtual {p1}, Lcom/android/services/telephony/rcs/SipDialog;->close()V

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->notifySipDialogState()V

    return-void

    :cond_2
    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSipDialogState: No to tag for message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logw(Ljava/lang/String;)V

    :cond_3
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->confirmedSipTransportSession(Ljava/lang/String;I)V

    invoke-virtual {p1, v2}, Lcom/android/services/telephony/rcs/SipDialog;->confirm(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->notifySipDialogState()V

    return-void

    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/services/telephony/rcs/SipDialog;->earlyResponse(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->notifySipDialogState()V

    return-void

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not parse status code for SIP message: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logw(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acknowledgePendingMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mPendingAck:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mPendingAck:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public cleanupSession(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup dialogs associated with call id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logi(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/rcs/SipDialog;

    iget-object v3, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v4, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mSubId:I

    invoke-virtual {v2}, Lcom/android/services/telephony/rcs/SipDialog;->getState()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    invoke-virtual {v3, v4, p1, v7, v5}, Lcom/android/internal/telephony/metrics/RcsStats;->onSipTransportSessionClosed(ILjava/lang/String;IZ)V

    invoke-virtual {v2}, Lcom/android/services/telephony/rcs/SipDialog;->close()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dialog closed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logi(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->notifySipDialogState()V

    return-void
.end method

.method public clearAllSessions()V
    .locals 5

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/rcs/SipDialog;

    iget-object v2, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v3, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mSubId:I

    invoke-virtual {v1}, Lcom/android/services/telephony/rcs/SipDialog;->getCallId()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v4}, Lcom/android/internal/telephony/metrics/RcsStats;->onSipTransportSessionClosed(ILjava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mPendingAck:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->notifySipDialogState()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "SipSessionTracker:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p1, "Early Call IDs: "

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->getEarlyDialogs()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "Confirmed Call IDs: "

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->getConfirmedDialogs()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "Closed Call IDs: "

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->getClosedDialogs()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "Tracked Dialogs:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    iget-object p1, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/rcs/SipDialog;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    const-string p1, "Local Logs"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public filterSipMessage(ILandroid/telephony/ims/SipMessage;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/services/telephony/rcs/SipSessionTracker;->startsEarlyDialog(Landroid/telephony/ims/SipMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/rcs/SipSessionTracker;->getCreateDialogRunnable(ILandroid/telephony/ims/SipMessage;)Ljava/lang/Runnable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/services/telephony/rcs/SipSessionTracker;->closesDialog(Landroid/telephony/ims/SipMessage;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/services/telephony/rcs/SipSessionTracker;->getCloseDialogRunnable(Landroid/telephony/ims/SipMessage;)Ljava/lang/Runnable;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipResponse(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/services/telephony/rcs/SipSessionTracker;->getDialogStateChangeRunnable(Landroid/telephony/ims/SipMessage;)Ljava/lang/Runnable;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mPendingAck:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mPendingAck:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding new message when there was already a pending event for branch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/services/telephony/rcs/SipSessionTracker;->logw(Ljava/lang/String;)V

    new-instance v1, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mPendingAck:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mPendingAck:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public getCallIdsAssociatedWithFeatureTag(Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/rcs/SipDialog;

    invoke-virtual {v3}, Lcom/android/services/telephony/rcs/SipDialog;->getAcceptContactFeatureTags()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/services/telephony/rcs/SipDialog;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getClosedDialogs()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/services/telephony/rcs/SipDialog;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getConfirmedDialogs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/services/telephony/rcs/SipDialog;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getEarlyDialogs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/services/telephony/rcs/SipDialog;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getTrackedDialogs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/services/telephony/rcs/SipDialog;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mTrackedDialogs:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public pendingMessageFailed(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mPendingAck:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSipDialogsListener(Lcom/android/services/telephony/rcs/SipDialogsStateListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/rcs/SipSessionTracker;->mSipDialogsListener:Lcom/android/services/telephony/rcs/SipDialogsStateListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->notifySipDialogState()V

    :cond_1
    return-void
.end method
