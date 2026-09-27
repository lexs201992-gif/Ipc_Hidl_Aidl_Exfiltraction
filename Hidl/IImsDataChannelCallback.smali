.class public interface abstract Lcom/cmcc/newcalllib/datachannel/IImsDataChannelCallback;
.super Ljava/lang/Object;
.source "IImsDataChannelCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/newcalllib/datachannel/IImsDataChannelCallback$Stub;,
        Lcom/cmcc/newcalllib/datachannel/IImsDataChannelCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cmcc.newcalllib.datachannel.IImsDataChannelCallback"


# virtual methods
.method public abstract onApplicationDataChannelResponse(Lcom/cmcc/newcalllib/datachannel/IImsDataChannel;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBoostrapDataChannelResponse(Lcom/cmcc/newcalllib/datachannel/IImsDataChannel;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onImsDataChannelSetupRequest([Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
