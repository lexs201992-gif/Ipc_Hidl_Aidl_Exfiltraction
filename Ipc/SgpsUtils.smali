.class public Lcom/spreadtrum/sgps/SgpsUtils;
.super Ljava/lang/Object;
.source "SgpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/sgps/SgpsUtils$GnssType;,
        Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;,
        Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;,
        Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;
    }
.end annotation


# static fields
.field private static final BEIDOU_SVID_OFFSET:I = 0xc8

.field public static final COUNT_PRECISION:I = 0x1f4

.field public static final DIALOG_3RDMSISDN:I = 0x6d

.field public static final DIALOG_AREA_MININTERVAL:I = 0x73

.field public static final DIALOG_AREA_STARTTIME:I = 0x75

.field public static final DIALOG_AREA_STOPTIME:I = 0x76

.field public static final DIALOG_AREA_TYPE_SELECT:I = 0x72

.field public static final DIALOG_CERTIFICATEVERIFICATION:I = 0x6b

.field public static final DIALOG_CUSTOMER_CMD:I = 0x7b

.field public static final DIALOG_DELAY:I = 0x6a

.field public static final DIALOG_FL_VDR_MODE:I = 0x7d

.field public static final DIALOG_FL_WORK_MODE:I = 0x7c

.field public static final DIALOG_GEORADIUS:I = 0x77

.field public static final DIALOG_HORIZONTAL_ACCURACY:I = 0x67

.field public static final DIALOG_LATITUDE:I = 0x78

.field public static final DIALOG_LOCATIONAGE:I = 0x69

.field public static final DIALOG_LONGITUDE:I = 0x79

.field public static final DIALOG_MAXNUM:I = 0x74

.field public static final DIALOG_MSISDN:I = 0x6c

.field public static final DIALOG_NI_DIALOG_TEST:I = 0x7a

.field public static final DIALOG_PERODIC_MININTERVAL:I = 0x6f

.field public static final DIALOG_PERODIC_STARTTIME:I = 0x70

.field public static final DIALOG_PERODIC_STOPTIME:I = 0x71

.field public static final DIALOG_POSMETHOD_SELECT:I = 0x6e

.field public static final DIALOG_SLP_ADDRESS:I = 0x65

.field public static final DIALOG_SLP_PORT:I = 0x66

.field public static final DIALOG_SLP_TEMPLATE:I = 0x64

.field public static final DIALOG_VERTICAL_ACCURACY:I = 0x68

.field public static final DISMISS_PROGRESS_DIALOG:I = 0xca

.field public static final FIRST_TIME:Ljava/lang/String; = "first.time"

.field private static final GLONASS_SVID_OFFSET:I = 0x40

.field public static final GNSSBDMODEM:Ljava/lang/String; = "GNSSBDMODEM"

.field private static final GNSSCHIP:Ljava/lang/String;

.field public static final GNSSMODEM:Ljava/lang/String; = "GNSSMODEM"

.field private static final GPSCHIP:Ljava/lang/String;

.field public static final GPS_EXTRA_DATA:[Ljava/lang/String;

.field public static final GPS_EXTRA_LOG_SWITCH_OFF:Ljava/lang/String; = "sadata"

.field public static final GPS_EXTRA_LOG_SWITCH_ON:Ljava/lang/String; = "svdir"

.field public static final HANDLE_AUTO_TRANSFER_START_BUTTON_UPDATE:I = 0x3f0

.field public static final HANDLE_AUTO_TRANSFER_UPDATE_CURRENT_MODE:I = 0x3f2

.field public static final HANDLE_CHANGE_FIRST_OPEN_SGPS_STATE:I = 0x4bb

.field public static final HANDLE_COMMAND_OTHERS_UPDATE_PROVIDER:I = 0x453

.field public static final HANDLE_COMMAND_OTHERS_UPDATE_RESULT_HINT:I = 0x450

.field public static final HANDLE_COMMAND_OTHERS_UPDATE_RESULT_LOG:I = 0x451

.field public static final HANDLE_COMMAND_OTHERS_UPDATE_RESULT_LOG_END:I = 0x452

.field public static final HANDLE_COUNTER:I = 0x3e8

.field public static final HANDLE_CUSTOM_CURVECHART:I = 0x270f

.field public static final HANDLE_GET_IMAGE_MODE:I = 0x4b2

.field public static final HANDLE_INIT_AGPS_COMMON:I = 0x4b6

.field public static final HANDLE_INIT_AGPS_CONFIG_LAYOUT_STATUS:I = 0x4b7

.field public static final HANDLE_INIT_AGPS_CONTROL_PLANE:I = 0x4b4

.field public static final HANDLE_INIT_AGPS_PLANE_SWITCH:I = 0x4b8

.field public static final HANDLE_INIT_AGPS_USER_PLANE:I = 0x4b5

.field public static final HANDLE_INIT_COMMON_GNSS_MODE:I = 0x4b9

.field public static final HANDLE_INIT_MARLIN3_GNSS_MODE:I = 0x4ba

.field public static final HANDLE_INIT_SWITCH:I = 0x4b3

.field public static final HANDLE_READ_XML_FILE:I = 0x4b1

.field public static final HANDLE_RESET_TO_DEFAULT:I = 0x4bc

.field public static final ISGe2:Z

.field public static final ISMarlin3:Z

.field public static final ISMarlin3lite:Z

.field public static final ISMarlin3liteInteg:Z

.field private static final MAX_SATELLITES:I = 0xff

.field public static final ONE_SECOND:I = 0x3e8

.field public static final READ_CONFIG_ALL:Ljava/lang/String; = "$SGPS,read,config.xml,all"

.field public static final READ_SUPL_ALL:Ljava/lang/String; = "$SGPS,read,supl.xml,all"

.field private static final SBAS_SVID_OFFSET:I = -0x57

.field public static final SGPS_VRESION:Ljava/lang/String; = "v2.0.0_2019.08.30"

.field public static final SHOW_PROGRESS_DIALOG:I = 0xc9

.field public static final START_MODE:Ljava/lang/String; = "start.mode"

.field private static final TAG:Ljava/lang/String; = "SgpsUtils"

.field public static final UART_LOG_SWITCH:Ljava/lang/String; = "uart.log.switch"

.field public static final WRITE_CONFIG_SINGLE:Ljava/lang/String; = "$SGPS,write,config.xml,single,"

.field public static final WRITE_SUPL_SINGLE:Ljava/lang/String; = "$SGPS,write,supl.xml,single,"

.field private static final mAutoTransferTestRunningLock:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field public static final mLastLocationRefence:Landroid/location/Location;

.field private static mSuplArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hwndLoadingDialog:Lcom/spreadtrum/sgps/LoadingDialog;

.field private locationWhenFirstFix:Z

.field public mAreaTypeArray:[Ljava/lang/String;

.field public mAreaTypeArrayValues:[Ljava/lang/String;

.field public mAutoTransferTotalTimes:I

.field private final mAzimuth:[F

.field private mBeidouInUsed:[I

.field private mBeidouView:[I

.field private final mContForCN0:[I

.field public mCurrSCanPeriod:I

.field public mCurrSCanPeriodCount:I

.field public mCurrScanTimes:I

.field public mCurrScanTimesCount:I

.field public mCurrentMode:Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;

.field public mCurrentTimes:I

.field public mCurveChart:Landroid/widget/LinearLayout;

.field private mDistance:[F

.field public mDistanceCont:I

.field private final mElevation:[F

.field private mEnterCn0FirstFlag:Z

.field private mFileAutoTest:Lcom/spreadtrum/sgps/LogUtils;

.field private mFileNmea:Lcom/spreadtrum/sgps/LogUtils;

.field private mFileRssi:Lcom/spreadtrum/sgps/LogUtils;

.field public mFirstFix:Z

.field private mFirstFixFlag:Z

.field private mFirstFixLatitude:[D

.field private mFirstFixLongitude:[D

.field private mGe2Cn_Sr:Ljava/lang/String;

.field private mGlonassInUsed:[I

.field private mGlonassView:[I

.field private mGnssStatus:Landroid/location/GnssStatus;

.field private mGnssStatusArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/sgps/SatelliteStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssStatusListener:Landroid/location/GnssStatus$Callback;

.field private mGpsInUsed:[I

.field private mGpsView:[I

.field private mIsAutoTransferTestRunning:Z

.field public mLastTtffValue:I

.field public mLocationManager:Landroid/location/LocationManager;

.field public mModeInterval:I

.field public mNiDialogTestArray:[Ljava/lang/String;

.field public mNiDialogTestArrayValues:[Ljava/lang/String;

.field public mPosMethodArray:[Ljava/lang/String;

.field public mPosMethodArrayValues:[Ljava/lang/String;

.field private final mPrns:[I

.field private final mPrnsForCN0:[I

.field public mProvider:Ljava/lang/String;

.field public mSLPArray:[Ljava/lang/String;

.field public final mSLPNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSLPValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSateTracking:[I

.field private final mSatelliteInUsedandViewMaxValues:[I

.field private final mSatelliteInUsedandViewMinValues:[I

.field private mSatelliteTestCont:I

.field private mSatellites:I

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSerchFirstSateFlag:Z

.field private mSerchFirstSateTime:J

.field public mShowFirstFixLocate:Z

.field private final mSnrs:[F

.field private final mSrnsForCN0:[F

.field private mStartSerchTime:J

.field public mStatus:Ljava/lang/String;

.field public mTTFFInterval:I

.field public mTTFFTimeoutCont:I

.field public mTestDistanceSum:F

.field public mTestLatitude:Ljava/lang/String;

.field public mTestLongitude:Ljava/lang/String;

.field public mTestTTFFSum:F

.field public mTimeoutValue:I

.field private mTotalInused:[I

.field private mTotalView:[I

.field private mTtff:[F

.field public mTtffTimeoutFlag:Z

.field public mTtffValue:I

.field private mTtffcont:I

.field private final mUsedInFixMask:[I

.field public final mltFirstData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mltSecondData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mltThirdData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContForCN0(Lcom/spreadtrum/sgps/SgpsUtils;)[I
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mContForCN0:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnterCn0FirstFlag(Lcom/spreadtrum/sgps/SgpsUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mEnterCn0FirstFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrnsForCN0(Lcom/spreadtrum/sgps/SgpsUtils;)[I
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrnsForCN0:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSerchFirstSateFlag(Lcom/spreadtrum/sgps/SgpsUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSerchFirstSateFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSrnsForCN0(Lcom/spreadtrum/sgps/SgpsUtils;)[F
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSrnsForCN0:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartSerchTime(Lcom/spreadtrum/sgps/SgpsUtils;)J
    .locals 2

    iget-wide v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mStartSerchTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputlocationWhenFirstFix(Lcom/spreadtrum/sgps/SgpsUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->locationWhenFirstFix:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnterCn0FirstFlag(Lcom/spreadtrum/sgps/SgpsUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mEnterCn0FirstFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFirstFixFlag(Lcom/spreadtrum/sgps/SgpsUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFixFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGnssStatus(Lcom/spreadtrum/sgps/SgpsUtils;Landroid/location/GnssStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGnssStatus:Landroid/location/GnssStatus;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSerchFirstSateFlag(Lcom/spreadtrum/sgps/SgpsUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSerchFirstSateFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSerchFirstSateTime(Lcom/spreadtrum/sgps/SgpsUtils;J)V
    .locals 0

    iput-wide p1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSerchFirstSateTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartSerchTime(Lcom/spreadtrum/sgps/SgpsUtils;J)V
    .locals 0

    iput-wide p1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mStartSerchTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$msatelliteStateCN0(Lcom/spreadtrum/sgps/SgpsUtils;Landroid/location/GnssStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/sgps/SgpsUtils;->satelliteStateCN0(Landroid/location/GnssStatus;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateGnssStatus(Lcom/spreadtrum/sgps/SgpsUtils;Landroid/location/GnssStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/sgps/SgpsUtils;->updateGnssStatus(Landroid/location/GnssStatus;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateGnssVersion(Lcom/spreadtrum/sgps/SgpsUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/sgps/SgpsUtils;->updateGnssVersion()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->mAutoTransferTestRunningLock:Ljava/lang/Object;

    const-string v0, "ro.vendor.gnsschip"

    const-string v1, "ge"

    invoke-static {v0, v1}, Lcom/spreadtrum/sgps/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->GNSSCHIP:Ljava/lang/String;

    const-string v2, "ro.vendor.wcn.gpschip"

    invoke-static {v2, v1}, Lcom/spreadtrum/sgps/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->GPSCHIP:Ljava/lang/String;

    const-string v2, "ge2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ge2_gal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    :goto_1
    sput-boolean v2, Lcom/spreadtrum/sgps/SgpsUtils;->ISGe2:Z

    const-string v2, "marlin3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v5

    :goto_3
    sput-boolean v2, Lcom/spreadtrum/sgps/SgpsUtils;->ISMarlin3:Z

    const-string v2, "marlin3lite-Integ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v2, v4

    goto :goto_5

    :cond_5
    :goto_4
    move v2, v5

    :goto_5
    sput-boolean v2, Lcom/spreadtrum/sgps/SgpsUtils;->ISMarlin3liteInteg:Z

    const-string v3, "marlin3lite"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    move v4, v5

    :cond_7
    sput-boolean v4, Lcom/spreadtrum/sgps/SgpsUtils;->ISMarlin3lite:Z

    const-string v5, "$PSPRD,00,3,1"

    const-string v6, "$PSPRD,00,3,4"

    const-string v7, "$PSPRD,00,3,2"

    const-string v8, "$PSPRD,00,3,5"

    const-string v9, "$PSPRD,00,3,3"

    const-string v10, "$PSPRD,00,3,7"

    const-string v11, "$PSPRD,00,3,13"

    const-string v12, "$PSPRD,00,3,25"

    const-string v13, "$PSPRD,00,3,21"

    const-string v14, "$PSPRD,00,3,29"

    const-string v15, "$PSPRD,00,3,"

    const-string v16, "$PSPRD,00,3,19"

    const-string v17, "$PSPRD,00,a,a"

    const-string v18, "$PSPRD,00,a,b"

    const-string v19, "$PSPRD,00,a,c"

    const-string v20, "$PSPRD,00,a,d"

    const-string v21, "$PSPRD,00,a,e"

    const-string v22, "$PSPRD,00,a,f"

    filled-new-array/range {v5 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->GPS_EXTRA_DATA:[Ljava/lang/String;

    new-instance v0, Landroid/location/Location;

    const-string v1, "refence"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->mLastLocationRefence:Landroid/location/Location;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSuplArrayMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/sgps/LogUtils;Lcom/spreadtrum/sgps/LogUtils;Lcom/spreadtrum/sgps/LogUtils;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->hwndLoadingDialog:Lcom/spreadtrum/sgps/LoadingDialog;

    const/4 v1, 0x0

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriod:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimes:I

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriodCount:I

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimesCount:I

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurveChart:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltFirstData:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltThirdData:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSLPNameList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSLPValueList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mEnterCn0FirstFlag:Z

    iput-boolean v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtffTimeoutFlag:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mStartSerchTime:J

    iput-wide v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSerchFirstSateTime:J

    iput-boolean v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSerchFirstSateFlag:Z

    iput-boolean v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFixFlag:Z

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTotalInused:[I

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTotalView:[I

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGpsInUsed:[I

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGpsView:[I

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGlonassInUsed:[I

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGlonassView:[I

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mBeidouInUsed:[I

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mBeidouView:[I

    const/16 v3, 0x8

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMinValues:[I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMaxValues:[I

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSateTracking:[I

    const/16 v3, 0x3e7

    iput v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTimeoutValue:I

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTTFFTimeoutCont:I

    sget-object v3, Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;->Hot:Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;

    iput-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentMode:Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGe2Cn_Sr:Ljava/lang/String;

    const/16 v3, 0xb

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mUsedInFixMask:[I

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtffValue:I

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentTimes:I

    const/16 v3, 0x160

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrns:[I

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSnrs:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mElevation:[F

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mAzimuth:[F

    const/4 v3, 0x5

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrnsForCN0:[I

    new-array v5, v3, [F

    iput-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSrnsForCN0:[F

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mContForCN0:[I

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtffcont:I

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mAutoTransferTotalTimes:I

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTTFFInterval:I

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mModeInterval:I

    iput-boolean v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFix:Z

    iput-boolean v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mIsAutoTransferTestRunning:Z

    iput-boolean v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mShowFirstFixLocate:Z

    iput-boolean v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->locationWhenFirstFix:Z

    const-string v2, "NA"

    iput-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestLatitude:Ljava/lang/String;

    iput-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestLongitude:Ljava/lang/String;

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mLastTtffValue:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestTTFFSum:F

    iput v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestDistanceSum:F

    const-string v6, ""

    iput-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mProvider:Ljava/lang/String;

    iput-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mLocationManager:Landroid/location/LocationManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGnssStatusArrayList:Ljava/util/ArrayList;

    sput-object p1, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFileRssi:Lcom/spreadtrum/sgps/LogUtils;

    iput-object p3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFileNmea:Lcom/spreadtrum/sgps/LogUtils;

    iput-object p4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFileAutoTest:Lcom/spreadtrum/sgps/LogUtils;

    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([FF)V

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private adjustInUsedandViewMinMaxValue([I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMinValues:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget v2, p1, v0

    aget v3, v1, v0

    if-ge v2, v3, :cond_0

    aget v2, p1, v0

    aput v2, v1, v0

    :cond_0
    aget v1, p1, v0

    iget-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMaxValues:[I

    aget v3, v2, v0

    if-le v1, v3, :cond_1

    aget v1, p1, v0

    aput v1, v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private calcAveValue([II)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p1, v1

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-float v1, p2

    div-float v1, v0, v1

    return v1
.end method

.method public static changeMapValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSuplArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static constructMylogFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v3, "%s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private emptyArray()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrns:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSnrs:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mElevation:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mAzimuth:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mUsedInFixMask:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private extractValuesFromNoiseRssi(Ljava/util/List;)[F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[F"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v4, 0x2

    aput v2, v0, v4

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aget v6, v0, v1

    cmpg-float v6, v6, v5

    if-gez v6, :cond_0

    aput v5, v0, v1

    :cond_0
    aget v6, v0, v3

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    aput v5, v0, v3

    :cond_1
    aget v6, v0, v4

    add-float/2addr v6, v5

    aput v6, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget v1, v0, v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v0, v4

    return-object v0
.end method

.method public static getAGPSInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "UNKNOWN"

    :try_start_0
    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->mSuplArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getGPSInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.vendor.gnsschip ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils;->GNSSCHIP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", ro.vendor.wcn.gpschip ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/spreadtrum/sgps/SgpsUtils;->GPSCHIP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SgpsUtils"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ge2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UNKNOWN"

    :try_start_0
    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->mSuplArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "UNKNOWN"

    return-object v1
.end method

.method public static getGnssConstellationType(I)Lcom/spreadtrum/sgps/SgpsUtils$GnssType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils$GnssType;->UNKNOWN:Lcom/spreadtrum/sgps/SgpsUtils$GnssType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils$GnssType;->IRNSS:Lcom/spreadtrum/sgps/SgpsUtils$GnssType;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils$GnssType;->GALILEO:Lcom/spreadtrum/sgps/SgpsUtils$GnssType;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils$GnssType;->BEIDOU:Lcom/spreadtrum/sgps/SgpsUtils$GnssType;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils$GnssType;->QZSS:Lcom/spreadtrum/sgps/SgpsUtils$GnssType;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils$GnssType;->GLONASS:Lcom/spreadtrum/sgps/SgpsUtils$GnssType;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils$GnssType;->NAVSTAR:Lcom/spreadtrum/sgps/SgpsUtils$GnssType;

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils$GnssType;->UNKNOWN:Lcom/spreadtrum/sgps/SgpsUtils$GnssType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getGpsInfoFromXml(Ljava/lang/String;)V
    .locals 11

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    const-string v3, "OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "SgpsUtils"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "str.length = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    const-string v4, ""

    const/4 v5, 0x6

    :goto_0
    array-length v6, v0

    sub-int/2addr v6, v2

    if-ge v5, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v5

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v6, v0, v5

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const-string v7, ", value = "

    const-string v9, "key = "

    const/4 v10, 0x0

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    aget-object v6, v0, v5

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v1, v6, v10

    aget-object v6, v0, v5

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v6, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/spreadtrum/sgps/SgpsUtils;->mSuplArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    aget-object v6, v0, v5

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v1, v6, v10

    const-string v4, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/spreadtrum/sgps/SgpsUtils;->mSuplArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    nop

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSuplArrayMap length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils;->mSuplArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSatelliteStatus(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "SgpsUtils"

    const-string v1, "Enter private getSatelliteStatus function"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x160

    new-array v1, v0, [I

    new-array v0, v0, [F

    if-nez p1, :cond_0

    const-string v2, "0"

    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v5

    aput v5, v1, v2

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    aput v5, v0, v2

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/spreadtrum/sgps/SgpsUtils;->toString([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0, v2}, Lcom/spreadtrum/sgps/SgpsUtils;->toString([FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getValueFromXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "UNKNOWN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filepath-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", element name-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SgpsUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    const-string v9, "NAME"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "VALUE"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method private getxLabel(I)[Ljava/lang/String;
    .locals 8

    if-gtz p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    if-gt p1, v0, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/16 v0, 0x12c

    if-gt p1, v0, :cond_3

    const/16 v0, 0xa

    goto :goto_0

    :cond_3
    const/16 v0, 0x32

    :goto_0
    div-int v1, p1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int v3, p1, v0

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_5

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    mul-int v7, v0, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-object v3
.end method

.method private getyLabel(FZ)[Ljava/lang/String;
    .locals 10

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    const v2, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_4

    const/high16 v2, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_4
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_5

    const/high16 v2, 0x41200000    # 10.0f

    goto :goto_0

    :cond_5
    const/high16 v2, 0x42480000    # 50.0f

    :goto_0
    div-float v3, v0, v2

    float-to-int v3, v3

    rem-float v4, v0, v2

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getyLabel()-> hasNegative == "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SgpsUtils"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string v4, "%.1f"

    const/4 v5, 0x1

    if-eqz p2, :cond_9

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v5

    new-array v6, v6, [Ljava/lang/String;

    move v7, v3

    :goto_1
    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v5

    if-ge v7, v8, :cond_7

    new-array v8, v5, [Ljava/lang/Object;

    sub-int v9, v7, v3

    int-to-float v9, v9

    mul-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_8

    new-array v8, v5, [Ljava/lang/Object;

    sub-int v9, v7, v3

    int-to-float v9, v9

    mul-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    goto :goto_4

    :cond_9
    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v8, v3, 0x1

    if-ge v7, v8, :cond_a

    new-array v8, v5, [Ljava/lang/Object;

    int-to-float v9, v7

    mul-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    return-object v6
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "SgpsUtils"

    if-ge v0, v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(C)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "isNumeric false"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "isNumeric true"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method private isUsedInFix(I)Z
    .locals 8

    move v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gtz v0, :cond_2

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mUsedInFixMask:[I

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v5, v3, v2

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v3, v0, 0x20

    rem-int/lit8 v4, v0, 0x20

    iget-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mUsedInFixMask:[I

    aget v5, v5, v3

    const/4 v6, 0x1

    shl-int v7, v6, v4

    and-int/2addr v5, v7

    if-eqz v5, :cond_3

    move v2, v6

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method static synthetic lambda$doMySwitchChange$0(ZLandroid/content/DialogInterface;I)V
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    const-string v1, "PROPERTY"

    const-string v2, "GE2-SUPPORT-GALILEO"

    invoke-static {v1, v2, v0}, Lcom/spreadtrum/sgps/SgpsUtils;->setGPSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->GPS_EXTRA_DATA:[Ljava/lang/String;

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_GPSGLONASSGalileo:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    invoke-virtual {v2}, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->GPS_EXTRA_DATA:[Ljava/lang/String;

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_GLONASSGPS:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    invoke-virtual {v2}, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    :goto_1
    invoke-static {v1}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGalileo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChecked ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SgpsUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "SGPS change GE2_BIN_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method private perpareGpsMode(I)Landroid/os/Bundle;
    .locals 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;->Hot:Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;

    invoke-virtual {v1}, Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;->ordinal()I

    move-result v1

    const-string v2, "rti"

    const-string v3, "SgpsUtils"

    const/4 v4, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, "Radio Hot Start is selected"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;->Cold:Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;

    invoke-virtual {v1}, Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;->ordinal()I

    move-result v1

    const-string v5, "ephemeris"

    if-ne p1, v1, :cond_4

    const-string v1, "Radio Cold Start is selected"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const-string v3, "start.mode"

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v3, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f010002

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    :goto_0
    array-length v8, v3

    if-ge v7, v8, :cond_3

    aget-object v8, v3, v7

    const-string v9, "RFT"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    aget-object v8, v3, v7

    invoke-interface {v1, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    aget-object v8, v3, v7

    const-string v9, "copy eph"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v3, v7

    invoke-interface {v1, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "sadata"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "position"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "time"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "iono"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "utc"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "health"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;->Warm:Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;

    invoke-virtual {v1}, Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_5

    const-string v1, "Radio Warm Start is selected"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    const-string v1, "Radio Full Start is selected"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "all"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_2
    return-object v0
.end method

.method private satelliteStateCN0(Landroid/location/GnssStatus;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatelliteCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnterCn0FirstFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mEnterCn0FirstFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SgpsUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mEnterCn0FirstFlag:Z

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mEnterCn0FirstFlag:Z

    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrnsForCN0:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v5

    if-ne v5, v3, :cond_0

    add-int/lit8 v4, v4, 0x40

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v5

    if-ne v5, v2, :cond_1

    add-int/lit16 v4, v4, 0xc8

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v5

    if-ne v5, v1, :cond_2

    add-int/lit8 v4, v4, -0x57

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrnsForCN0:[I

    aput v4, v5, v0

    iget-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSrnsForCN0:[F

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v6

    aput v6, v5, v0

    iget-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mContForCN0:[I

    aget v6, v5, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    goto/16 :goto_7

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrnsForCN0:[I

    array-length v4, v4

    if-ge v0, v4, :cond_8

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v5

    if-ne v5, v3, :cond_5

    add-int/lit8 v4, v4, 0x40

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v5

    if-ne v5, v2, :cond_6

    add-int/lit16 v4, v4, 0xc8

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v5

    if-ne v5, v1, :cond_7

    add-int/lit8 v4, v4, -0x57

    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrnsForCN0:[I

    aput v4, v5, v0

    iget-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSrnsForCN0:[F

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v6

    aput v6, v5, v0

    iget-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mContForCN0:[I

    aget v6, v5, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v4

    if-ge v0, v4, :cond_f

    const/4 v4, 0x0

    :goto_5
    iget-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrnsForCN0:[I

    array-length v5, v5

    if-ge v4, v5, :cond_e

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v5

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v6

    if-ne v6, v3, :cond_a

    add-int/lit8 v5, v5, 0x40

    goto :goto_6

    :cond_a
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v6

    if-ne v6, v2, :cond_b

    add-int/lit16 v5, v5, 0xc8

    goto :goto_6

    :cond_b
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v6

    if-ne v6, v1, :cond_c

    add-int/lit8 v5, v5, -0x57

    :cond_c
    :goto_6
    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrnsForCN0:[I

    aget v6, v6, v4

    if-ne v6, v5, :cond_d

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSrnsForCN0:[F

    aget v7, v6, v4

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v8

    add-float/2addr v7, v8

    aput v7, v6, v4

    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mContForCN0:[I

    aget v7, v6, v4

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v4

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    :goto_7
    return-void
.end method

.method public static setAGPSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAGPSInfo, key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SgpsUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$SGPS,write,supl.xml,single,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return setAGPSInfo, key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isOK = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "OK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lcom/spreadtrum/sgps/SgpsUtils;->changeMapValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private setCommandToProvider(Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->GPS_EXTRA_DATA:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPSCUSTOM:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    if-ne p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setCommandToProvider type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SgpsUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method public static setGPSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$SGPS,write,config.xml,single,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lcom/spreadtrum/sgps/SgpsUtils;->changeMapValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private setSatelliteInusedOrTracking(Ljava/lang/Iterable;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/16 v1, 0x8

    new-array v1, v1, [I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v6

    sget-object v7, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v7}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v7

    aget v8, v1, v7

    add-int/2addr v8, v5

    aput v8, v1, v7

    const/16 v7, 0xbb

    const/16 v8, 0x5c

    const/16 v9, 0x97

    const/16 v10, 0x20

    const/16 v11, 0x41

    if-lt v6, v5, :cond_0

    if-gt v6, v10, :cond_0

    sget-object v12, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v12}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v12

    aget v13, v1, v12

    add-int/2addr v13, v5

    aput v13, v1, v12

    goto :goto_1

    :cond_0
    if-lt v6, v11, :cond_1

    if-gt v6, v8, :cond_1

    sget-object v12, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v12}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v12

    aget v13, v1, v12

    add-int/2addr v13, v5

    aput v13, v1, v12

    goto :goto_1

    :cond_1
    if-lt v6, v9, :cond_2

    if-gt v6, v7, :cond_2

    sget-object v12, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v12}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v12

    aget v13, v1, v12

    add-int/2addr v13, v5

    aput v13, v1, v12

    :cond_2
    :goto_1
    invoke-direct {p0, v6}, Lcom/spreadtrum/sgps/SgpsUtils;->isUsedInFix(I)Z

    move-result v12

    if-eqz v12, :cond_5

    sget-object v12, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v12}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v12

    aget v13, v1, v12

    add-int/2addr v13, v5

    aput v13, v1, v12

    if-lt v6, v5, :cond_3

    if-gt v6, v10, :cond_3

    sget-object v7, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v7}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v7

    aget v8, v1, v7

    add-int/2addr v8, v5

    aput v8, v1, v7

    goto :goto_2

    :cond_3
    if-lt v6, v11, :cond_4

    if-gt v6, v8, :cond_4

    sget-object v7, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v7}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v7

    aget v8, v1, v7

    add-int/2addr v8, v5

    aput v8, v1, v7

    goto :goto_2

    :cond_4
    if-lt v6, v9, :cond_6

    if-gt v6, v7, :cond_6

    sget-object v7, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v7}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v7

    aget v8, v1, v7

    add-int/2addr v8, v5

    aput v8, v1, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    :cond_6
    :goto_2
    goto/16 :goto_0

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSatelliteInusedOrTracking\n totalInUsedNum= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v4}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v4

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ntotalViewNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v4}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v4

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ngpsInUsedNum= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v4}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v4

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ngpsViewNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v4}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v4

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nglonassInUsedNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v4}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v4

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nglonassViewNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v4}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v4

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nbeidouInUsedNum= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v4}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v4

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nbeidouViewNum= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v4}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v4

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SgpsUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/spreadtrum/sgps/SgpsUtils;->adjustInUsedandViewMinMaxValue([I)V

    iget v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    iget v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentTimes:I

    if-ge v3, v6, :cond_8

    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTotalInused:[I

    sget-object v7, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v7}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v7

    aget v7, v1, v7

    aput v7, v6, v3

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTotalView:[I

    iget v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v7, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v7}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v7

    aget v7, v1, v7

    aput v7, v3, v6

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGpsInUsed:[I

    iget v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v7, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v7}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v7

    aget v7, v1, v7

    aput v7, v3, v6

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGpsView:[I

    iget v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v7, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v7}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v7

    aget v7, v1, v7

    aput v7, v3, v6

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGlonassInUsed:[I

    iget v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v7, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v7}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v7

    aget v7, v1, v7

    aput v7, v3, v6

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGlonassView:[I

    iget v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v7, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v7}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v7

    aget v7, v1, v7

    aput v7, v3, v6

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mBeidouInUsed:[I

    iget v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v7, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v7}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v7

    aget v7, v1, v7

    aput v7, v3, v6

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mBeidouView:[I

    iget v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v7, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v7}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v7

    aget v7, v1, v7

    aput v7, v3, v6

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSateTracking:[I

    iget v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    aput v2, v3, v6

    add-int/2addr v6, v5

    iput v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSatelliteInusedOrTracking mSatelliteTestCont is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " , mCurrentTimes is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentTimes:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput-boolean v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFixFlag:Z

    return-void
.end method

.method private static setValueFromXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const-string v0, "yes"

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    const-string v8, "NAME"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "VALUE"

    invoke-interface {v7, v8, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v7

    new-instance v8, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v8, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    const-string v9, "encoding"

    const-string v10, "utf-8"

    invoke-virtual {v7, v9, v10}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "indent"

    invoke-virtual {v7, v9, v0}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "standalone"

    invoke-virtual {v7, v9, v0}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v7, v8, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SgpsUtils"

    const-string v2, "Exception :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method private toString([FI)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toString([II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateGnssStatus(Landroid/location/GnssStatus;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v2

    const/16 v3, 0x8

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([II)V

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mGnssStatusArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v2, :cond_7

    new-instance v17, Lcom/spreadtrum/sgps/SatelliteStatus;

    invoke-virtual {v1, v6}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v9

    invoke-virtual {v1, v6}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v8

    invoke-static {v8}, Lcom/spreadtrum/sgps/SgpsUtils;->getGnssConstellationType(I)Lcom/spreadtrum/sgps/SgpsUtils$GnssType;

    move-result-object v10

    invoke-virtual {v1, v6}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v11

    invoke-virtual {v1, v6}, Landroid/location/GnssStatus;->hasAlmanacData(I)Z

    move-result v12

    invoke-virtual {v1, v6}, Landroid/location/GnssStatus;->hasEphemerisData(I)Z

    move-result v13

    invoke-virtual {v1, v6}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v14

    invoke-virtual {v1, v6}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v15

    invoke-virtual {v1, v6}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v16

    move-object/from16 v8, v17

    invoke-direct/range {v8 .. v16}, Lcom/spreadtrum/sgps/SatelliteStatus;-><init>(ILcom/spreadtrum/sgps/SgpsUtils$GnssType;FZZZFF)V

    iget-object v9, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mGnssStatusArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v9

    sget-object v10, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v10}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v10

    aget v11, v3, v10

    add-int/2addr v11, v7

    aput v11, v3, v10

    const/4 v10, 0x5

    const/4 v11, 0x3

    if-ne v9, v7, :cond_0

    sget-object v12, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v12}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v12

    aget v13, v3, v12

    add-int/2addr v13, v7

    aput v13, v3, v12

    goto :goto_1

    :cond_0
    if-ne v9, v11, :cond_1

    sget-object v12, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v12}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v12

    aget v13, v3, v12

    add-int/2addr v13, v7

    aput v13, v3, v12

    goto :goto_1

    :cond_1
    if-ne v9, v10, :cond_2

    sget-object v12, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v12}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v12

    aget v13, v3, v12

    add-int/2addr v13, v7

    aput v13, v3, v12

    :cond_2
    :goto_1
    invoke-virtual {v1, v6}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v12

    if-eqz v12, :cond_5

    sget-object v12, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v12}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v12

    aget v13, v3, v12

    add-int/2addr v13, v7

    aput v13, v3, v12

    if-ne v9, v7, :cond_3

    sget-object v10, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v10}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v10

    aget v11, v3, v10

    add-int/2addr v11, v7

    aput v11, v3, v10

    goto :goto_2

    :cond_3
    if-ne v9, v11, :cond_4

    sget-object v10, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v10}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v10

    aget v11, v3, v10

    add-int/2addr v11, v7

    aput v11, v3, v10

    goto :goto_2

    :cond_4
    if-ne v9, v10, :cond_6

    sget-object v10, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v10}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v10

    aget v11, v3, v10

    add-int/2addr v11, v7

    aput v11, v3, v10

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    :cond_6
    :goto_2
    nop

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mGnssStatusArrayList->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mGnssStatusArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SgpsUtils"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSatelliteInusedOrTracking\n totalInUsedNum= "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v10}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v10

    aget v10, v3, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\ntotalViewNum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v10}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v10

    aget v10, v3, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\ngpsInUsedNum= "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v10}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v10

    aget v10, v3, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\ngpsViewNum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v10}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v10

    aget v10, v3, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\nglonassInUsedNum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v10}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v10

    aget v10, v3, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\nglonassViewNum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v10}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v10

    aget v10, v3, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\nbeidouInUsedNum= "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v10}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v10

    aget v10, v3, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\nbeidouViewNum= "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v10}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v10

    aget v10, v3, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v3}, Lcom/spreadtrum/sgps/SgpsUtils;->adjustInUsedandViewMinMaxValue([I)V

    iget v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    iget v10, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentTimes:I

    if-ge v8, v10, :cond_8

    iget-object v10, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mTotalInused:[I

    sget-object v11, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v11}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v11

    aget v11, v3, v11

    aput v11, v10, v8

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mTotalView:[I

    iget v10, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v11, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v11}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v11

    aget v11, v3, v11

    aput v11, v8, v10

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mGpsInUsed:[I

    iget v10, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v11, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v11}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v11

    aget v11, v3, v11

    aput v11, v8, v10

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mGpsView:[I

    iget v10, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v11, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v11}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v11

    aget v11, v3, v11

    aput v11, v8, v10

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mGlonassInUsed:[I

    iget v10, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v11, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v11}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v11

    aget v11, v3, v11

    aput v11, v8, v10

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mGlonassView:[I

    iget v10, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v11, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v11}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v11

    aget v11, v3, v11

    aput v11, v8, v10

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mBeidouInUsed:[I

    iget v10, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v11, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v11}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v11

    aget v11, v3, v11

    aput v11, v8, v10

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mBeidouView:[I

    iget v10, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    sget-object v11, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual {v11}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v11

    aget v11, v3, v11

    aput v11, v8, v10

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSateTracking:[I

    iget v10, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    aput v4, v8, v10

    add-int/2addr v10, v7

    iput v10, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSatelliteInusedOrTracking mSatelliteTestCont is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , mCurrentTimes is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentTimes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFixFlag:Z

    return-void
.end method

.method private updateGnssVersion()V
    .locals 5

    const-string v0, "$SGPS,read,config.xml,all"

    invoke-static {v0}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGnssVersion config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SgpsUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/spreadtrum/sgps/SgpsUtils;->getGpsInfoFromXml(Ljava/lang/String;)V

    const-string v1, "$SGPS,read,supl.xml,all"

    invoke-static {v1}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateGnssVersion supl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/spreadtrum/sgps/SgpsUtils;->getGpsInfoFromXml(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public SetCustomModeSystem(Ljava/lang/String;)V
    .locals 8

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetCustomModeSystem ->sModeSystemStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SgpsUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    aget-object v3, v0, v1

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Set Custom Mode Success!"

    const-string v5, "Set Custom Mode Failure!"

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v3, :cond_1

    array-length v3, v0

    if-ne v3, v6, :cond_1

    const-string v1, "SetCustomModeSystem: miniPVT"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->GPS_EXTRA_DATA:[Ljava/lang/String;

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_MINIPVT_TRUE:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    invoke-virtual {v2}, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    goto/16 :goto_2

    :cond_1
    aget-object v1, v0, v1

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, v0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    aget-object v1, v0, v6

    const-string v3, "sys"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/spreadtrum/sgps/SgpsUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APPVT &System mode :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PROPERTY"

    const-string v3, "MINIPVT"

    invoke-static {v2, v3}, Lcom/spreadtrum/sgps/SgpsUtils;->getGPSInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRUE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils;->GPS_EXTRA_DATA:[Ljava/lang/String;

    sget-object v3, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_MINIPVT_FALSE:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    invoke-virtual {v3}, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPSCUSTOM:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/spreadtrum/sgps/SgpsUtils;->setCommandToProvider(Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_1
    goto :goto_2

    :cond_4
    const-string v1, "Please input correct Custom Mode System "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const-string v2, "Please input correct Custom Mode System"

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method public StartGpsMode()Landroid/os/Bundle;
    .locals 3

    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const-string v1, "start.mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;->Hot:Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;

    invoke-virtual {v2}, Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/sgps/SgpsUtils;->perpareGpsMode(I)Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method public acquireScreenWakeLock()V
    .locals 3

    const-string v0, "SgpsUtils"

    const-string v1, "Acquiring screen wake lock start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const v2, 0x1000001a

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v2, "Acquiring screen wake lock end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addGnssStatusListener()V
    .locals 2

    new-instance v0, Lcom/spreadtrum/sgps/SgpsUtils$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/sgps/SgpsUtils$1;-><init>(Lcom/spreadtrum/sgps/SgpsUtils;)V

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGnssStatusListener:Landroid/location/GnssStatus$Callback;

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z

    return-void
.end method

.method public closeLoadingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->hwndLoadingDialog:Lcom/spreadtrum/sgps/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/sgps/LoadingDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->hwndLoadingDialog:Lcom/spreadtrum/sgps/LoadingDialog;

    :cond_0
    return-void
.end method

.method public doHANDLE_COMMAND_OTHERS_UPDATE_RESULT_HINT(Landroid/widget/TextView;)V
    .locals 7

    iget-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFileAutoTest:Lcom/spreadtrum/sgps/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Autotestlog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentMode:Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;

    invoke-virtual {v2}, Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/sgps/SgpsUtils;->constructMylogFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/sgps/LogUtils;->openMyLog(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00e0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Date: %s%n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestLatitude:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestLongitude:Ljava/lang/String;

    aput-object v4, v5, v1

    const-string v1, "Refence-Latitude: %s%nRefence-Longitude: %s%n"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const v4, 0x7f0a001f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFileAutoTest:Lcom/spreadtrum/sgps/LogUtils;

    invoke-virtual {v2, v1}, Lcom/spreadtrum/sgps/LogUtils;->writeMyLog(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00b5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public doHANDLE_COMMAND_OTHERS_UPDATE_RESULT_LOG()Ljava/lang/String;
    .locals 12

    iget-boolean v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtffTimeoutFlag:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    iget v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtffcont:I

    iget v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentTimes:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtff:[F

    iget v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mLastTtffValue:I

    int-to-float v4, v4

    aput v4, v3, v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtffcont:I

    :cond_0
    iget v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestDistanceSum:F

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistance:[F

    sub-int/2addr v0, v1

    aget v0, v3, v0

    add-float/2addr v2, v0

    iput v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestDistanceSum:F

    iget v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestTTFFSum:F

    iget-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtff:[F

    iget v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtffcont:I

    sub-int/2addr v3, v1

    aget v2, v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestTTFFSum:F

    iget-wide v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSerchFirstSateTime:J

    iget-wide v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mStartSerchTime:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestLatitude:Ljava/lang/String;

    const-string v4, "NA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "%.2f"

    const/4 v6, 0x0

    const-string v7, " "

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestLongitude:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentTimes:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " NA NA "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistance:[F

    iget v9, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    sub-int/2addr v9, v1

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentTimes:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFixLatitude:[D

    iget v9, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    sub-int/2addr v9, v1

    aget-wide v8, v8, v9

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v6

    const-string v8, "%.9f"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFixLongitude:[D

    iget v10, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    sub-int/2addr v10, v1

    aget-wide v9, v9, v10

    double-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v4, v6

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistance:[F

    iget v9, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    sub-int/2addr v9, v1

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mLastTtffValue:I

    int-to-double v8, v5

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v6

    const-string v5, "%.1f"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/spreadtrum/sgps/SgpsUtils;->ISGe2:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/spreadtrum/sgps/SgpsUtils;->ISMarlin3:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/spreadtrum/sgps/SgpsUtils;->ISMarlin3lite:Z

    if-eqz v5, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGe2Cn_Sr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mLastTtffValue:I

    int-to-double v8, v6

    div-double/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentMode:Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;

    invoke-virtual {v6}, Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NA\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFileAutoTest:Lcom/spreadtrum/sgps/LogUtils;

    invoke-virtual {v2, v0}, Lcom/spreadtrum/sgps/LogUtils;->writeMyLog(Ljava/lang/String;)V

    return-object v1
.end method

.method public doHANDLE_COMMAND_OTHERS_UPDATE_RESULT_LOG_END(ZFF)Ljava/lang/String;
    .locals 34

    move-object/from16 v0, p0

    const v1, 0x7f0a00c7

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    sget-object v6, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mTTFFTimeoutCont:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    iget v7, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mAutoTransferTotalTimes:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget v6, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mAutoTransferTotalTimes:I

    iget v7, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mTTFFTimeoutCont:I

    sub-int v7, v6, v7

    int-to-float v7, v7

    int-to-float v6, v6

    div-float/2addr v7, v6

    sget-object v6, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    iget v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mTTFFTimeoutCont:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    iget v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mAutoTransferTotalTimes:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v6, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistance:[F

    invoke-static {v6}, Ljava/util/Arrays;->sort([F)V

    iget-object v6, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtff:[F

    invoke-static {v6}, Ljava/util/Arrays;->sort([F)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    if-lez v2, :cond_1

    iget-object v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mTotalInused:[I

    invoke-direct {v0, v4, v2}, Lcom/spreadtrum/sgps/SgpsUtils;->calcAveValue([II)F

    move-result v14

    iget-object v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mTotalView:[I

    iget v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    invoke-direct {v0, v2, v4}, Lcom/spreadtrum/sgps/SgpsUtils;->calcAveValue([II)F

    move-result v15

    iget-object v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mGpsInUsed:[I

    iget v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    invoke-direct {v0, v2, v4}, Lcom/spreadtrum/sgps/SgpsUtils;->calcAveValue([II)F

    move-result v16

    iget-object v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mGpsView:[I

    iget v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    invoke-direct {v0, v2, v4}, Lcom/spreadtrum/sgps/SgpsUtils;->calcAveValue([II)F

    move-result v17

    iget-object v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mGlonassInUsed:[I

    iget v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    invoke-direct {v0, v2, v4}, Lcom/spreadtrum/sgps/SgpsUtils;->calcAveValue([II)F

    move-result v18

    iget-object v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mGlonassView:[I

    iget v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    invoke-direct {v0, v2, v4}, Lcom/spreadtrum/sgps/SgpsUtils;->calcAveValue([II)F

    move-result v19

    iget-object v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mBeidouInUsed:[I

    iget v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    invoke-direct {v0, v2, v4}, Lcom/spreadtrum/sgps/SgpsUtils;->calcAveValue([II)F

    move-result v20

    iget-object v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mBeidouView:[I

    iget v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    invoke-direct {v0, v2, v4}, Lcom/spreadtrum/sgps/SgpsUtils;->calcAveValue([II)F

    move-result v21

    iget-object v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSateTracking:[I

    iget v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    invoke-direct {v0, v2, v4}, Lcom/spreadtrum/sgps/SgpsUtils;->calcAveValue([II)F

    move-result v22

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMinValues:[I

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    iget-object v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMaxValues:[I

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    :goto_1
    iget v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    const-wide v25, 0x3fee666666666666L    # 0.95

    const-wide v27, 0x3fe5c28f5c28f5c3L    # 0.68

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    if-lt v2, v3, :cond_2

    iget-object v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistance:[F

    aget v7, v4, v5

    add-int/lit8 v31, v2, -0x1

    aget v6, v4, v31

    move/from16 v32, v6

    int-to-double v5, v2

    mul-double v5, v5, v27

    sub-double v5, v5, v29

    double-to-int v5, v5

    aget v10, v4, v5

    int-to-double v5, v2

    mul-double v5, v5, v25

    sub-double v5, v5, v29

    double-to-int v2, v5

    aget v12, v4, v2

    move/from16 v6, v32

    :cond_2
    iget v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtffcont:I

    if-lt v2, v3, :cond_3

    iget-object v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtff:[F

    iget v5, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mTTFFTimeoutCont:I

    aget v9, v4, v5

    iget v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mAutoTransferTotalTimes:I

    const/16 v24, 0x1

    add-int/lit8 v3, v3, -0x1

    aget v8, v4, v3

    move/from16 v33, v8

    move v3, v9

    int-to-double v8, v2

    mul-double v8, v8, v27

    sub-double v8, v8, v29

    double-to-int v8, v8

    add-int/2addr v8, v5

    aget v11, v4, v8

    int-to-double v8, v2

    mul-double v8, v8, v25

    sub-double v8, v8, v29

    double-to-int v2, v8

    add-int/2addr v2, v5

    aget v13, v4, v2

    move v9, v3

    move/from16 v8, v33

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSatelliteTestCont: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalInusedAve="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SgpsUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Object;

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v25, p2, v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v4, v26

    div-float v25, v11, v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    const/16 v24, 0x1

    aput-object v25, v4, v24

    div-float v25, v13, v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    const/16 v26, 0x2

    aput-object v25, v4, v26

    div-float v25, v8, v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    const/16 v23, 0x3

    aput-object v25, v4, v23

    div-float v5, v9, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v25, 0x4

    aput-object v5, v4, v25

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0051

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v26, 0x0

    aput-object v5, v3, v26

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v24, 0x1

    aput-object v5, v3, v24

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move/from16 v26, v8

    const/4 v8, 0x2

    aput-object v5, v3, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v23, 0x3

    aput-object v5, v3, v23

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v25

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00b6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v25, 0x0

    aput-object v8, v5, v25

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v24, 0x1

    aput-object v8, v5, v24

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v25, v4

    const/4 v8, 0x3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMinValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v27, 0x0

    aput-object v8, v4, v27

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMaxValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v24, 0x1

    aput-object v8, v4, v24

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v27, 0x2

    aput-object v8, v4, v27

    const-string v8, "%nTOT(USED): %d %d %.1f"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v25, v4

    const/4 v8, 0x3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMinValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v27, 0x0

    aput-object v8, v4, v27

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMaxValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v24, 0x1

    aput-object v8, v4, v24

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v27, 0x2

    aput-object v8, v4, v27

    const-string v8, "%nGPS(USED): %d %d %.1f"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v25, v4

    const/4 v8, 0x3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMinValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v27, 0x0

    aput-object v8, v4, v27

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMaxValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v24, 0x1

    aput-object v8, v4, v24

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v27, 0x2

    aput-object v8, v4, v27

    const-string v8, "%nGLO(USED): %d %d %.1f"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v25, v4

    const/4 v8, 0x3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMinValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v27, 0x0

    aput-object v8, v4, v27

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMaxValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouInUsed:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v24, 0x1

    aput-object v8, v4, v24

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v27, 0x2

    aput-object v8, v4, v27

    const-string v8, "%nBDS(USED): %d %d %.1f"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v25, v4

    const/4 v8, 0x3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMinValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v27, 0x0

    aput-object v8, v4, v27

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMaxValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->TotalView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v24, 0x1

    aput-object v8, v4, v24

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v27, 0x2

    aput-object v8, v4, v27

    const-string v8, "%nTOT(VIEW): %d %d %.1f"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v25, v4

    const/4 v8, 0x3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMinValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v27, 0x0

    aput-object v8, v4, v27

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMaxValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GpsView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v24, 0x1

    aput-object v8, v4, v24

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v27, 0x2

    aput-object v8, v4, v27

    const-string v8, "%nGPS(VIEW): %d %d %.1f"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v25, v4

    const/4 v8, 0x3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMinValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v27, 0x0

    aput-object v8, v4, v27

    iget-object v8, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMaxValues:[I

    sget-object v27, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->GlonassView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v27 .. v27}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v27

    aget v8, v8, v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v24, 0x1

    aput-object v8, v4, v24

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v27, 0x2

    aput-object v8, v4, v27

    const-string v8, "%nGLO(VIEW): %d %d %.1f"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v23, v4

    iget-object v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMinValues:[I

    sget-object v25, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v25 .. v25}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v25

    aget v4, v4, v25

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v25, 0x0

    aput-object v4, v8, v25

    iget-object v4, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMaxValues:[I

    sget-object v25, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->BeidouView:Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;

    invoke-virtual/range {v25 .. v25}, Lcom/spreadtrum/sgps/SgpsUtils$InUsedandViewEnum;->ordinal()I

    move-result v25

    aget v4, v4, v25

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v24, 0x1

    aput-object v4, v8, v24

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v24, 0x2

    aput-object v4, v8, v24

    const-string v4, "%nBDS(VIEW): %d %d %.1f"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public doMakeText(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/16 v4, 0x30

    invoke-virtual {v1, v4, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public doMySwitchChange(IZ)V
    .locals 5

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const-string v0, "SgpsUtils"

    const-string v1, "viewId is not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :sswitch_0
    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const-string v2, "uart.log.switch"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    const-string v3, "svdir"

    goto :goto_0

    :cond_0
    const-string v3, "sadata"

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "time"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const-string v4, "delete_aiding_data"

    invoke-virtual {v2, v3, v4, v1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_7

    :sswitch_1
    if-eqz p2, :cond_1

    const-string v0, "$PSPRD,00,4,1"

    goto :goto_1

    :cond_1
    const-string v0, "$PSPRD,00,4,2"

    :goto_1
    invoke-static {v0}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_7

    :sswitch_2
    nop

    if-eqz p2, :cond_2

    const-string v0, "TRUE"

    goto :goto_2

    :cond_2
    const-string v0, "FALSE"

    :goto_2
    const-string v1, "PROPERTY"

    const-string v2, "SINGLE-SATELLITE"

    invoke-static {v1, v2, v0}, Lcom/spreadtrum/sgps/SgpsUtils;->setAGPSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :sswitch_3
    if-eqz p2, :cond_3

    const-string v0, "$PSPRD,00,a,0"

    goto :goto_3

    :cond_3
    const-string v0, "$PSPRD,00,a,1"

    :goto_3
    invoke-static {v0}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    :sswitch_4
    if-eqz p2, :cond_4

    const-string v0, "$PSPRD,00,a,8"

    goto :goto_4

    :cond_4
    const-string v0, "$PSPRD,00,a,9"

    :goto_4
    invoke-static {v0}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    :sswitch_5
    if-eqz p2, :cond_5

    const-string v0, "$PSPRD,00,a,6"

    goto :goto_5

    :cond_5
    const-string v0, "$PSPRD,00,a,7"

    :goto_5
    invoke-static {v0}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    :sswitch_6
    if-eqz p2, :cond_6

    const-string v0, "$PSPRD,00,a,2"

    goto :goto_6

    :cond_6
    const-string v0, "$PSPRD,00,a,3"

    :goto_6
    invoke-static {v0}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    :sswitch_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/spreadtrum/sgps/SgpsUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/spreadtrum/sgps/SgpsUtils$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    nop

    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060039 -> :sswitch_7
        0x7f06003e -> :sswitch_6
        0x7f06003f -> :sswitch_5
        0x7f060040 -> :sswitch_4
        0x7f06008e -> :sswitch_3
        0x7f060099 -> :sswitch_2
        0x7f0600a0 -> :sswitch_1
        0x7f0600d3 -> :sswitch_0
    .end sparse-switch
.end method

.method public doNoiseScan(Ljava/lang/String;[Landroid/widget/TextView;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimesCount:I

    iget v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimes:I

    if-ge v2, v3, :cond_6

    iget v2, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriodCount:I

    iget v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriod:I

    if-ge v2, v3, :cond_6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nmea: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "RSSI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SgpsUtils"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mFileRssi:Lcom/spreadtrum/sgps/LogUtils;

    invoke-virtual {v3, v1}, Lcom/spreadtrum/sgps/LogUtils;->writeMyLog(Ljava/lang/String;)V

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    iget v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriodCount:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriodCount:I

    iget v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimesCount:I

    const/4 v5, 0x4

    const v6, 0x7f0a0007

    const-string v10, "%.1f"

    const-string v12, "2st"

    const-string v13, "3st"

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v11, 0x0

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mltFirstData:Ljava/util/List;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v9, v11

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriodCount:I

    iget v9, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriod:I

    const-string v10, "1st"

    if-ne v3, v9, :cond_0

    iput v11, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriodCount:I

    iget v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimesCount:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimesCount:I

    iget-object v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mltFirstData:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/spreadtrum/sgps/SgpsUtils;->extractValuesFromNoiseRssi(Ljava/util/List;)[F

    move-result-object v3

    sget-object v9, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v10, v5, v11

    aget v9, v3, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v4

    aget v9, v3, v4

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v15

    aget v9, v3, v15

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v14

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0008

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v10, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    aget-object v5, p2, v11

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v5, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimes:I

    if-ne v5, v15, :cond_1

    sget-object v5, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const v6, 0x7f0a000a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v12, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p2, v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1
    if-ne v5, v14, :cond_6

    sget-object v5, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const v6, 0x7f0a000a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v12, v9, v11

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v5, p2, v4

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v13, v4, v11

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p2, v15

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    if-ne v3, v4, :cond_4

    iget-object v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v9, v11

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriodCount:I

    iget v9, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriod:I

    if-ne v3, v9, :cond_3

    iput v11, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriodCount:I

    iget v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimesCount:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimesCount:I

    iget-object v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/spreadtrum/sgps/SgpsUtils;->extractValuesFromNoiseRssi(Ljava/util/List;)[F

    move-result-object v3

    sget-object v9, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v12, v5, v11

    aget v9, v3, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v4

    aget v9, v3, v4

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v15

    aget v9, v3, v15

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v14

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0008

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v12, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    aget-object v5, p2, v4

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v5, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimes:I

    if-ne v5, v14, :cond_6

    sget-object v5, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const v6, 0x7f0a000a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v13, v4, v11

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p2, v15

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mltThirdData:Ljava/util/List;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriodCount:I

    iget v9, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriod:I

    if-ne v3, v9, :cond_5

    iput v11, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrSCanPeriodCount:I

    iget v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimesCount:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimesCount:I

    iget-object v3, v0, Lcom/spreadtrum/sgps/SgpsUtils;->mltThirdData:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/spreadtrum/sgps/SgpsUtils;->extractValuesFromNoiseRssi(Ljava/util/List;)[F

    move-result-object v3

    sget-object v9, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v13, v5, v11

    aget v9, v3, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v4

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v5, v15

    aget v4, v3, v15

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v5, v14

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0008

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v13, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    aget-object v4, p2, v15

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public doNoiseScanCurveChart()V
    .locals 15

    iget-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltFirstData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/spreadtrum/sgps/SgpsUtils;->extractValuesFromNoiseRssi(Ljava/util/List;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltFirstData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrScanTimes:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/spreadtrum/sgps/SgpsUtils;->extractValuesFromNoiseRssi(Ljava/util/List;)[F

    move-result-object v0

    aget v4, v0, v1

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    aget v2, v0, v1

    :cond_0
    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/spreadtrum/sgps/SgpsUtils;->extractValuesFromNoiseRssi(Ljava/util/List;)[F

    move-result-object v0

    aget v4, v0, v1

    cmpg-float v4, v2, v4

    if-gez v4, :cond_2

    aget v2, v0, v1

    :cond_2
    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    :cond_3
    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltThirdData:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/spreadtrum/sgps/SgpsUtils;->extractValuesFromNoiseRssi(Ljava/util/List;)[F

    move-result-object v0

    aget v4, v0, v1

    cmpg-float v4, v2, v4

    if-gez v4, :cond_4

    aget v2, v0, v1

    :cond_4
    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltThirdData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltThirdData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    :cond_5
    :goto_0
    invoke-direct {p0, v3}, Lcom/spreadtrum/sgps/SgpsUtils;->getxLabel(I)[Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v1}, Lcom/spreadtrum/sgps/SgpsUtils;->getyLabel(FZ)[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v4

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltFirstData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltFirstData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [F

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltFirstData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltFirstData:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v5, 0x7f040004

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [F

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltSecondData:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v5, 0x7f040005

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltThirdData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltThirdData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [F

    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltThirdData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mltThirdData:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v5, 0x7f040007

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v13, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurveChart:Landroid/widget/LinearLayout;

    new-instance v14, Lcom/spreadtrum/sgps/LineGraphicView;

    sget-object v5, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    move-object v4, v14

    move-object v6, v10

    move-object v7, v1

    move-object v8, v11

    move-object v9, v12

    invoke-direct/range {v4 .. v9}, Lcom/spreadtrum/sgps/LineGraphicView;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public domLocListener(Landroid/location/Location;Landroid/widget/TextView;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/spreadtrum/sgps/SgpsUtils;->getmIsAutoTransferTestRunning()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->locationWhenFirstFix:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFixFlag:Z

    iput-boolean v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->locationWhenFirstFix:Z

    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->mLastLocationRefence:Landroid/location/Location;

    invoke-virtual {p1, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "location la is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , lo is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , distance is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDistanceCont is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SgpsUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    iget v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentTimes:I

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistance:[F

    aput v1, v5, v4

    iget-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFixLatitude:[D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v5, v4

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFixLongitude:[D

    iget v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v4, v5

    iget v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    :cond_0
    iget-boolean v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFix:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mEnterCn0FirstFlag:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/spreadtrum/sgps/SgpsUtils;->getmIsAutoTransferTestRunning()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrnsForCN0:[I

    array-length v5, v4

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mContForCN0:[I

    aget v5, v5, v1

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSrnsForCN0:[F

    aget v4, v4, v1

    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mContForCN0:[I

    aget v6, v6, v1

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const-string v4, "<%d,%d>"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string v1, "NA"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public domScrollToBottom(Landroid/widget/TextView;Landroid/widget/ScrollView;)V
    .locals 13

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    mul-int/2addr v2, v1

    const/4 v3, 0x0

    if-le v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v7

    div-int/2addr v7, v5

    mul-int v8, v1, v7

    sub-int v8, v4, v8

    if-lez v8, :cond_2

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v6, 0xa

    const-string v12, "$"

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    if-gez v6, :cond_1

    const/16 v6, 0xa

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "offset = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " line_count_src : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " line_count_des : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SgpsUtils"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v10, v4, v9

    mul-int/2addr v10, v5

    sub-int/2addr v2, v10

    if-lez v2, :cond_2

    invoke-virtual {p2, v3, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_2
    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_3

    invoke-virtual {p2, v3, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method public getGNSSMode()Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;
    .locals 6

    const-string v0, "PROPERTY"

    const-string v1, "CP-MODE"

    invoke-static {v0, v1}, Lcom/spreadtrum/sgps/SgpsUtils;->getGPSInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GE2-SUPPORT-GALILEO"

    invoke-static {v0, v2}, Lcom/spreadtrum/sgps/SgpsUtils;->getGPSInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gpsModeValue is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSupportGALValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SgpsUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/spreadtrum/sgps/SgpsUtils;->ISMarlin3:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/spreadtrum/sgps/SgpsUtils;->ISMarlin3lite:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "0x4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_GLONASS:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    goto/16 :goto_1

    :cond_1
    const-string v2, "0x2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_BDSONLY:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    goto :goto_1

    :cond_2
    const-string v2, "0x5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_GLONASSGPS:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    goto :goto_1

    :cond_3
    const-string v2, "0x3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_GPSBDS:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_GPSONLY:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    goto :goto_1

    :cond_5
    :goto_0
    const-string v2, "0x7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_GPSBD2GLONASS:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    goto :goto_1

    :cond_6
    const-string v2, "0xd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_GPSB1CGLONASS:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    goto :goto_1

    :cond_7
    const-string v2, "0x19"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_GPSB1CGalileo:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    goto :goto_1

    :cond_8
    const-string v2, "0x15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_GPSGLONASSGalileo:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    goto :goto_1

    :cond_9
    const-string v2, "0x13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_GPSBD2Galileo:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    goto :goto_1

    :cond_a
    const-string v2, "0x1d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPS_EXTRA_GPSB1CGLONASSGalileo:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    goto :goto_1

    :cond_b
    sget-object v2, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->GPSCUSTOM:Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gps_mode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/spreadtrum/sgps/SgpsUtils$GPSGroupEnum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getSatelliteStatus([I[F[F[FII[I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrns:[I

    iget v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSnrs:[F

    iget v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    invoke-static {v1, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mAzimuth:[F

    iget v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    invoke-static {v1, v0, p4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mElevation:[F

    iget v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    invoke-static {v1, v0, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-eqz p7, :cond_4

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mUsedInFixMask:[I

    const/16 v2, 0xb

    invoke-static {v1, v0, p7, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    return v0
.end method

.method public getTruePositionListDefaultIndex()I
    .locals 9

    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    const-string v1, "save.gps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "save.gps.latitude"

    const-string v3, "NA"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "save.gps.longitude"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f010008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f010009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_1

    aget-object v7, v4, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v7, v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    return v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getmIsAutoTransferTestRunning()Z
    .locals 2

    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->mAutoTransferTestRunningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mIsAutoTransferTestRunning:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initAGPSCheckBoxItemStatus(Landroid/widget/CheckBox;Ljava/lang/String;)V
    .locals 2

    const-string v0, "PROPERTY"

    invoke-static {v0, p2}, Lcom/spreadtrum/sgps/SgpsUtils;->getAGPSInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public initAGPSTextViewItemStatus(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "PROPERTY"

    invoke-static {v0, p2}, Lcom/spreadtrum/sgps/SgpsUtils;->getAGPSInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public initAutoCircleTestThread(Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;I)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTTFFTimeoutCont:I

    iput v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtffcont:I

    iput v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistanceCont:I

    iput v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteTestCont:I

    iput v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mLastTtffValue:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestTTFFSum:F

    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTestDistanceSum:F

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSateTracking:[I

    new-array v1, p2, [F

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTtff:[F

    new-array v1, p2, [F

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mDistance:[F

    new-array v1, p2, [D

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFixLatitude:[D

    new-array v1, p2, [D

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mFirstFixLongitude:[D

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTotalInused:[I

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mTotalView:[I

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGpsInUsed:[I

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGpsView:[I

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGlonassInUsed:[I

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGlonassView:[I

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mBeidouInUsed:[I

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mBeidouView:[I

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMinValues:[I

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatelliteInUsedandViewMaxValues:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentMode:Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;

    invoke-virtual {p1}, Lcom/spreadtrum/sgps/SgpsUtils$GPSModeEnum;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/sgps/SgpsUtils;->perpareGpsMode(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public initInfoTextViewItemStatus(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "PROPERTY"

    invoke-static {v0, p2}, Lcom/spreadtrum/sgps/SgpsUtils;->getGPSInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public isGpsOpen()Z
    .locals 2

    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isLocationFixed(Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public modifyCountDown(I)I
    .locals 3

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iget v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mCurrentTimes:I

    rem-int/2addr v2, v0

    aget v0, v1, v2

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1

    :array_0
    .array-data 4
        -0xf
        0xf
        -0xa
        0xa
        -0x5
        0x5
        0x0
    .end array-data
.end method

.method public release()V
    .locals 2

    const-string v0, "SgpsUtils"

    const-string v1, "Releasing wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method public removeGnssStatusListener()V
    .locals 2

    iget-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGnssStatusListener:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    :cond_0
    return-void
.end method

.method public resetAGPSCheckBoxItemStatus(Landroid/widget/CheckBox;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    const-string v1, "PROPERTY"

    invoke-static {v1, p2, v0}, Lcom/spreadtrum/sgps/SgpsUtils;->setAGPSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public resetAGPSTextViewItemStatus(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "PROPERTY"

    invoke-static {v0, p2, p3}, Lcom/spreadtrum/sgps/SgpsUtils;->setAGPSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public resetInfoTextViewItemStatus(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "PROPERTY"

    invoke-static {v0, p2, p3}, Lcom/spreadtrum/sgps/SgpsUtils;->setGPSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCheckBoxListener(Landroid/widget/CheckBox;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/spreadtrum/sgps/SgpsUtils$2;

    invoke-direct {v0, p0, p2}, Lcom/spreadtrum/sgps/SgpsUtils$2;-><init>(Lcom/spreadtrum/sgps/SgpsUtils;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setMOLATrigger(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver selfChange is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SgpsUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "$PSPRD,00,6,1"

    invoke-static {v0}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "$PSPRD,00,6,2"

    invoke-static {v0}, Lcom/spreadtrum/sgps/SocketUtils;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setSatelliteStatus(I[I[F[F[FII[I)V
    .locals 3

    const-string v0, "SgpsUtils"

    const-string v1, "Enter setSatelliteStatus function parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/spreadtrum/sgps/SgpsUtils;->emptyArray()V

    iput p1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    iget-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrns:[I

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSnrs:[F

    iget v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    invoke-static {p3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mElevation:[F

    iget v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    invoke-static {p4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mAzimuth:[F

    iget v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    invoke-static {p5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mUsedInFixMask:[I

    const/16 v2, 0xb

    invoke-static {p8, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setSatelliteStatus(Ljava/lang/Iterable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SgpsUtils"

    const-string v1, "Enter setSatelliteStatus function"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/spreadtrum/sgps/SgpsUtils;->emptyArray()V

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrns:[I

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v5

    aput v5, v4, v1

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSnrs:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    aput v5, v4, v1

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mElevation:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v5

    aput v5, v4, v1

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mAzimuth:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v5

    aput v5, v4, v1

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrns:[I

    aget v4, v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iget-object v6, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mUsedInFixMask:[I

    div-int/lit8 v7, v4, 0x20

    aget v8, v6, v7

    rem-int/lit8 v9, v4, 0x20

    shl-int/2addr v5, v9

    or-int/2addr v5, v8

    aput v5, v6, v7

    :cond_0
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Satellites:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrns:[I

    iget v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    invoke-direct {p0, v2, v3}, Lcom/spreadtrum/sgps/SgpsUtils;->toString([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSnrs:[F

    iget v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    invoke-direct {p0, v2, v3}, Lcom/spreadtrum/sgps/SgpsUtils;->toString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mUsedInFixMask:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Satellites Masks "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mUsedInFixMask:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setSatelliteStatusForGe2(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/spreadtrum/sgps/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SgpsUtils"

    const-string v1, "Enter private getSatelliteStatusForGe2 function"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    iput-object v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGe2Cn_Sr:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x160

    new-array v2, v1, [I

    new-array v1, v1, [F

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spreadtrum/sgps/GpsSatellite;

    invoke-virtual {v4}, Lcom/spreadtrum/sgps/GpsSatellite;->getPrn()I

    move-result v5

    aput v5, v2, v0

    invoke-virtual {v4}, Lcom/spreadtrum/sgps/GpsSatellite;->getSnr()F

    move-result v5

    aput v5, v1, v0

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2, v0}, Lcom/spreadtrum/sgps/SgpsUtils;->toString([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1, v0}, Lcom/spreadtrum/sgps/SgpsUtils;->toString([FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mGe2Cn_Sr:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setmIsAutoTransferTestRunning(Z)V
    .locals 2

    sget-object v0, Lcom/spreadtrum/sgps/SgpsUtils;->mAutoTransferTestRunningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mIsAutoTransferTestRunning:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showLoadingDialog(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/spreadtrum/sgps/LoadingDialog$Builder;

    sget-object v1, Lcom/spreadtrum/sgps/SgpsUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spreadtrum/sgps/LoadingDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/spreadtrum/sgps/LoadingDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/spreadtrum/sgps/LoadingDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spreadtrum/sgps/LoadingDialog$Builder;->setCancelable(Z)Lcom/spreadtrum/sgps/LoadingDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/sgps/LoadingDialog$Builder;->create()Lcom/spreadtrum/sgps/LoadingDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/spreadtrum/sgps/SgpsUtils;->hwndLoadingDialog:Lcom/spreadtrum/sgps/LoadingDialog;

    invoke-virtual {v1}, Lcom/spreadtrum/sgps/LoadingDialog;->show()V

    return-void
.end method

.method public showSUPL2View(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "v2.0.0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public updateSatelliteView(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/spreadtrum/sgps/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SgpsUtils"

    const-string v1, "updateSatelliteView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/spreadtrum/sgps/SgpsUtils;->emptyArray()V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/sgps/GpsSatellite;

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrns:[I

    invoke-virtual {v2}, Lcom/spreadtrum/sgps/GpsSatellite;->getPrn()I

    move-result v4

    aput v4, v3, v0

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSnrs:[F

    invoke-virtual {v2}, Lcom/spreadtrum/sgps/GpsSatellite;->getSnr()F

    move-result v4

    aput v4, v3, v0

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mElevation:[F

    invoke-virtual {v2}, Lcom/spreadtrum/sgps/GpsSatellite;->getElevation()F

    move-result v4

    aput v4, v3, v0

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mAzimuth:[F

    invoke-virtual {v2}, Lcom/spreadtrum/sgps/GpsSatellite;->getAzimuth()F

    move-result v4

    aput v4, v3, v0

    invoke-virtual {v2}, Lcom/spreadtrum/sgps/GpsSatellite;->usedInFix()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mPrns:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v5, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mUsedInFixMask:[I

    div-int/lit8 v6, v3, 0x20

    aget v7, v5, v6

    rem-int/lit8 v8, v3, 0x20

    shl-int/2addr v4, v8

    or-int/2addr v4, v7

    aput v4, v5, v6

    :cond_0
    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/spreadtrum/sgps/SgpsUtils;->mSatellites:I

    :cond_2
    return-void
.end method
