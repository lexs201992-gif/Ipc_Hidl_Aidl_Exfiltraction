.class public Landroid/net/ip/IpClientUtil;
.super Ljava/lang/Object;
.source "IpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;,
        Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;
    }
.end annotation


# direct methods
.method public static makeIpClient(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClientCallbacks;)V
    .locals 1

    invoke-static {p0}, Landroid/net/networkstack/ModuleNetworkStackClient;->getInstance(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;

    move-result-object p0

    new-instance v0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;

    invoke-direct {v0, p2}, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;-><init>(Landroid/net/ip/IpClientCallbacks;)V

    invoke-virtual {p0, p1, v0}, Landroid/net/networkstack/NetworkStackClientBase;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    return-void
.end method
