.class public final enum Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;
.super Ljava/lang/Enum;
.source "ImsDCStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DC_STATE_CLOSED:Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

.field public static final enum DC_STATE_CLOSING:Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

.field public static final enum DC_STATE_CONNECTING:Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

.field public static final enum DC_STATE_OPEN:Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;


# direct methods
.method private static synthetic $values()[Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;
    .locals 4

    sget-object v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->DC_STATE_CONNECTING:Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    sget-object v1, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->DC_STATE_OPEN:Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    sget-object v2, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->DC_STATE_CLOSING:Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    sget-object v3, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->DC_STATE_CLOSED:Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    const-string v1, "DC_STATE_CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->DC_STATE_CONNECTING:Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    new-instance v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    const-string v1, "DC_STATE_OPEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->DC_STATE_OPEN:Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    new-instance v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    const-string v1, "DC_STATE_CLOSING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->DC_STATE_CLOSING:Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    new-instance v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    const-string v1, "DC_STATE_CLOSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->DC_STATE_CLOSED:Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    invoke-static {}, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->$values()[Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    move-result-object v0

    sput-object v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->$VALUES:[Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    new-instance v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus$1;

    invoke-direct {v0}, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus$1;-><init>()V

    sput-object v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInteger(I)Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;
    .locals 1

    invoke-static {}, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->values()[Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;
    .locals 1

    const-class v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    return-object v0
.end method

.method public static values()[Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;
    .locals 1

    sget-object v0, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->$VALUES:[Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    invoke-virtual {v0}, [Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toInteger()I
    .locals 1

    invoke-virtual {p0}, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->ordinal()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/cmcc/newcalllib/datachannel/ImsDCStatus;->toInteger()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
