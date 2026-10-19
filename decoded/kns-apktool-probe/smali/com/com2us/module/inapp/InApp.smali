.class public Lcom/com2us/module/inapp/InApp;
.super Lcom/com2us/module/AppStateAdapter;
.source "InApp.java"

# interfaces
.implements Lcom/com2us/module/Modulable;


# static fields
.field public static final AmazonBilling:I = 0xa

.field public static final GoogleInAppBilling:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GooglePlayBilling:I = 0xf

.field public static final HamiBilling:I = 0x7

.field public static final KDDIBilling:I = 0xb

.field public static final LebiBilling:I = 0x8

.field public static final MBizBilling:I = 0xd

.field public static final MMBilling:I = 0xc

.field public static final MakingVersion:Ljava/lang/String; = "2015.04.13"

.field public static final OZstoreBilling:I = 0x4

.field public static final PlasmaBilling:I = 0x9

.field public static final ThirdPartyBilling:I = 0x5

.field public static final TstoreBilling:I = 0x2

.field public static Version:Ljava/lang/String; = null

.field protected static billingTarget:I = 0x0

.field protected static logger:Lcom/com2us/module/util/Logger; = null

.field public static final ollehMarketBilling:I = 0x3

.field public static final qiipBilling:I = 0x6

.field protected static strBillingTarget:Ljava/lang/String;


# instance fields
.field private billing:Lcom/com2us/module/inapp/DefaultBilling;

.field private iniActivity:Landroid/app/Activity;

.field private iniGlView:Lcom/com2us/module/view/SurfaceViewWrapper;

.field private iniInAppCallback:Lcom/com2us/module/inapp/InAppCallback;

.field private iniLog:Z

.field private isInitialized:Z

.field private isTestServer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "2015.04.13"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->Version:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/com2us/module/inapp/InApp;->billingTarget:I

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 66
    const-string v0, "InApp"

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/inapp/InApp;->logger:Lcom/com2us/module/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/com2us/module/inapp/InAppCallback;)V
    .locals 2
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "inAppCallback"    # Lcom/com2us/module/inapp/InAppCallback;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/com2us/module/AppStateAdapter;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    .line 56
    iput-object v0, p0, Lcom/com2us/module/inapp/InApp;->iniActivity:Landroid/app/Activity;

    .line 57
    iput-object v0, p0, Lcom/com2us/module/inapp/InApp;->iniInAppCallback:Lcom/com2us/module/inapp/InAppCallback;

    .line 58
    iput-object v0, p0, Lcom/com2us/module/inapp/InApp;->iniGlView:Lcom/com2us/module/view/SurfaceViewWrapper;

    .line 59
    iput-boolean v1, p0, Lcom/com2us/module/inapp/InApp;->iniLog:Z

    .line 63
    iput-boolean v1, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    .line 64
    iput-boolean v1, p0, Lcom/com2us/module/inapp/InApp;->isTestServer:Z

    .line 89
    iput-object p1, p0, Lcom/com2us/module/inapp/InApp;->iniActivity:Landroid/app/Activity;

    .line 90
    iput-object p2, p0, Lcom/com2us/module/inapp/InApp;->iniInAppCallback:Lcom/com2us/module/inapp/InAppCallback;

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/inapp/DefaultBilling;->c2sAppID:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/com2us/module/inapp/InAppCallback;Z)V
    .locals 0
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "inAppCallback"    # Lcom/com2us/module/inapp/InAppCallback;
    .param p3, "_log"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/inapp/InApp;-><init>(Landroid/app/Activity;Lcom/com2us/module/inapp/InAppCallback;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/com2us/module/inapp/InAppCallback;ZI)V
    .locals 0
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "inAppCallback"    # Lcom/com2us/module/inapp/InAppCallback;
    .param p3, "_log"    # Z
    .param p4, "_billingTarget"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/inapp/InApp;-><init>(Landroid/app/Activity;Lcom/com2us/module/inapp/InAppCallback;)V

    .line 76
    sput p4, Lcom/com2us/module/inapp/InApp;->billingTarget:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 2
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_glView"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Lcom/com2us/module/AppStateAdapter;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    .line 56
    iput-object v0, p0, Lcom/com2us/module/inapp/InApp;->iniActivity:Landroid/app/Activity;

    .line 57
    iput-object v0, p0, Lcom/com2us/module/inapp/InApp;->iniInAppCallback:Lcom/com2us/module/inapp/InAppCallback;

    .line 58
    iput-object v0, p0, Lcom/com2us/module/inapp/InApp;->iniGlView:Lcom/com2us/module/view/SurfaceViewWrapper;

    .line 59
    iput-boolean v1, p0, Lcom/com2us/module/inapp/InApp;->iniLog:Z

    .line 63
    iput-boolean v1, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    .line 64
    iput-boolean v1, p0, Lcom/com2us/module/inapp/InApp;->isTestServer:Z

    .line 95
    iput-object p1, p0, Lcom/com2us/module/inapp/InApp;->iniActivity:Landroid/app/Activity;

    .line 96
    iput-object p2, p0, Lcom/com2us/module/inapp/InApp;->iniGlView:Lcom/com2us/module/view/SurfaceViewWrapper;

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/inapp/DefaultBilling;->c2sAppID:Ljava/lang/String;

    .line 98
    invoke-static {p0}, Lcom/com2us/module/inapp/InApp;->jniInAppInitialize(Lcom/com2us/module/inapp/InApp;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;Z)V
    .locals 0
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_glView"    # Lcom/com2us/module/view/SurfaceViewWrapper;
    .param p3, "_log"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/inapp/InApp;-><init>(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;ZI)V
    .locals 0
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_glView"    # Lcom/com2us/module/view/SurfaceViewWrapper;
    .param p3, "_log"    # Z
    .param p4, "_billingTarget"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/inapp/InApp;-><init>(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 85
    sput p4, Lcom/com2us/module/inapp/InApp;->billingTarget:I

    .line 86
    return-void
.end method

.method protected static SelectMarket(Ljava/lang/String;Landroid/app/Activity;)Lcom/com2us/module/inapp/DefaultBilling;
    .locals 7
    .param p0, "maketName"    # Ljava/lang/String;
    .param p1, "_activity"    # Landroid/app/Activity;

    .prologue
    .line 190
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 193
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 194
    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 196
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 197
    aput-object p1, v3, v4

    .line 199
    .local v3, "params":[Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/inapp/DefaultBilling;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/com2us/module/inapp/InApp;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->iniActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected static getClassName(IZ)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # I
    .param p1, "setTag"    # Z

    .prologue
    const/4 v0, 0x0

    .line 135
    packed-switch p0, :pswitch_data_0

    .line 182
    :pswitch_0
    if-eqz p1, :cond_0

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :pswitch_1
    if-eqz p1, :cond_1

    const-string v0, "GoogleInAppBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 138
    :cond_1
    const-string v0, "com.com2us.module.inapp.googleinapp.GoogleInAppBilling"

    goto :goto_0

    .line 140
    :pswitch_2
    if-eqz p1, :cond_2

    const-string v0, "TstoreBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 141
    :cond_2
    const-string v0, "com.com2us.module.inapp.tstore.TstoreBilling"

    goto :goto_0

    .line 143
    :pswitch_3
    if-eqz p1, :cond_3

    const-string v0, "ollehMarketBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 144
    :cond_3
    const-string v0, "com.com2us.module.inapp.ollehmarket.ollehMarketBilling"

    goto :goto_0

    .line 146
    :pswitch_4
    if-eqz p1, :cond_4

    const-string v0, "OZstoreBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 147
    :cond_4
    const-string v0, "com.com2us.module.inapp.ozstore.OZstoreBilling"

    goto :goto_0

    .line 149
    :pswitch_5
    if-eqz p1, :cond_5

    const-string v0, "ThirdPartyBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 150
    :cond_5
    const-string v0, "com.com2us.module.inapp.thirdpartybilling.ThirdPartyBilling"

    goto :goto_0

    .line 152
    :pswitch_6
    if-eqz p1, :cond_6

    const-string v0, "qiipBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 153
    :cond_6
    const-string v0, "com.com2us.module.inapp.qiip.qiipBilling"

    goto :goto_0

    .line 155
    :pswitch_7
    if-eqz p1, :cond_7

    const-string v0, "HamiBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 156
    :cond_7
    const-string v0, "com.com2us.module.inapp.hami.HamiBilling"

    goto :goto_0

    .line 158
    :pswitch_8
    if-eqz p1, :cond_8

    const-string v0, "LebiBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 159
    :cond_8
    const-string v0, "com.com2us.module.inapp.lebi.LebiBilling"

    goto :goto_0

    .line 161
    :pswitch_9
    if-eqz p1, :cond_9

    const-string v0, "PlasmaBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 162
    :cond_9
    const-string v0, "com.com2us.module.inapp.plasma.PlasmaBilling"

    goto :goto_0

    .line 164
    :pswitch_a
    if-eqz p1, :cond_a

    const-string v0, "AmazonBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 165
    :cond_a
    const-string v0, "com.com2us.module.inapp.amazon.AmazonBilling"

    goto :goto_0

    .line 167
    :pswitch_b
    if-eqz p1, :cond_b

    const-string v0, "KDDIBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 168
    :cond_b
    const-string v0, "com.com2us.module.inapp.kddi.KDDIBilling"

    goto :goto_0

    .line 170
    :pswitch_c
    if-eqz p1, :cond_c

    const-string v0, "MMBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 171
    :cond_c
    const-string v0, "com.com2us.module.inapp.mm.MMBilling"

    goto :goto_0

    .line 173
    :pswitch_d
    if-eqz p1, :cond_d

    const-string v0, "MBizBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 174
    :cond_d
    const-string v0, "com.com2us.module.inapp.mbiz.MBizBilling"

    goto :goto_0

    .line 179
    :pswitch_e
    if-eqz p1, :cond_e

    const-string v0, "GooglePlayBilling"

    sput-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 180
    :cond_e
    const-string v0, "com.com2us.module.inapp.googleplay.GooglePlayBilling"

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method private iapAuthorizeLicense(Lcom/com2us/module/inapp/LicenseCallback;I)V
    .locals 2
    .param p1, "licenseCB"    # Lcom/com2us/module/inapp/LicenseCallback;
    .param p2, "licenseCBRef"    # I

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 300
    sget v0, Lcom/com2us/module/inapp/InApp;->billingTarget:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->iniActivity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/InApp$2;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/InApp$2;-><init>(Lcom/com2us/module/inapp/InApp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    iput-object p1, v0, Lcom/com2us/module/inapp/DefaultBilling;->licenseCallback:Lcom/com2us/module/inapp/LicenseCallback;

    .line 309
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0, p2}, Lcom/com2us/module/inapp/DefaultBilling;->setLicenseCallbackRef(I)V

    .line 310
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/DefaultBilling;->iapAuthorizeLicense()V

    goto :goto_0
.end method

.method public static native jniInAppInitialize(Lcom/com2us/module/inapp/InApp;)V
.end method

.method public static native jniUninAppInitialize()V
.end method

.method public static native resultPostInApp(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public static native resultPostLicense(IILjava/lang/Object;)V
.end method

.method public static native resultPostTarget(III)V
.end method

.method private selectBillingTarget(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;Lcom/com2us/module/inapp/InAppCallback;I)V
    .locals 3
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_glView"    # Lcom/com2us/module/view/SurfaceViewWrapper;
    .param p3, "_inAppCallback"    # Lcom/com2us/module/inapp/InAppCallback;
    .param p4, "_billingTarget"    # I

    .prologue
    .line 103
    sput p4, Lcom/com2us/module/inapp/InApp;->billingTarget:I

    .line 105
    const/4 v0, 0x1

    invoke-static {p4, v0}, Lcom/com2us/module/inapp/InApp;->getClassName(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/com2us/module/inapp/InApp;->SelectMarket(Ljava/lang/String;Landroid/app/Activity;)Lcom/com2us/module/inapp/DefaultBilling;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    .line 106
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    iget-object v1, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    iget-object v1, v1, Lcom/com2us/module/inapp/DefaultBilling;->VERSION:Ljava/lang/String;

    sget-object v2, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/inapp/DefaultBilling;->setVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    if-nez v0, :cond_2

    .line 112
    sget-object v0, Lcom/com2us/module/inapp/InApp;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0}, Lcom/com2us/module/util/Logger;->isLogged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Lcom/com2us/module/inapp/InApp$1;

    invoke-direct {v0, p0, p1}, Lcom/com2us/module/inapp/InApp$1;-><init>(Lcom/com2us/module/inapp/InApp;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isTestServer:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/DefaultBilling;->iapUseTestServer()V

    .line 123
    :cond_3
    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    .line 124
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0, p3}, Lcom/com2us/module/inapp/DefaultBilling;->setCallback(Lcom/com2us/module/inapp/InAppCallback;)V

    .line 127
    :goto_1
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/DefaultBilling;->VERSION:Ljava/lang/String;

    sput-object v0, Lcom/com2us/module/inapp/InApp;->Version:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0, p2}, Lcom/com2us/module/inapp/DefaultBilling;->setGLView(Lcom/com2us/module/view/SurfaceViewWrapper;)V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/com2us/module/inapp/InApp;->iapUninitialize()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/DefaultBilling;->destroy()V

    .line 384
    :cond_1
    return-void
.end method

.method public getBillingTargetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 340
    sget-object v0, Lcom/com2us/module/inapp/InApp;->strBillingTarget:Ljava/lang/String;

    .line 341
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBillingTargetNumber()I
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 334
    sget v0, Lcom/com2us/module/inapp/InApp;->billingTarget:I

    .line 335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    const-string v0, "InApp"

    return-object v0
.end method

.method public getPermission()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 388
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 389
    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 390
    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    .line 392
    .local v0, "inappPermission":[Ljava/lang/String;
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/DefaultBilling;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/com2us/module/inapp/InApp;->Version:Ljava/lang/String;

    goto :goto_0
.end method

.method public iapAuthorizeLicense(I)V
    .locals 1
    .param p1, "licenseCBRef"    # I

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/com2us/module/inapp/InApp;->iapAuthorizeLicense(Lcom/com2us/module/inapp/LicenseCallback;I)V

    .line 297
    return-void
.end method

.method public iapAuthorizeLicense(Lcom/com2us/module/inapp/LicenseCallback;)V
    .locals 1
    .param p1, "licenseCB"    # Lcom/com2us/module/inapp/LicenseCallback;

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/com2us/module/inapp/InApp;->iapAuthorizeLicense(Lcom/com2us/module/inapp/LicenseCallback;I)V

    .line 294
    return-void
.end method

.method public declared-synchronized iapBuyFinish()V
    .locals 1

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/DefaultBilling;->iapBuyFinish()V

    .line 268
    sget v0, Lcom/com2us/module/inapp/InApp;->billingTarget:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v0, :sswitch_data_0

    .line 278
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 272
    :sswitch_0
    :try_start_1
    sget v0, Lcom/com2us/module/inapp/InApp;->billingTarget:I

    invoke-virtual {p0, v0}, Lcom/com2us/module/inapp/InApp;->iapStoreTarget(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 268
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public declared-synchronized iapBuyItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_1

    .line 260
    if-nez p3, :cond_0

    const-string p3, ""

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/com2us/module/inapp/DefaultBilling;->iapBuyItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_1
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iapInitialize(I[Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6
    .param p1, "billingTarget"    # I
    .param p2, "pids"    # [Ljava/lang/String;
    .param p3, "appid"    # Ljava/lang/String;
    .param p4, "autoVerify"    # Z

    .prologue
    .line 224
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/module/inapp/InApp;->iapInitialize(I[Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method public declared-synchronized iapInitialize(I[Ljava/lang/String;Ljava/lang/String;ZI)I
    .locals 4
    .param p1, "billingTarget"    # I
    .param p2, "pids"    # [Ljava/lang/String;
    .param p3, "appid"    # Ljava/lang/String;
    .param p4, "autoVerify"    # Z
    .param p5, "cbRef"    # I

    .prologue
    const/4 v0, 0x0

    .line 227
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/com2us/module/inapp/InApp;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "DefaultLibrary MakingVersion : 2015.04.13"

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 228
    sget-object v1, Lcom/com2us/module/inapp/InApp;->logger:Lcom/com2us/module/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "billingTarget : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 229
    sget-object v1, Lcom/com2us/module/inapp/InApp;->logger:Lcom/com2us/module/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appid : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 230
    sget-object v1, Lcom/com2us/module/inapp/InApp;->logger:Lcom/com2us/module/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "autoVerify : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/com2us/module/inapp/InApp;->iniActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/com2us/module/inapp/InApp;->iniGlView:Lcom/com2us/module/view/SurfaceViewWrapper;

    iget-object v3, p0, Lcom/com2us/module/inapp/InApp;->iniInAppCallback:Lcom/com2us/module/inapp/InAppCallback;

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/com2us/module/inapp/InApp;->selectBillingTarget(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;Lcom/com2us/module/inapp/InAppCallback;I)V

    .line 233
    iget-object v1, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    if-nez v1, :cond_0

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :goto_0
    monitor-exit p0

    return v0

    .line 237
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    .line 238
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/com2us/module/inapp/DefaultBilling;->iapInitialize([Ljava/lang/String;Ljava/lang/String;ZI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iapInitialize(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "autoVerify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    sget v1, Lcom/com2us/module/inapp/InApp;->billingTarget:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/module/inapp/InApp;->iapInitialize(I[Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method public iapInitialize(Ljava/lang/String;ZI)I
    .locals 6
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "autoVerify"    # Z
    .param p3, "cbRef"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    sget v1, Lcom/com2us/module/inapp/InApp;->billingTarget:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/module/inapp/InApp;->iapInitialize(I[Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method public iapInitialize([Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6
    .param p1, "pids"    # [Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "autoVerify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    sget v1, Lcom/com2us/module/inapp/InApp;->billingTarget:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/module/inapp/InApp;->iapInitialize(I[Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method public iapInitialize([Ljava/lang/String;Ljava/lang/String;ZI)I
    .locals 6
    .param p1, "pids"    # [Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "autoVerify"    # Z
    .param p4, "cbRef"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    sget v1, Lcom/com2us/module/inapp/InApp;->billingTarget:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/module/inapp/InApp;->iapInitialize(I[Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method public iapRequestBalance(Ljava/lang/String;)I
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0, p1}, Lcom/com2us/module/inapp/DefaultBilling;->iapRequestBalance(Ljava/lang/String;)I

    move-result v0

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized iapRestoreItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0, p1}, Lcom/com2us/module/inapp/DefaultBilling;->iapRestoreItem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iapSelectTarget(I)V
    .locals 3
    .param p1, "targetCBRef"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->iniActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/com2us/module/inapp/InApp;->iniGlView:Lcom/com2us/module/view/SurfaceViewWrapper;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/com2us/module/inapp/SelectTarget;->iapSelectTarget(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;Lcom/com2us/module/inapp/SelectTargetCallback;I)V

    .line 320
    return-void
.end method

.method public iapSelectTarget(Lcom/com2us/module/inapp/SelectTargetCallback;)V
    .locals 3
    .param p1, "targetCB"    # Lcom/com2us/module/inapp/SelectTargetCallback;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->iniActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/com2us/module/inapp/SelectTarget;->iapSelectTarget(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;Lcom/com2us/module/inapp/SelectTargetCallback;I)V

    .line 317
    return-void
.end method

.method public declared-synchronized iapStoreEnd()V
    .locals 1

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/DefaultBilling;->iapStoreEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iapStoreStart()V
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/DefaultBilling;->iapStoreStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_0
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected iapStoreTarget(I)V
    .locals 3
    .param p1, "targetNumber"    # I

    .prologue
    .line 323
    sget-object v0, Lcom/com2us/module/inapp/InApp;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iapStoreTarget : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/com2us/module/inapp/InApp;->iniActivity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/com2us/module/inapp/SelectTarget;->iapStoreTarget(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public declared-synchronized iapUninitialize()V
    .locals 1

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isTestServer:Z

    .line 246
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/DefaultBilling;->iapUninitialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_0
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iapUseTestServer()V
    .locals 1

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/DefaultBilling;->iapUseTestServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isTestServer:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityPaused()V
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/DefaultBilling;->pause()V

    .line 403
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0, p1, p2, p3}, Lcom/com2us/module/inapp/DefaultBilling;->activityResult(IILandroid/content/Intent;)V

    .line 408
    :cond_0
    return-void
.end method

.method public onActivityResumed()V
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/DefaultBilling;->resume()V

    .line 398
    :cond_0
    return-void
.end method

.method public setAppIdForIdentity(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 373
    sput-object p1, Lcom/com2us/module/inapp/DefaultBilling;->c2sAppID:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setLogged(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 357
    sget-object v0, Lcom/com2us/module/inapp/InApp;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0, p1}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 359
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 360
    sget-object v0, Lcom/com2us/module/inapp/InApp;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0}, Lcom/com2us/module/util/Logger;->isLogged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->iniActivity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/InApp$3;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/InApp$3;-><init>(Lcom/com2us/module/inapp/InApp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 369
    :cond_0
    return-void
.end method

.method public setUseDialog(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/com2us/module/inapp/InApp;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp;->billing:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-virtual {v0, p1}, Lcom/com2us/module/inapp/DefaultBilling;->setUseDialog(Z)V

    .line 330
    :cond_0
    return-void
.end method
