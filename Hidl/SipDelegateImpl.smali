.class public Lcom/spreadtrum/ims/sip/SipDelegateImpl;
.super Ljava/lang/Object;
.source "SipDelegateImpl.java"

# interfaces
.implements Landroid/telephony/ims/stub/SipDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;
    }
.end annotation


# static fields
.field private static final CALL_ID_LIST_LENGTH:I = 0xa

.field private static final EVENT_FEATURE_REGISTRATION_CHANGED:I = 0x64

.field private static final EVENT_IMS_BEARER_ESTABLISTED:I = 0x68

.field private static final EVENT_IMS_CONFIGURATION_CHANGED:I = 0x65

.field private static final EVENT_SIP_MESSAGE_RECEIVED:I = 0x67

.field private static final EVENT_SIP_MESSAGE_SENT_RESULT:I = 0x66

.field private static final TAG:Ljava/lang/String;

.field private static final VIA_BRANCH_LIST_LENGTH:I = 0xa


# instance fields
.field private mCallIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

.field private mContext:Landroid/content/Context;

.field private mDelegateId:I

.field private mDelegateRegistrationState:Landroid/telephony/ims/DelegateRegistrationState;

.field private final mDelegateRequest:Landroid/telephony/ims/DelegateRequest;

.field private mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

.field private mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

.field private mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

.field private mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

.field private mIsImsListenerRegistered:Z

.field private final mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

.field private mPhoneId:I

.field private final mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

.field private mSubId:I

.field private mViaBranchs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$monConfigurationChanged(Lcom/spreadtrum/ims/sip/SipDelegateImpl;Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monFeatureRegistrationChanged(Lcom/spreadtrum/ims/sip/SipDelegateImpl;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->onFeatureRegistrationChanged(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMessageReceived(Lcom/spreadtrum/ims/sip/SipDelegateImpl;Landroid/telephony/ims/SipMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSendSipMessageResult(Lcom/spreadtrum/ims/sip/SipDelegateImpl;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->onSendSipMessageResult(ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDelegateRegistrationState(Lcom/spreadtrum/ims/sip/SipDelegateImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->updateDelegateRegistrationState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsServiceImpl;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mCallIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mViaBranchs:Ljava/util/ArrayList;

    iput p3, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mSubId:I

    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mPhoneId:I

    iput-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    iput-object p4, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRequest:Landroid/telephony/ims/DelegateRequest;

    iput-object p5, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    iput-object p6, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-virtual {p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getImsRadioInterface()Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    new-instance v0, Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;-><init>(Lcom/spreadtrum/ims/sip/SipDelegateImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p5, p0, v0}, Landroid/telephony/ims/DelegateStateCallback;->onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->updateDelegateRegistrationState(I)V

    invoke-direct {p0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->registerForAllEvents()V

    return-void
.end method

.method private buildDelegateRegistrationState(Ljava/lang/String;ILandroid/telephony/ims/DelegateRegistrationState$Builder;)V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-gez p2, :cond_1

    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    invoke-virtual {p3, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ge p2, v1, :cond_2

    invoke-virtual {p3, p1, p2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    if-gt p2, v1, :cond_3

    invoke-virtual {p3, p1, p2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p3, v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteringFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    :cond_4
    return-void
.end method

.method private needSaveCallId(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipRequest(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "INVITE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SUBSCRIBE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method private onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 1

    iput-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/DelegateStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    return-void
.end method

.method private onFeatureRegistrationChanged(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/FeatureTagState;

    iget-object v3, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v4

    invoke-direct {p0, v3, v4, v0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->buildDelegateRegistrationState(Ljava/lang/String;ILandroid/telephony/ims/DelegateRegistrationState$Builder;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v1

    iput-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRegistrationState:Landroid/telephony/ims/DelegateRegistrationState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDelegateRegistrationStat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRegistrationState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRegistrationState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-interface {v1, v2}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    return-void
.end method

.method private onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    .locals 4

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mCallIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipRequest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    nop

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getHeaderSection()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getAcceptContactFeatureTags(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mViaBranchs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    :goto_1
    nop

    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    return-void
.end method

.method private onSendSipMessageResult(ILjava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSipMessageResult  delegateId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viaTransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failCause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-gez p3, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-interface {v0, p2}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-interface {v0, p2, p3}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private registerForAllEvents()V
    .locals 5

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    iget v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;->registerForFeatureTagRegistrationChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    iget v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;->registerForImsConfigurationChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    iget v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;->registerForSendSipMessageResult(ILandroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    iget v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;->registerForReceiveSipMessage(ILandroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private unregisterForAllEvents()V
    .locals 3

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    iget v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;->unregisterForFeatureTagRegistrationChanged(ILandroid/os/Handler;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    iget v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;->unregisterForImsConfigurationChanged(ILandroid/os/Handler;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    iget v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;->unregisterForSendSipMessageResult(ILandroid/os/Handler;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    iget v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;->unregisterForReceiveSipMessage(ILandroid/os/Handler;)V

    return-void
.end method

.method private updateDelegateRegistrationState(I)V
    .locals 3

    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p1, v0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->buildDelegateRegistrationState(Ljava/lang/String;ILandroid/telephony/ims/DelegateRegistrationState$Builder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v1

    iput-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRegistrationState:Landroid/telephony/ims/DelegateRegistrationState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDelegateRegistrationStat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRegistrationState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRegistrationState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-interface {v1, v2}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    return-void
.end method


# virtual methods
.method public cleanupSession(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupSession  callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mCallIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroyDelegate(I)V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateId:I

    invoke-direct {p0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->unregisterForAllEvents()V

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/telephony/ims/DelegateStateCallback;->onDestroyed(I)V

    return-void
.end method

.method public getFeatureTags()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyMessageReceiveError(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMessageReceiveError  viaTransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method public notifyMessageReceived(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMessageReceived  viaTransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .locals 4

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-virtual {v0}, Landroid/telephony/ims/SipDelegateConfiguration;->getVersion()J

    move-result-wide v0

    cmp-long v0, p2, v0

    const/16 v1, 0xa

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mViaBranchs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mViaBranchs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mViaBranchs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->needSaveCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mCallIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mCallIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mCallIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    iget v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mPhoneId:I

    iget v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;->sendSipMessage(IILandroid/telephony/ims/SipMessage;Landroid/os/Message;)V

    return-void
.end method

.method public setConfig(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateId:I

    return-void
.end method
