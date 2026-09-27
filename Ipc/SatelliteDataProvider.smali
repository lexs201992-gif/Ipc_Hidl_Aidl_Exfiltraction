.class interface abstract Lcom/spreadtrum/sgps/SatelliteDataProvider;
.super Ljava/lang/Object;
.source "SatelliteDataProvider.java"


# static fields
.field public static final MAX_SATELLITES_NUMBER:I = 0x160

.field public static final SATELLITES_MASK_BIT_WIDTH:I = 0x20

.field public static final SATELLITES_MASK_SIZE:I = 0xb


# virtual methods
.method public abstract getSatelliteStatus([I[F[F[FII[I)I
.end method

.method public abstract setSatelliteStatus(I[I[F[F[FII[I)V
.end method
