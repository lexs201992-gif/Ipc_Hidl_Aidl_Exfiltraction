.class Lcom/spreadtrum/sgps/NmeaParser;
.super Ljava/lang/Object;
.source "NmeaParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/sgps/NmeaParser$LocalNmeaListener;
    }
.end annotation


# static fields
.field private static final NMEA_HEADER_SUFFIX_GGA:Ljava/lang/String; = "GGA"

.field private static final NMEA_HEADER_SUFFIX_GSA:Ljava/lang/String; = "GSA"

.field private static final NMEA_HEADER_SUFFIX_GSV:Ljava/lang/String; = "GSV"

.field private static final NMEA_HEADER_SUFFIX_VTG:Ljava/lang/String; = "VTG"

.field private static final NMEA_STATEMENT_GSV_HEADERS_COUNT:I = 0x4

.field private static final NMEA_STATEMENT_GSV_SATELLITES_COUNT:I = 0x4

.field private static final NMEA_STATEMENT_HEADER_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field private static mFixAvailable:Z

.field private static final mPrnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/spreadtrum/sgps/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSatellitesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/spreadtrum/sgps/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private localNmeaListener:Lcom/spreadtrum/sgps/NmeaParser$LocalNmeaListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/spreadtrum/sgps/NmeaParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/sgps/NmeaParser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/spreadtrum/sgps/NmeaParser;->mSatellitesList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/spreadtrum/sgps/NmeaParser;->mPrnsList:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/spreadtrum/sgps/NmeaParser;->mFixAvailable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/spreadtrum/sgps/NmeaParser;->mSList:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/sgps/NmeaParser;->localNmeaListener:Lcom/spreadtrum/sgps/NmeaParser$LocalNmeaListener;

    return-void
.end method

.method private parserNmeaGPGSA(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/spreadtrum/sgps/NmeaParser;->splitNmeaStatement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lcom/spreadtrum/sgps/NmeaParser;->mFixAvailable:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    :goto_0
    const/16 v3, 0xe

    if-gt v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/spreadtrum/sgps/NmeaParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parser nmea GPGSA field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no value !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/spreadtrum/sgps/NmeaParser;->mPrnsList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :cond_2
    sget-object v1, Lcom/spreadtrum/sgps/NmeaParser;->TAG:Ljava/lang/String;

    const-string v2, "parser nmea GPGSA error !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private parserNmeaGPGSV(Ljava/lang/String;)V
    .locals 18

    invoke-static/range {p1 .. p1}, Lcom/spreadtrum/sgps/NmeaParser;->splitNmeaStatement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v5, -0x4

    const/4 v7, 0x4

    div-int/2addr v6, v7

    const/4 v8, 0x1

    :goto_0
    if-gt v8, v6, :cond_e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_1
    if-gt v13, v7, :cond_7

    add-int/lit8 v14, v8, -0x1

    mul-int/2addr v14, v7

    const/4 v15, 0x3

    add-int/2addr v14, v15

    add-int/2addr v14, v13

    :try_start_0
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    if-ne v13, v0, :cond_1

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move v9, v15

    goto :goto_2

    :cond_1
    if-ne v13, v3, :cond_2

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    move v10, v15

    goto :goto_2

    :cond_2
    if-ne v13, v15, :cond_3

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    move v11, v15

    goto :goto_2

    :cond_3
    add-int/lit8 v15, v5, -0x1

    if-ne v14, v15, :cond_5

    add-int/lit8 v15, v5, -0x1

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string v3, "*"

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v15, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v12, v7

    :cond_4
    goto :goto_2

    :cond_5
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    move v12, v3

    :cond_6
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x2

    const/4 v7, 0x4

    goto :goto_1

    :cond_7
    new-instance v3, Lcom/spreadtrum/sgps/GpsSatellite;

    invoke-direct {v3, v9}, Lcom/spreadtrum/sgps/GpsSatellite;-><init>(I)V

    iput-boolean v0, v3, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsValid:Z

    iput v12, v3, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsSnr:F

    iput v10, v3, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsElevation:F

    iput v11, v3, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsAzimuth:F

    sget-object v7, Lcom/spreadtrum/sgps/NmeaParser;->mPrnsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lcom/spreadtrum/sgps/NmeaParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "prn "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "set m HasAlmanac , mHasEphemeris and mUsedInFix TRUE"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, v3, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsHasEphemeris:Z

    iput-boolean v0, v3, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsHasAlmanac:Z

    iput-boolean v0, v3, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsUsedInFix:Z

    :cond_8
    const/4 v7, 0x0

    sget-object v13, Lcom/spreadtrum/sgps/NmeaParser;->mSList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    const/4 v13, 0x0

    :goto_3
    sget-object v14, Lcom/spreadtrum/sgps/NmeaParser;->mSList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_b

    iget v15, v3, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsPrn:I

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/spreadtrum/sgps/GpsSatellite;

    invoke-virtual/range {v16 .. v16}, Lcom/spreadtrum/sgps/GpsSatellite;->getPrn()I

    move-result v0

    if-eq v15, v0, :cond_9

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    iget v0, v3, Lcom/spreadtrum/sgps/GpsSatellite;->mGpsSnr:F

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/spreadtrum/sgps/GpsSatellite;

    invoke-virtual {v15}, Lcom/spreadtrum/sgps/GpsSatellite;->getSnr()F

    move-result v15

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_a

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/sgps/GpsSatellite;

    invoke-virtual {v0, v3}, Lcom/spreadtrum/sgps/GpsSatellite;->setGpsStatus(Lcom/spreadtrum/sgps/GpsSatellite;)V

    sget-object v0, Lcom/spreadtrum/sgps/NmeaParser;->mSatellitesList:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/sgps/GpsSatellite;

    invoke-virtual {v0, v3}, Lcom/spreadtrum/sgps/GpsSatellite;->setGpsStatus(Lcom/spreadtrum/sgps/GpsSatellite;)V

    :cond_a
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    sget-object v0, Lcom/spreadtrum/sgps/NmeaParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "index ="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "mSList.size() = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ne v7, v0, :cond_d

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/spreadtrum/sgps/NmeaParser;->mSatellitesList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/spreadtrum/sgps/NmeaParser;->mSatellitesList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_5
    sget-object v0, Lcom/spreadtrum/sgps/NmeaParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "satellite "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , prn is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , elevation is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , azimuth is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , snr is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x1

    const/4 v3, 0x2

    const/4 v7, 0x4

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/spreadtrum/sgps/NmeaParser;->mSatellitesList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_7

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_6
    nop

    :goto_7
    goto :goto_8

    :cond_f
    sget-object v0, Lcom/spreadtrum/sgps/NmeaParser;->TAG:Ljava/lang/String;

    const-string v2, "parser nmea GPGSV error !"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void
.end method

.method private resetmSatellitesData()V
    .locals 1

    sget-object v0, Lcom/spreadtrum/sgps/NmeaParser;->mPrnsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/spreadtrum/sgps/NmeaParser;->mSList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/spreadtrum/sgps/NmeaParser;->mSatellitesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static splitNmeaStatement(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public parserNmeaStatement(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/spreadtrum/sgps/NmeaParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parserNmeaStatement input nmea is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nmea header is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "GSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/spreadtrum/sgps/NmeaParser;->parserNmeaGPGSA(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "GSV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/spreadtrum/sgps/NmeaParser;->parserNmeaGPGSV(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "GGA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/spreadtrum/sgps/NmeaParser;->resetmSatellitesData()V

    goto :goto_0

    :cond_2
    const-string v2, "VTG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/spreadtrum/sgps/NmeaParser;->localNmeaListener:Lcom/spreadtrum/sgps/NmeaParser$LocalNmeaListener;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSatelliteViewAndLocationInfo + mFixAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/spreadtrum/sgps/NmeaParser;->mFixAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/spreadtrum/sgps/NmeaParser;->localNmeaListener:Lcom/spreadtrum/sgps/NmeaParser$LocalNmeaListener;

    sget-boolean v3, Lcom/spreadtrum/sgps/NmeaParser;->mFixAvailable:Z

    invoke-interface {v2, v3}, Lcom/spreadtrum/sgps/NmeaParser$LocalNmeaListener;->locationFixed(Z)V

    iget-object v2, p0, Lcom/spreadtrum/sgps/NmeaParser;->localNmeaListener:Lcom/spreadtrum/sgps/NmeaParser$LocalNmeaListener;

    sget-object v3, Lcom/spreadtrum/sgps/NmeaParser;->mSatellitesList:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/spreadtrum/sgps/NmeaParser$LocalNmeaListener;->updateSatelliteView(Ljava/util/List;)V

    iget-object v2, p0, Lcom/spreadtrum/sgps/NmeaParser;->localNmeaListener:Lcom/spreadtrum/sgps/NmeaParser$LocalNmeaListener;

    invoke-interface {v2, v3}, Lcom/spreadtrum/sgps/NmeaParser$LocalNmeaListener;->setSatelliteStatusForGe2(Ljava/util/List;)V

    :cond_3
    :goto_0
    const-string v1, "Nmea statement can not parser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setLocalNmeaListener(Lcom/spreadtrum/sgps/NmeaParser$LocalNmeaListener;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/sgps/NmeaParser;->localNmeaListener:Lcom/spreadtrum/sgps/NmeaParser$LocalNmeaListener;

    return-void
.end method
