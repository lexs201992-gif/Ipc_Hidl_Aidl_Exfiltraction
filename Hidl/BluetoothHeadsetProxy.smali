.class public Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;
.super Ljava/lang/Object;
.source "BluetoothHeadsetProxy.java"


# instance fields
.field public mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method


# virtual methods
.method public clccResponse(IIIIZLjava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    return-void
.end method

.method public closeBluetoothHeadsetProxy(Landroid/content/Context;)V
    .locals 1

    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    return-void
.end method

.method public connectAudio()I
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()I

    move-result p0

    return p0
.end method

.method public disconnectAudio()I
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()I

    move-result p0

    return p0
.end method

.method public getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public isInbandRingingEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->isInbandRingingEnabled()Z

    move-result p0

    return p0
.end method

.method public phoneStateChanged(IIILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hfp/BluetoothHeadsetProxy;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method
