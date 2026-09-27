.class public Lcom/spreadtrum/ims/ImsServiceCallTracker;
.super Ljava/lang/Object;
.source "ImsServiceCallTracker.java"

# interfaces
.implements Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;,
        Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;
    }
.end annotation


# static fields
.field private static final DBG_POLL:Z = false

.field private static final EVENT_CALL_STATE_CHANGE:I = 0x1

.field private static final EVENT_GET_CURRENT_CALLS:I = 0x2

.field private static final EVENT_GET_CURRENT_CALLS_DELAY:I = 0x8

.field private static final EVENT_IMS_CALL_STATE_CHANGED:I = 0x5

.field private static final EVENT_OPERATION_COMPLETE:I = 0x3

.field private static final EVENT_POLL_CALLS_RESULT:I = 0x4

.field private static final EVENT_POLL_CURRENT_CALLS:I = 0x6

.field private static final EVENT_POLL_CURRENT_CALLS_RESULT:I = 0x7

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x9

.field private static final POLL_DELAY_MSEC:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

.field private mConferenceStateChange:Z

.field private mContext:Landroid/content/Context;

.field private mCurRatType:Ljava/lang/String;

.field private mCurrentUserId:I

.field private mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

.field private mHasSendTone:Z

.field private mImsCsfbVendorCause:Ljava/lang/String;

.field private mImsDcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;"
        }
    .end annotation
.end field

.field private mImsService:Lcom/spreadtrum/ims/ImsService;

.field private mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

.field private mInCreateCallSession:Z

.field private mIncomingCallIntent:Landroid/app/PendingIntent;

.field protected mLastRelevantPoll:Landroid/os/Message;

.field private mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

.field protected mNeedsPoll:Z

.field protected mPendingOperations:I

.field private mPendingSessionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/spreadtrum/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field public mServiceId:I

.field private mSessionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateLock:Ljava/lang/Object;

.field private mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/spreadtrum/ims/ImsServiceCallTracker;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurrentUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsCsfbVendorCause(Lcom/spreadtrum/ims/ImsServiceCallTracker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsCsfbVendorCause:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/spreadtrum/ims/ImsServiceCallTracker;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurrentUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImsCsfbVendorCause(Lcom/spreadtrum/ims/ImsServiceCallTracker;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsCsfbVendorCause:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePollCallsResult(Lcom/spreadtrum/ims/ImsServiceCallTracker;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->handlePollCallsResult(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmessageToString(Lcom/spreadtrum/ims/ImsServiceCallTracker;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->messageToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpollCurrentCallsWhenSafe(Lcom/spreadtrum/ims/ImsServiceCallTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->pollCurrentCallsWhenSafe()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentCalls(Lcom/spreadtrum/ims/ImsServiceCallTracker;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->updateCurrentCalls(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/app/PendingIntent;ILcom/spreadtrum/ims/ImsServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mUpdateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mInCreateCallSession:Z

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceStateChange:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurrentUserId:I

    new-instance v1, Lcom/spreadtrum/ims/ImsServiceCallTracker$1;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker$1;-><init>(Lcom/spreadtrum/ims/ImsServiceCallTracker;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsCsfbVendorCause:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurRatType:Ljava/lang/String;

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iput-object p4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    iput p5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mServiceId:I

    iput-object p6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iput-object p7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mWifiService:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    new-instance v0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;-><init>(Lcom/spreadtrum/ims/ImsServiceCallTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v3, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForImsCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private addSessionToList(Ljava/lang/Integer;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p2}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->notifySessionConnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private checkNoOperationsPending()Z
    .locals 3

    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->CALL_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNoOperationsPending: pendingOperations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 8

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->removeMessages(I)V

    const-string v0, "CallRadioTech"

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurRatType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/spreadtrum/ims/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V

    invoke-virtual {v0, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->addListener(Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;)V

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isUssdCall()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->setInCreateCallSession(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    const-string v1, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_1
    :goto_0
    return-object v0
.end method

.method private createConSession(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 14

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getVideoCallSession()Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    nop

    new-instance v5, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v5, v4, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    const-string v6, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {v5, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurRatType:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "CallRadioTech"

    invoke-virtual {v5, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v7, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    move-object v6, v13

    move-object v8, v5

    move-object v12, p0

    invoke-direct/range {v6 .. v12}, Lcom/spreadtrum/ims/ImsCallSessionImpl;-><init>(Lcom/spreadtrum/ims/ImsDriverCall;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V

    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->createConferenceState()V

    invoke-virtual {v6, v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateState(I)V

    iget-object v7, v6, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v7, v7, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v8, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v8, v8, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v8, v8, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    iput v8, v7, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    iget-object v7, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_3
    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget-object v8, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v8, v8, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    iget-object v9, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/spreadtrum/ims/ImsDriverCall;

    iget v9, v9, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v8, v8, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v9, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v8, v9, :cond_3

    move v8, v2

    goto :goto_4

    :cond_3
    move v8, v1

    :goto_4
    invoke-virtual {v6, v8}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateConfHeldState(Z)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createConSession: newConfSession: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method private getImsCallList(Landroid/os/AsyncResult;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncResult;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->isImsRadioVersion2_0()Z

    move-result v2

    const-string v3, "getImsCallList VoicePrivacy is enabled"

    const-string v4, "getImsCallList VoicePrivacy is disabled"

    const-string v5, "getImsCallList responseCallListEx: dc="

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    if-eqz v2, :cond_e

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    array-length v12, v2

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_0
    array-length v10, v2

    if-ge v15, v10, :cond_0

    aget-object v10, v2, v15

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_d

    new-instance v15, Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-direct {v15}, Lcom/spreadtrum/ims/ImsDriverCall;-><init>()V

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v8, v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->index:I

    iput v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget-byte v8, v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->isMT:B

    if-eqz v8, :cond_1

    move v8, v11

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    iput-boolean v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v8, v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->negStatusPresent:I

    iput v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v8, v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->negStatus:I

    iput v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget-object v8, v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->mediaDescription:Ljava/lang/String;

    iput-object v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v8, v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->csMode:I

    iput v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v8, v8, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->state:I

    invoke-static {v8}, Lcom/spreadtrum/ims/ImsDriverCall;->stateFromCLCCS(I)Lcom/spreadtrum/ims/ImsDriverCall$State;

    move-result-object v8

    iput-object v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    iget-object v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const-string v6, "m=video"

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v11

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_8

    iget v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v8, v11, :cond_3

    iget v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-eq v8, v11, :cond_7

    :cond_3
    iget v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v8, v11, :cond_4

    iget v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-ne v8, v9, :cond_4

    iget-object v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v9, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v8, v9, :cond_7

    :cond_4
    iget v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v8, v11, :cond_5

    iget v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-eq v8, v7, :cond_7

    :cond_5
    iget v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v8, v11, :cond_6

    iget v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_7

    :cond_6
    iget v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-nez v8, :cond_8

    iget v8, v15, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    if-nez v8, :cond_8

    :cond_7
    move v8, v11

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_9

    iget v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    const/4 v7, 0x2

    if-eq v9, v7, :cond_9

    iget v7, v15, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    const/4 v9, 0x7

    if-ge v7, v9, :cond_9

    move v7, v11

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    iput-boolean v7, v15, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v7, v7, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->mpty:I

    iput v7, v15, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    if-eqz v7, :cond_a

    move v9, v11

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    :goto_6
    iput-boolean v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v9, v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->numberType:I

    iput v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->numberType:I

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v9, v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->toa:I

    iput v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->TOA:I

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget-object v9, v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->number:Ljava/lang/String;

    iput-object v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v9, v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->prioritypresent:I

    iput v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->prioritypresent:I

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v9, v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->priority:I

    iput v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->priority:I

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v9, v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->cliValidityPresent:I

    iput v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->cliValidityPresent:I

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v9, v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->numberPresentation:I

    invoke-static {v9}, Lcom/spreadtrum/ims/ImsDriverCall;->presentationFromCLIP(I)I

    move-result v9

    iput v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->numberPresentation:I

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v9, v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->als:I

    iput v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->als:I

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget-byte v9, v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->isVoicePrivacy:B

    if-ne v9, v11, :cond_b

    move v9, v11

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    :goto_7
    iput-boolean v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget-object v9, v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->name:Ljava/lang/String;

    iput-object v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;

    iget v9, v9, Lvendor/unisoc/hardware/radio/ims/CallVoLTE;->namePresentation:I

    invoke-static {v9}, Lcom/spreadtrum/ims/ImsDriverCall;->presentationFromCLIP(I)I

    move-result v9

    iput v9, v15, Lcom/spreadtrum/ims/ImsDriverCall;->namePresentation:I

    sget-object v9, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v15}, Lcom/spreadtrum/ims/ImsDriverCall;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v15, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    if-eqz v1, :cond_c

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_c
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_d
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v13

    :cond_e
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v2, :cond_20

    new-instance v8, Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-direct {v8}, Lcom/spreadtrum/ims/ImsDriverCall;-><init>()V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v9, v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    iput v9, v8, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget-byte v9, v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    goto :goto_a

    :cond_f
    const/4 v9, 0x0

    :goto_a
    iput-boolean v9, v8, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v9, v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    iput v9, v8, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v9, v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    iput v9, v8, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget-object v9, v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    iput-object v9, v8, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v9, v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    iput v9, v8, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v9, v9, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    invoke-static {v9}, Lcom/spreadtrum/ims/ImsDriverCall;->stateFromCLCCS(I)Lcom/spreadtrum/ims/ImsDriverCall$State;

    move-result-object v9

    iput-object v9, v8, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    iget-object v9, v8, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    if-eqz v9, :cond_10

    iget-object v9, v8, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const-string v10, "video"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v8, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const-string v10, "cap:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    const/4 v9, 0x1

    goto :goto_b

    :cond_10
    const/4 v9, 0x0

    :goto_b
    if-eqz v9, :cond_18

    iget v10, v8, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    iget v10, v8, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-eq v10, v11, :cond_11

    goto :goto_c

    :cond_11
    const/4 v11, 0x3

    :cond_12
    const/4 v12, 0x4

    goto :goto_f

    :cond_13
    :goto_c
    iget v10, v8, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-ne v10, v11, :cond_14

    iget v10, v8, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_14

    iget-object v10, v8, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v11, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v10, v11, :cond_11

    :cond_14
    iget v10, v8, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    iget v10, v8, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_12

    goto :goto_d

    :cond_15
    const/4 v11, 0x3

    :goto_d
    iget v10, v8, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_16

    iget v10, v8, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    const/4 v12, 0x4

    if-eq v10, v12, :cond_17

    goto :goto_e

    :cond_16
    const/4 v12, 0x4

    :goto_e
    iget v10, v8, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-nez v10, :cond_19

    iget v10, v8, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    if-nez v10, :cond_19

    :cond_17
    :goto_f
    const/4 v10, 0x1

    goto :goto_10

    :cond_18
    const/4 v11, 0x3

    const/4 v12, 0x4

    :cond_19
    const/4 v10, 0x0

    :goto_10
    if-nez v10, :cond_1a

    iget v13, v8, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1b

    iget v13, v8, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    const/4 v15, 0x7

    if-ge v13, v15, :cond_1c

    const/4 v13, 0x1

    goto :goto_11

    :cond_1a
    const/4 v14, 0x2

    :cond_1b
    const/4 v15, 0x7

    :cond_1c
    const/4 v13, 0x0

    :goto_11
    iput-boolean v13, v8, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v13, v13, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    iput v13, v8, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    if-eqz v13, :cond_1d

    const/4 v11, 0x1

    goto :goto_12

    :cond_1d
    const/4 v11, 0x0

    :goto_12
    iput-boolean v11, v8, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v11, v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    iput v11, v8, Lcom/spreadtrum/ims/ImsDriverCall;->numberType:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v11, v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    iput v11, v8, Lcom/spreadtrum/ims/ImsDriverCall;->TOA:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget-object v11, v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    iput-object v11, v8, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v11, v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    iput v11, v8, Lcom/spreadtrum/ims/ImsDriverCall;->prioritypresent:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v11, v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    iput v11, v8, Lcom/spreadtrum/ims/ImsDriverCall;->priority:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v11, v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    iput v11, v8, Lcom/spreadtrum/ims/ImsDriverCall;->cliValidityPresent:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v11, v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    invoke-static {v11}, Lcom/spreadtrum/ims/ImsDriverCall;->presentationFromCLIP(I)I

    move-result v11

    iput v11, v8, Lcom/spreadtrum/ims/ImsDriverCall;->numberPresentation:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v11, v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    iput v11, v8, Lcom/spreadtrum/ims/ImsDriverCall;->als:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget-byte v11, v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1e

    move v11, v12

    goto :goto_13

    :cond_1e
    const/4 v11, 0x0

    :goto_13
    iput-boolean v11, v8, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget-object v11, v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    iput-object v11, v8, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v11, v11, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    invoke-static {v11}, Lcom/spreadtrum/ims/ImsDriverCall;->presentationFromCLIP(I)I

    move-result v11

    iput v11, v8, Lcom/spreadtrum/ims/ImsDriverCall;->namePresentation:I

    sget-object v11, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/spreadtrum/ims/ImsDriverCall;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v12, v8, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    if-eqz v12, :cond_1f

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_1f
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    :cond_20
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v6
.end method

.method private getOneValidConfMember(Ljava/util/Map;)Lcom/spreadtrum/ims/ImsDriverCall;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;)",
            "Lcom/spreadtrum/ims/ImsDriverCall;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsDriverCall;

    sget-object v3, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOneValidConfMember-> imsDc.index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVideoCallSession()Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 6

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getImsCallList(Landroid/os/AsyncResult;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    move-object v12, v0

    goto :goto_0

    :cond_0
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v8, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    :goto_0
    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v14, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_1
    if-eqz v12, :cond_21

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_21

    const/4 v4, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/spreadtrum/ims/ImsDriverCall;

    iget v5, v7, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    if-eqz v5, :cond_7

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v5, "handlePollCalls the ImsDriverCall is cs call"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v5

    const/4 v0, 0x0

    :goto_2
    :try_start_0
    iget-object v6, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    iget-object v6, v7, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v15, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eq v6, v15, :cond_2

    :try_start_1
    iget-object v6, v7, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v15, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v6, v15, :cond_2

    iget-boolean v6, v7, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    if-nez v6, :cond_1

    iget-object v6, v7, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v15, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, v15, :cond_1

    goto :goto_3

    :cond_1
    move/from16 v16, v1

    move/from16 v17, v3

    goto :goto_4

    :catchall_0
    move-exception v0

    move/from16 v16, v1

    move/from16 v17, v3

    goto :goto_6

    :cond_2
    :goto_3
    :try_start_2
    iget-object v6, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getIsPendingTerminate()Z

    move-result v15

    if-eqz v15, :cond_3

    sget-object v15, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v16, v1

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v17, v3

    :try_start_4
    const-string v3, "handlePollCalls disconnect isPendingTerminate Session, pendingCallSession:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v7, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    const/16 v3, 0x1f5

    invoke-virtual {v6, v3, v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->terminatePendingCall(II)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move/from16 v17, v3

    goto :goto_6

    :cond_3
    move/from16 v16, v1

    move/from16 v17, v3

    goto :goto_4

    :cond_4
    move/from16 v16, v1

    move/from16 v17, v3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v16

    move/from16 v3, v17

    goto :goto_2

    :cond_5
    move/from16 v16, v1

    move/from16 v17, v3

    :goto_5
    iget-boolean v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->setLocalTone(I)V

    :cond_6
    monitor-exit v5

    move/from16 v1, v16

    move/from16 v3, v17

    goto/16 :goto_17

    :catchall_2
    move-exception v0

    move/from16 v16, v1

    move/from16 v17, v3

    :goto_6
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_7
    move/from16 v16, v1

    move/from16 v17, v3

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v1

    const/4 v3, -0x1

    const/4 v5, 0x0

    :goto_7
    :try_start_5
    iget-object v6, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    const/4 v15, -0x1

    if-ge v5, v6, :cond_10

    :try_start_6
    iget-object v6, v7, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    if-eq v6, v0, :cond_a

    :try_start_7
    iget-object v0, v7, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v6, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v6, :cond_a

    iget-boolean v0, v7, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    if-nez v0, :cond_9

    iget-object v0, v7, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v6, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v0, v6, :cond_9

    invoke-direct {v8, v7}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isConferenceMember(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v19, v3

    move-object/from16 v20, v4

    goto/16 :goto_d

    :cond_9
    move/from16 v19, v3

    move-object/from16 v20, v4

    goto/16 :goto_d

    :catchall_4
    move-exception v0

    move-object v9, v7

    move/from16 v3, v17

    goto/16 :goto_18

    :cond_a
    :goto_8
    :try_start_8
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getState()I

    move-result v0

    if-eq v0, v15, :cond_f

    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v0

    iget-boolean v15, v7, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    if-eq v0, v15, :cond_b

    move/from16 v19, v3

    move-object/from16 v20, v4

    goto/16 :goto_c

    :cond_b
    iget-object v15, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    :try_start_9
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move/from16 v19, v3

    :try_start_a
    iget v3, v7, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    sget-object v3, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v20, v4

    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePollCalls PendingSession found, index:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, v7, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " session:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " removeSession:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isConferenceHost()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v2, 0x1

    const-string v4, "handlePollCalls removeSession is conference member,not disconnect callsession"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_c
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    invoke-direct {v8, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->notifySessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    :goto_9
    iget-object v4, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget v9, v7, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    iget v0, v7, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v8, v0, v6}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->addSessionToList(Ljava/lang/Integer;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-object v4, v6

    :try_start_d
    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isConferenceHost()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "handlePollCalls mConferenceSession found"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v6, v7}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->initConferenceDc(Lcom/spreadtrum/ims/ImsDriverCall;)V

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    sget-object v3, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {v0, v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->setMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0, v7}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateImsConfrenceMember(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const/4 v3, 0x1

    goto :goto_a

    :cond_e
    move/from16 v0, v16

    move/from16 v3, v17

    :goto_a
    move v9, v5

    move/from16 v16, v0

    move/from16 v17, v3

    move v3, v9

    move v9, v2

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object/from16 v20, v4

    goto :goto_b

    :catchall_6
    move-exception v0

    move/from16 v19, v3

    move-object/from16 v20, v4

    :goto_b
    :try_start_e
    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    throw v0

    :catchall_7
    move-exception v0

    goto :goto_b

    :cond_f
    move/from16 v19, v3

    move-object/from16 v20, v4

    :goto_c
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v3, "handlePollCalls PendingSession found session is INVALID remove"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    nop

    :goto_d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, p1

    move/from16 v3, v19

    move-object/from16 v4, v20

    goto/16 :goto_7

    :catchall_8
    move-exception v0

    move-object v9, v7

    move/from16 v3, v17

    move-object/from16 v4, v20

    goto/16 :goto_18

    :catchall_9
    move-exception v0

    move-object/from16 v20, v4

    move-object v9, v7

    move/from16 v3, v17

    goto/16 :goto_18

    :cond_10
    move/from16 v19, v3

    move-object/from16 v20, v4

    move v9, v2

    :goto_e
    const/4 v0, -0x1

    if-eq v3, v0, :cond_11

    :try_start_10
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePollCalls PendingSession remove, index:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v7, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    goto :goto_f

    :catchall_a
    move-exception v0

    move v2, v9

    move/from16 v3, v17

    move-object v9, v7

    goto/16 :goto_18

    :cond_11
    :goto_f
    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    if-nez v4, :cond_13

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v1

    :try_start_12
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget v2, v7, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-object v4, v0

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePollCalls Find existing Session, index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callSession is null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v4, :cond_12

    const/4 v3, 0x1

    goto :goto_10

    :cond_12
    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    move-object v15, v4

    goto :goto_11

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    throw v0

    :cond_13
    move-object v15, v4

    :goto_11
    if-eqz v15, :cond_16

    iget v0, v7, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_14

    iget v0, v7, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_14
    invoke-virtual {v15}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_UNKNOWN:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-eq v0, v1, :cond_15

    invoke-virtual {v15}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-ne v0, v1, :cond_19

    :cond_15
    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v1

    :try_start_13
    invoke-virtual {v15, v7}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateFromDc(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    monitor-exit v1

    goto :goto_13

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    throw v0

    :cond_16
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePollCalls unknown session->imsDc.isMpty:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v7, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConferenceSession is null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_12

    :cond_17
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v7, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    iget-object v1, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v7}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->inSameConference(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz v17, :cond_1a

    :cond_18
    const-string v1, "handlePollCalls mConferenceSession member found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v7, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    :goto_13
    move/from16 v20, v9

    move-object v9, v7

    goto/16 :goto_15

    :cond_1a
    const/16 v18, 0x0

    iget-object v1, v7, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v1, v2, :cond_1b

    move/from16 v20, v9

    goto/16 :goto_16

    :cond_1b
    const/4 v1, 0x0

    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    move-object v6, v2

    const-string v1, "CallRadioTech"

    iget-object v2, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurRatType:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    iget-object v3, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    move-object/from16 v1, v19

    move-object v2, v7

    move-object/from16 v20, v3

    move-object v3, v6

    move-object/from16 v21, v6

    move-object/from16 v6, v20

    move/from16 v20, v9

    move-object v9, v7

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/spreadtrum/ims/ImsCallSessionImpl;-><init>(Lcom/spreadtrum/ims/ImsDriverCall;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Landroid/content/Context;Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsServiceCallTracker;)V

    move-object/from16 v15, v19

    invoke-virtual {v15, v8}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->addListener(Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;)V

    iget v1, v9, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v8, v1, v15}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->addSessionToList(Ljava/lang/Integer;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    iget-boolean v1, v9, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    if-eqz v1, :cond_1c

    const-string v1, "handlePollCalls this is a MT Call."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    iget v1, v9, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->sendIncomingCallIntent(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;ZZ)V

    goto :goto_14

    :cond_1c
    iget-boolean v1, v9, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    if-eqz v1, :cond_1d

    const-string v1, "handlePollCalls this is a invalid conference session!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto :goto_14

    :cond_1d
    iget-object v1, v9, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v1, v2, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePollCalls unknown ims session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    :cond_1e
    :goto_14
    if-eqz v18, :cond_1f

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    iget v1, v9, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v15, v1, v2, v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->sendIncomingCallIntent(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;ZZ)V

    :cond_1f
    :goto_15
    iget-object v0, v9, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_20

    iget v0, v9, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    :goto_16
    move/from16 v1, v16

    move/from16 v3, v17

    move/from16 v2, v20

    :goto_17
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p1

    goto/16 :goto_1

    :catchall_d
    move-exception v0

    move/from16 v20, v9

    move-object v9, v7

    move/from16 v3, v17

    move/from16 v2, v20

    goto :goto_18

    :catchall_e
    move-exception v0

    move-object/from16 v20, v4

    move-object v9, v7

    move/from16 v3, v17

    :goto_18
    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    throw v0

    :catchall_f
    move-exception v0

    goto :goto_18

    :cond_21
    move/from16 v16, v1

    move/from16 v17, v3

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_28

    invoke-virtual {v8, v11}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->updateImsConferenceMember(Ljava/util/Map;)Z

    move-result v1

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v0

    sget-object v3, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_COMPLETED:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-ne v0, v3, :cond_22

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v8, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->onCallMergeComplete(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    :cond_22
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollCalls->conferenceDc:  mConferenceSession.mImsDriverCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v4, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v4

    if-nez v3, :cond_24

    :try_start_15
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-boolean v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    if-eqz v0, :cond_23

    if-nez v2, :cond_23

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget-object v5, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v5, v5, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    invoke-direct {v8, v11}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getOneValidConfMember(Ljava/util/Map;)Lcom/spreadtrum/ims/ImsDriverCall;

    move-result-object v0

    move-object v3, v0

    :cond_24
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0, v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateFromDc(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v0

    if-nez v0, :cond_26

    if-eqz v1, :cond_25

    goto :goto_19

    :cond_25
    const/4 v0, 0x0

    goto :goto_1a

    :cond_26
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    move v1, v0

    goto :goto_1b

    :catchall_10
    move-exception v0

    :try_start_16
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    throw v0

    :cond_27
    :goto_1b
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0, v11}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->removeInvalidSessionFromConference(Ljava/util/Map;)V

    goto :goto_1c

    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceStateChange:Z

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v1, "handlePollCalls->mConferenceSession is null,set mConferenceStateChange is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v1, v16

    :goto_1c
    invoke-direct {v8, v10, v11}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->removeInvalidSessionFromList(Ljava/util/Map;Ljava/util/Map;)V

    if-eqz v1, :cond_29

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_29

    const/4 v3, 0x1

    iput-boolean v3, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceStateChange:Z

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifyConferenceStateChange()V

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollCalls->isConferenceStateChange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    if-nez v1, :cond_2a

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_2a

    iget-boolean v3, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceStateChange:Z

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    iput-boolean v3, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceStateChange:Z

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifyConferenceStateChange()V

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollCalls->mConferenceStateChange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceStateChange:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object v3, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v3

    :try_start_17
    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->onImsCallEnd()V

    iget-boolean v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->setLocalTone(I)V

    goto :goto_1d

    :cond_2b
    iget-boolean v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    if-nez v0, :cond_2c

    iget-object v0, v8, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2c

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->setLocalTone(I)V

    :cond_2c
    :goto_1d
    monitor-exit v3

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    throw v0

    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->pollCallsAfterDelay()V

    return-void
.end method

.method private handlePollCallsResult(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v1, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mInCreateCallSession:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isAllCallsHolding()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "don\'t execute handlePollCalls during create call session"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isConferenceMember(Lcom/spreadtrum/ims/ImsDriverCall;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->inSameConference(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v0

    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConferenceMember->isSame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private messageToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "EVENT_RADIO_NOT_AVAILABLE"

    return-object v0

    :pswitch_1
    const-string v0, "EVENT_GET_CURRENT_CALLS_DELAY"

    return-object v0

    :pswitch_2
    const-string v0, "EVENT_POLL_CURRENT_CALLS_RESULT"

    return-object v0

    :pswitch_3
    const-string v0, "EVENT_POLL_CURRENT_CALLS"

    return-object v0

    :pswitch_4
    const-string v0, "EVENT_IMS_CALL_STATE_CHANGED"

    return-object v0

    :pswitch_5
    const-string v0, "EVENT_POLL_CALLS_RESULT"

    return-object v0

    :pswitch_6
    const-string v0, "EVENT_OPERATION_COMPLETE"

    return-object v0

    :pswitch_7
    const-string v0, "EVENT_GET_CURRENT_CALLS"

    return-object v0

    :pswitch_8
    const-string v0, "EVENT_CALL_STATE_CHANGE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifySessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 5

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;

    sget-object v2, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifySessionDisonnected -> listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;->onSessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->countPendingOperations()V

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private pollCallsAfterDelay()V
    .locals 4

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v1, "pollCallsAfterDelay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private pollCurrentCallsWhenSafe()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->checkNoOperationsPending()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsCurrentCalls(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private removeDisconncetedSessionFromList(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 6

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    sget-object v3, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeDisconncetedSessionFromList disconncetedSession:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-ne v4, p1, :cond_0

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    const-string v4, "removeDisconncetedSessionFromList->clear conference call."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->notifySessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeInvalidSessionFromList(Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->removePendingSessionList()V

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    if-eqz p2, :cond_3

    nop

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget v5, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eq v4, v5, :cond_0

    invoke-virtual {v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->disconnectForConferenceMember()V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v1

    sget-object v2, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_COMPLETED:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getMergeState()Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    move-result-object v1

    sget-object v2, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v1, v1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-direct {p0, v1, v2}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->addSessionToList(Ljava/lang/Integer;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeInvalidSessionFromList: mConferenceSession:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v3, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v5, :cond_6

    if-ne v5, v4, :cond_6

    invoke-virtual {v5}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isConferenceAlive()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeInvalidSessionFromList->conference call does not disconnected.host is disconnected id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v7}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    goto :goto_1

    :cond_5
    sget-object v5, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeInvalidSessionFromList->clear conference call."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    sget-object v5, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeInvalidSessionFromList: session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    invoke-direct {p0, v4}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->notifySessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    :cond_7
    goto/16 :goto_1

    :cond_8
    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v3, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    if-eqz p2, :cond_a

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget v3, v3, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getOneConferenceMember()I

    move-result v3

    sget-object v4, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeInvalidSessionFromList->change mConferenceSession linked to new DriverCall. id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", old one is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v3, v2, :cond_a

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spreadtrum/ims/ImsDriverCall;

    iput-object v5, v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateConferenceDriverCallChange(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeInvalidSessionFromList->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removePendingSessionList()V
    .locals 7

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mInCreateCallSession:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isAllCallsHolding()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    sget-object v4, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removePendingSessionList remove Invalid Pending Session, index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " session:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    const-string v5, "removePendingSessionList: skip notifySessionDisconnected when creating callsession."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->notifySessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    :cond_2
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private setLocalTone(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHasSendTone:Z

    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->setLocalTone(ILandroid/os/Message;)V

    return-void

    :cond_1
    return-void
.end method

.method private updateCurrentCalls(Landroid/os/AsyncResult;)V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getImsCallList(Landroid/os/AsyncResult;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    const/4 v3, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget v7, v4, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-object v3, v6

    if-eqz v3, :cond_1

    sget-object v6, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCurrentCalls find existing Session, index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v6, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v6

    if-nez v3, :cond_5

    const/4 v5, -0x1

    const/4 v7, 0x0

    :goto_2
    :try_start_1
    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v9, v4, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v10, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v9, v10, :cond_3

    iget-object v9, v4, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v10, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v9, v10, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    sget-object v9, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCurrentCalls pendingSession found, index:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " session:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v4, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v9, v8}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->addSessionToList(Ljava/lang/Integer;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    move-object v3, v8

    move v5, v7

    nop

    :cond_4
    const/4 v7, -0x1

    if-eq v5, v7, :cond_5

    sget-object v7, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateCurrentCalls pendingSession remove, index:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v5

    :try_start_2
    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateFromDc(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    monitor-exit v5

    goto :goto_4

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_6
    :goto_4
    iget-object v5, v4, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v6, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v5, v6, :cond_7

    iget v5, v4, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    :catchall_2
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v6

    :cond_8
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->removeInvalidSessionFromList(Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :cond_9
    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentCalls error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addListener(Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v1, "addListener-> listener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v1, "addListener-> listener already add!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public countPendingOperations()V
    .locals 3

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->CALL_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countPendingOperations: pendingOperations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needsPoll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAliveVideoCallSession(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v3

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eq p1, v5, :cond_0

    invoke-virtual {v5}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eq p1, v6, :cond_6

    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v7, v7, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v7, v8, :cond_2

    move-object v0, v6

    goto :goto_3

    :cond_2
    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v7, v8, :cond_3

    move-object v1, v6

    goto :goto_3

    :cond_3
    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v7, v8, :cond_5

    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v7, v8, :cond_4

    goto :goto_2

    :cond_4
    if-nez v2, :cond_6

    sget-object v8, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v7, v8, :cond_6

    move-object v2, v6

    goto :goto_3

    :cond_5
    :goto_2
    move-object v2, v6

    :cond_6
    :goto_3
    goto :goto_1

    :cond_7
    monitor-exit v4

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    if-eqz v2, :cond_9

    return-object v2

    :cond_9
    return-object v1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public getCallSession(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-object v0, v2

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getConSession()Lcom/spreadtrum/ims/ImsCallSessionImpl;
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method public getCurrentUserId()I
    .locals 1

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurrentUserId:I

    return v0
.end method

.method public getCurrentVideoState()I
    .locals 3

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getVideoCallSession()Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v1

    return v1
.end method

.method public getService()Lcom/spreadtrum/ims/ImsService;
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsService:Lcom/spreadtrum/ims/ImsService;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mServiceId:I

    return v0
.end method

.method public getVideoCapabilityEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->hasVolteVideoCapabilities()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->hasVowifiVideoCapabilities()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasConferenceSession()Z
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRingingCall()Z
    .locals 4

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isRingingCall()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAllCallsActive()Z
    .locals 4

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isActiveCall()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAllCallsHolding()Z
    .locals 4

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isBackgroundCall()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isHasBackgroundCallAndActiveCall()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v3, v3, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v4, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    move v3, v5

    :goto_1
    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsDcList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v3, v3, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v4, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v3, v4, :cond_1

    move v5, v6

    :cond_1
    or-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    and-int v2, v0, v1

    return v2
.end method

.method public isHasInLocalConferenceSession()Z
    .locals 4

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isInLocalConference()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isActiveCall()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSessionListEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifySessionConnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;

    invoke-interface {v1, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;->onSessionConnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCallMergeComplete(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 3

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallMergeComplete mMergeHost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifyMergeComplete()V

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->setMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->updateSessionMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    return-void
.end method

.method public onCallMergeFailed(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->isConferenceAlive()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->updateSessionMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    return-void
.end method

.method public onCallMergeStart(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 3

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallMergeStart mMergeHost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mMergeHost:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->createConSession(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    sget-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_START:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->setMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_START:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->updateSessionMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    return-void
.end method

.method public onDisconnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->removeDisconncetedSessionFromList(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    return-void
.end method

.method public onUpdate(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 0

    return-void
.end method

.method public onVideoStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mImsService:Lcom/spreadtrum/ims/ImsService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsService;->onVideoStateChanged(I)V

    :cond_0
    return-void
.end method

.method public operationComplete()V
    .locals 3

    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    sget-boolean v0, Lcom/spreadtrum/ims/IMSLogController;->CALL_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operationComplete: pendingOperations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needsPoll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsCurrentCalls(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v1, "operationComplete->pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingOperations:I

    :cond_2
    :goto_0
    return-void
.end method

.method public pollCallsWhenSafe()V
    .locals 5

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->checkNoOperationsPending()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pollCallsWhenSafe: mLastRelevantPoll "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->pollCallsAfterDelay()V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {v2, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsCurrentCalls(Landroid/os/Message;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeConferenceMemberSession(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 3

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeConferenceMemberSession -> conferenceMember="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->removeDisconncetedSessionFromList(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    return-void
.end method

.method public removeListener(Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v1, "removeListener-> listener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v1, "removeListener-> listener already remove!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeMessageAfterDial()V
    .locals 2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mHandler:Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->removeMessages(I)V

    return-void
.end method

.method public setCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V
    .locals 8

    const-string v0, ""

    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker$2;->$SwitchMap$com$spreadtrum$ims$vowifi$VoWifiServiceImpl$CallRatState:[I

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v0, ""

    goto :goto_0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_0
    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallRatType->ratType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurRatType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mCurRatType:Ljava/lang/String;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v4, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    sget-object v5, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateImsCallProfile->session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateCallRatType(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setInCreateCallSession(Z)V
    .locals 3

    sget-object v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInCreateCallSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mInCreateCallSession:Z

    return-void
.end method

.method public startARCall(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getCallSession(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->startARCall()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v2, " startARCall->mImsServiceCallTracker is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public stopARCall(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getCallSession(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->stopARCall()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    const-string v2, " stopARCall->mImsServiceCallTracker is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public terminateVolteCall(I)V
    .locals 7

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->terminate(I)V

    sget-object v3, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "terminateVolteCall mPendingSessionList -> reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->terminate(I)V

    sget-object v4, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "terminateVolteCall mSessionList -> reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_1

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public updateImsConferenceMember(Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/ImsDriverCall;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getParticipantsSize()I

    move-result v3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v7, v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateImsConfrenceMember(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_1
    move v0, v5

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    iget v7, v6, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eq v5, v7, :cond_3

    sget-object v7, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateImsConfrenceMember disconnected session: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->updateState(I)V

    :cond_3
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v7, v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->inSameConference(Lcom/spreadtrum/ims/ImsDriverCall;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/spreadtrum/ims/ImsDriverCall;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    :cond_4
    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v7, v7, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iput-object v6, v7, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    sget-object v7, Lcom/spreadtrum/ims/ImsServiceCallTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateImsConfrenceMember->imsDc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mConferenceSession.mImsDriverCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v9, v9, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    goto/16 :goto_0

    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v1, :cond_7

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    iput v5, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->isVideoCall(I)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    :cond_8
    :goto_2
    return v0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public updateSessionMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V
    .locals 4

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->setMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mConferenceSession:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->setMergeState(Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
