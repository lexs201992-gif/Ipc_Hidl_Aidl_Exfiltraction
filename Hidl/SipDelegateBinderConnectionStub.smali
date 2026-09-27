.class public Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;
.super Ljava/lang/Object;
.source "SipDelegateBinderConnectionStub.java"

# interfaces
.implements Lcom/android/services/telephony/rcs/DelegateBinderStateManager;


# instance fields
.field protected final mDeniedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation
.end field

.field protected final mExecutor:Ljava/util/concurrent/Executor;

.field protected final mStateCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/services/telephony/rcs/DelegateBinderStateManager$StateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CtaZsYNio7BZvbfJK2k-Hk5tbi0(Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;->lambda$create$0(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ny7-JNdXGRoxaaP7XaDKVSwCMSg(Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;Ljava/util/function/Consumer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;->lambda$destroy$1(Ljava/util/function/Consumer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/List<",
            "Lcom/android/services/telephony/rcs/DelegateBinderStateManager$StateCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;->mDeniedTags:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;->mStateCallbacks:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$create$0(Ljava/util/function/BiConsumer;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;->mDeniedTags:Ljava/util/Set;

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;->mStateCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/services/telephony/rcs/DelegateBinderStateManager$StateCallback;

    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/services/telephony/rcs/DelegateBinderStateManager$StateCallback;->onRegistrationStateChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$destroy$1(Ljava/util/function/Consumer;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;->mStateCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create(Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;Ljava/util/function/BiConsumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/telephony/ims/aidl/ISipDelegate;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;>;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub$$ExternalSyntheticLambda1;-><init>(Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;Ljava/util/function/BiConsumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public destroy(ILjava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/services/telephony/rcs/SipDelegateBinderConnectionStub;Ljava/util/function/Consumer;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public triggerFullNetworkRegistration(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
