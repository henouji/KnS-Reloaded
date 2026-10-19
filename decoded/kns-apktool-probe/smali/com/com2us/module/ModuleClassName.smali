.class Lcom/com2us/module/ModuleClassName;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field protected static ACTIVEUSER:Ljava/lang/String;

.field protected static ADMANAGER:Ljava/lang/String;

.field protected static C2DM:Ljava/lang/String;

.field protected static CHARTBOOST:Ljava/lang/String;

.field protected static INAPP:Ljava/lang/String;

.field protected static MERCURY:Ljava/lang/String;

.field protected static NEWSBANNER2:Ljava/lang/String;

.field protected static OFFERWALL:Ljava/lang/String;

.field protected static PUSH:Ljava/lang/String;

.field protected static SNSMANAGER:Ljava/lang/String;

.field protected static SOCIALMEDIA:Ljava/lang/String;

.field protected static SPIDER:Ljava/lang/String;

.field protected static TAPJOYMANAGER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "com.com2us.tapjoy.TapjoyManager"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->TAPJOYMANAGER:Ljava/lang/String;

    .line 50
    const-string v0, "com.com2us.ad.mopub.ADManager"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->ADMANAGER:Ljava/lang/String;

    .line 51
    const-string v0, "com.com2us.sns.SnsManager"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->SNSMANAGER:Ljava/lang/String;

    .line 52
    const-string v0, "com.com2us.module.c2dm.C2DM"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->C2DM:Ljava/lang/String;

    .line 53
    const-string v0, "com.com2us.module.push.Push"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->PUSH:Ljava/lang/String;

    .line 54
    const-string v0, "com.com2us.module.inapp.InApp"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->INAPP:Ljava/lang/String;

    .line 55
    const-string v0, "com.com2us.module.activeuser.ActiveUser"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->ACTIVEUSER:Ljava/lang/String;

    .line 56
    const-string v0, "com.com2us.module.newsbanner2.NewsBanner"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->NEWSBANNER2:Ljava/lang/String;

    .line 57
    const-string v0, "com.com2us.cpi.chartboost.ChartBoostManager"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->CHARTBOOST:Ljava/lang/String;

    .line 58
    const-string v0, "com.com2us.module.socialmedia.SocialMedia"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->SOCIALMEDIA:Ljava/lang/String;

    .line 59
    const-string v0, "com.com2us.module.spider.Spider"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->SPIDER:Ljava/lang/String;

    .line 60
    const-string v0, "com.com2us.module.mercury.Mercury"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->MERCURY:Ljava/lang/String;

    .line 61
    const-string v0, "com.com2us.module.offerwall.Offerwall"

    sput-object v0, Lcom/com2us/module/ModuleClassName;->OFFERWALL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
