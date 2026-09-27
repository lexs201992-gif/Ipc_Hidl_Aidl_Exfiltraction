.class public Lcom/spreadtrum/ims/sip/SipTransportImpl;
.super Landroid/telephony/ims/stub/SipTransportImplBase;
.source "SipTransportImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegateCount:I

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/sip/SipDelegateImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

.field private final mLock:Ljava/lang/Object;

.field private mPhoneId:I

.field private mServiceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/spreadtrum/ims/sip/SipTransportImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/spreadtrum/ims/ImsServiceImpl;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/ims/stub/SipTransportImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mDelegates:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mLock:Ljava/lang/Object;

    iput p1, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mPhoneId:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mServiceId:I

    iput-object p2, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mDelegateCount:I

    return-void
.end method


# virtual methods
.method public createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .locals 8

    new-instance v7, Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    move-object v0, v7

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsServiceImpl;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V

    iget v1, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mDelegateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mDelegateCount:I

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->setId(I)V

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V
    .locals 2

    instance-of v0, p1, Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    check-cast v0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    invoke-virtual {v0, p2}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->destroyDelegate(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    const-string v0, "unknown delegate passed in!"

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/sip/SipTransportImpl;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAllFeatureTags()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->getFeatureTags()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    nop

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDelegates()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/sip/SipDelegateImpl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mDelegates:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mServiceId:I

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/sip/SipTransportImpl;->mServiceId:I

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
