.class public Lcom/spreadtrum/sgps/LogControlAidl;
.super Ljava/lang/Object;
.source "LogControlAidl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SGPS/LogControlAidl"


# instance fields
.field private mLogControlAidlService:Lvendor/sprd/hardware/tool/IToolControl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SGPS/LogControlAidl"

    const-string v1, "LogControlAidl!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "vendor.sprd.hardware.tool.IToolControl/default"

    invoke-static {v0}, Lcom/spreadtrum/sgps/ServiceManagerProxy;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/sprd/hardware/tool/IToolControl$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/sprd/hardware/tool/IToolControl;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/sgps/LogControlAidl;->mLogControlAidlService:Lvendor/sprd/hardware/tool/IToolControl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "SGPS/LogControlAidl"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogControlAidl send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/spreadtrum/sgps/LogControlAidl;->mLogControlAidlService:Lvendor/sprd/hardware/tool/IToolControl;

    if-nez v2, :cond_0

    const-string v2, "vendor.sprd.hardware.tool.IToolControl/default"

    invoke-static {v2}, Lcom/spreadtrum/sgps/ServiceManagerProxy;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/sprd/hardware/tool/IToolControl$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/sprd/hardware/tool/IToolControl;

    move-result-object v2

    iput-object v2, p0, Lcom/spreadtrum/sgps/LogControlAidl;->mLogControlAidlService:Lvendor/sprd/hardware/tool/IToolControl;

    :cond_0
    iget-object v2, p0, Lcom/spreadtrum/sgps/LogControlAidl;->mLogControlAidlService:Lvendor/sprd/hardware/tool/IToolControl;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLogControlAidlService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/sgps/LogControlAidl;->mLogControlAidlService:Lvendor/sprd/hardware/tool/IToolControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-interface {v2, p1, p2}, Lvendor/sprd/hardware/tool/IToolControl;->sendCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method
