.class public interface abstract Lcom/cmcc/newcalllib/datachannel/IImsDataChannelServiceController;
.super Ljava/lang/Object;
.source "IImsDataChannelServiceController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/newcalllib/datachannel/IImsDataChannelServiceController$Stub;,
        Lcom/cmcc/newcalllib/datachannel/IImsDataChannelServiceController$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cmcc.newcalllib.datachannel.IImsDataChannelServiceController"


# virtual methods
.method public abstract createImsDataChannel([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteImsDataChannel([Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setImsDataChannelCallback(Lcom/cmcc/newcalllib/datachannel/IImsDataChannelCallback;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setResponseImsDataChannelSetupRequest([Ljava/lang/String;[ZILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
