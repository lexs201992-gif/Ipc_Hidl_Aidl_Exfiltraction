.class public Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachineFactory;
.super Ljava/lang/Object;
.source "HeadsetClientStateMachineFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Landroid/os/HandlerThread;Lcom/android/bluetooth/hfpclient/NativeInterface;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .locals 0

    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p1, p0, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Lcom/android/bluetooth/hfp/HeadsetService;Landroid/os/Looper;Lcom/android/bluetooth/hfpclient/NativeInterface;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object p0

    return-object p0
.end method
