.class public interface abstract Lcom/cmcc/newcalllib/datachannel/IDCSendDataCallback;
.super Ljava/lang/Object;
.source "IDCSendDataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/newcalllib/datachannel/IDCSendDataCallback$Stub;,
        Lcom/cmcc/newcalllib/datachannel/IDCSendDataCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cmcc.newcalllib.datachannel.IDCSendDataCallback"


# virtual methods
.method public abstract onSendDataResult(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
