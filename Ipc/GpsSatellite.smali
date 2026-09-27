.class final Lcom/spreadtrum/sgps/GpsSatellite;
.super Ljava/lang/Object;
.source "GpsSatellite.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/spreadtrum/sgps/GpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field mGpsAzimuth:F

.field mGpsElevation:F

.field mGpsHasAlmanac:Z

.field mGpsHasEphemeris:Z

.field final mGpsPrn:I

.field mGpsSnr:F

.field mGpsUsedInFix:Z

.field mGpsValid:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsPrn:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/spreadtrum/sgps/GpsSatellite;)I
    .locals 2

    iget v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsPrn:I

    iget v1, p1, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsPrn:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/spreadtrum/sgps/GpsSatellite;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/sgps/GpsSatellite;->compareTo(Lcom/spreadtrum/sgps/GpsSatellite;)I

    move-result p1

    return p1
.end method

.method public getAzimuth()F
    .locals 1

    iget v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsAzimuth:F

    return v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsElevation:F

    return v0
.end method

.method public getPrn()I
    .locals 1

    iget v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsPrn:I

    return v0
.end method

.method public getSnr()F
    .locals 1

    iget v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsSnr:F

    return v0
.end method

.method public hasAlmanac()Z
    .locals 1

    iget-boolean v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsHasAlmanac:Z

    return v0
.end method

.method public hasEphemeris()Z
    .locals 1

    iget-boolean v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsHasEphemeris:Z

    return v0
.end method

.method setGpsStatus(Lcom/spreadtrum/sgps/GpsSatellite;)V
    .locals 1

    iget-boolean v0, p1, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsValid:Z

    iput-boolean v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsValid:Z

    iget-boolean v0, p1, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsHasEphemeris:Z

    iput-boolean v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsHasEphemeris:Z

    iget-boolean v0, p1, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsHasAlmanac:Z

    iput-boolean v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsHasAlmanac:Z

    iget-boolean v0, p1, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsUsedInFix:Z

    iput-boolean v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsUsedInFix:Z

    iget v0, p1, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsSnr:F

    iput v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsSnr:F

    iget v0, p1, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsElevation:F

    iput v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsElevation:F

    iget v0, p1, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsAzimuth:F

    iput v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsAzimuth:F

    return-void
.end method

.method public usedInFix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsUsedInFix:Z

    return v0
.end method
