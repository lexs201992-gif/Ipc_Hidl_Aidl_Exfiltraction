.class public Lcom/spreadtrum/ims/RILRequest;
.super Ljava/lang/Object;
.source "RILRequest.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RilRequest"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sPool:Lcom/spreadtrum/ims/RILRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sRandom:Ljava/util/Random;


# instance fields
.field mClientId:Ljava/lang/String;

.field mNext:Lcom/spreadtrum/ims/RILRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mStartTimeMs:J

.field mWakeLockType:I

.field mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/RILRequest;->sRandom:Ljava/util/Random;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/spreadtrum/ims/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/RILRequest;->sPoolSync:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/spreadtrum/ims/RILRequest;->sPool:Lcom/spreadtrum/ims/RILRequest;

    sput v1, Lcom/spreadtrum/ims/RILRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$obtain$0(I)I
    .locals 2

    add-int/lit8 v0, p0, 0x1

    const v1, 0x7fffffff

    rem-int/2addr v0, v1

    return v0
.end method

.method private static obtain(ILandroid/os/Message;)Lcom/spreadtrum/ims/RILRequest;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/spreadtrum/ims/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/spreadtrum/ims/RILRequest;->sPool:Lcom/spreadtrum/ims/RILRequest;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v0, v2

    iget-object v2, v0, Lcom/spreadtrum/ims/RILRequest;->mNext:Lcom/spreadtrum/ims/RILRequest;

    sput-object v2, Lcom/spreadtrum/ims/RILRequest;->sPool:Lcom/spreadtrum/ims/RILRequest;

    iput-object v3, v0, Lcom/spreadtrum/ims/RILRequest;->mNext:Lcom/spreadtrum/ims/RILRequest;

    sget v2, Lcom/spreadtrum/ims/RILRequest;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/spreadtrum/ims/RILRequest;->sPoolSize:I

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    new-instance v1, Lcom/spreadtrum/ims/RILRequest;

    invoke-direct {v1}, Lcom/spreadtrum/ims/RILRequest;-><init>()V

    move-object v0, v1

    :cond_1
    sget-object v1, Lcom/spreadtrum/ims/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Lcom/spreadtrum/ims/RILRequest$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/spreadtrum/ims/RILRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndUpdate(Ljava/util/function/IntUnaryOperator;)I

    move-result v1

    iput v1, v0, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    iput p0, v0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    iput-object p1, v0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    const/4 v1, -0x1

    iput v1, v0, Lcom/spreadtrum/ims/RILRequest;->mWakeLockType:I

    iput-object v3, v0, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/spreadtrum/ims/RILRequest;->mStartTimeMs:J

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;
    .locals 3

    invoke-static {p0, p1}, Lcom/spreadtrum/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object v0

    if-eqz p2, :cond_0

    iput-object p2, v0, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/spreadtrum/ims/RILRequest;->mClientId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null workSource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RilRequest"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method static resetSerial()V
    .locals 3

    sget-object v0, Lcom/spreadtrum/ims/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/spreadtrum/ims/RILRequest;->sRandom:Ljava/util/Random;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method public getRequest()I
    .locals 1

    iget v0, p0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    return v0
.end method

.method public getResult()Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    return-object v0
.end method

.method public getSerial()I
    .locals 1

    iget v0, p0, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    return v0
.end method

.method public getWorkSourceClientId()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v0

    const-string v2, ":"

    const/4 v3, 0x0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method onError(ILjava/lang/Object;)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-static {v2, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RilRequest"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method release()V
    .locals 4

    sget-object v0, Lcom/spreadtrum/ims/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/spreadtrum/ims/RILRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/spreadtrum/ims/RILRequest;->sPool:Lcom/spreadtrum/ims/RILRequest;

    iput-object v2, p0, Lcom/spreadtrum/ims/RILRequest;->mNext:Lcom/spreadtrum/ims/RILRequest;

    sput-object p0, Lcom/spreadtrum/ims/RILRequest;->sPool:Lcom/spreadtrum/ims/RILRequest;

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/spreadtrum/ims/RILRequest;->sPoolSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    iget v1, p0, Lcom/spreadtrum/ims/RILRequest;->mWakeLockType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_0

    const-string v1, "RilRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RILRequest releasing with held wake lock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method serialString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    rem-int/lit16 v1, v1, 0x2710

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    rsub-int/lit8 v5, v4, 0x4

    if-ge v3, v5, :cond_0

    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
