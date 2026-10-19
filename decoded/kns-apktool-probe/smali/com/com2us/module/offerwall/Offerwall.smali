.class public Lcom/com2us/module/offerwall/Offerwall;
.super Lcom/com2us/module/AppStateAdapter;
.source "Offerwall.java"

# interfaces
.implements Lcom/com2us/module/offerwall/Constants;
.implements Lcom/com2us/module/Modulable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/offerwall/Offerwall$OfferwallCB;,
        Lcom/com2us/module/offerwall/Offerwall$OfferwallCBforMercury;,
        Lcom/com2us/module/offerwall/Offerwall$OfferwallRewardCB;
    }
.end annotation


# static fields
.field public static final OFFERWALL_ACTIVATION:I = -0xe

.field public static final OFFERWALL_CLOSE:I = -0xc

.field public static final OFFERWALL_DEACTIVATION:I = -0xf

.field public static final OFFERWALL_NETWORK_DISCONNECT:I = -0xd

.field public static final OFFERWALL_OPEN:I = -0xb

.field public static final OFFERWALL_REWARD_CANCEL:I = 0x1

.field public static final OFFERWALL_REWARD_FINISH:I = 0x2

.field public static final OFFERWALL_REWARD_IN_PROGRESS:I = 0x3

.field public static final OFFERWALL_REWARD_SUCCESS:I = 0x4

.field private static instance:Lcom/com2us/module/offerwall/Offerwall;

.field private static isNetworkProgressing:Z

.field public static logger:Lcom/com2us/module/util/Logger;


# instance fields
.field private activity:Landroid/app/Activity;

.field private appIdForIdentity:Ljava/lang/String;

.field private bitmapPhone:Landroid/graphics/Bitmap;

.field private bitmapTablet:Landroid/graphics/Bitmap;

.field private cookieDomain:Ljava/lang/String;

.field private cookieManager:Landroid/webkit/CookieManager;

.field private cookieSyncManager:Landroid/webkit/CookieSyncManager;

.field private dialog:Lcom/com2us/module/offerwall/OfferwallDialog;

.field private isInitialized:Z

.field private isShowingOfferWall:Z

.field private isSingleGame:Z

.field private isUsingStaging:Z

.field private mCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallCB;

.field private mCBforMercury:Lcom/com2us/module/offerwall/Offerwall$OfferwallCBforMercury;

.field private mNativeCB:I

.field private mNativeRewardCB:I

.field private mRewardCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallRewardCB;

.field private network:Lcom/com2us/module/offerwall/OfferwallNetwork;

.field private networkRequestThread:Ljava/lang/Thread;

.field private rewardFlag:Z

.field private rewardResult:I

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/com2us/module/offerwall/Offerwall;->instance:Lcom/com2us/module/offerwall/Offerwall;

    .line 26
    sput-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/module/offerwall/Offerwall;->isNetworkProgressing:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "_activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Lcom/com2us/module/AppStateAdapter;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    .line 27
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->appIdForIdentity:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    .line 29
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    .line 30
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->network:Lcom/com2us/module/offerwall/OfferwallNetwork;

    .line 32
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mCBforMercury:Lcom/com2us/module/offerwall/Offerwall$OfferwallCBforMercury;

    .line 33
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallCB;

    .line 34
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mRewardCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallRewardCB;

    .line 35
    iput v1, p0, Lcom/com2us/module/offerwall/Offerwall;->mNativeCB:I

    .line 36
    iput v1, p0, Lcom/com2us/module/offerwall/Offerwall;->mNativeRewardCB:I

    .line 37
    iput-boolean v1, p0, Lcom/com2us/module/offerwall/Offerwall;->isUsingStaging:Z

    .line 39
    iput-boolean v1, p0, Lcom/com2us/module/offerwall/Offerwall;->isSingleGame:Z

    .line 41
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->webView:Landroid/webkit/WebView;

    .line 43
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/com2us/module/offerwall/Offerwall;->isShowingOfferWall:Z

    .line 46
    iput-boolean v1, p0, Lcom/com2us/module/offerwall/Offerwall;->isInitialized:Z

    .line 47
    iput-boolean v1, p0, Lcom/com2us/module/offerwall/Offerwall;->rewardFlag:Z

    .line 48
    iput v1, p0, Lcom/com2us/module/offerwall/Offerwall;->rewardResult:I

    .line 65
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->bitmapPhone:Landroid/graphics/Bitmap;

    .line 66
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->bitmapTablet:Landroid/graphics/Bitmap;

    .line 68
    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->networkRequestThread:Ljava/lang/Thread;

    .line 101
    iput-object p1, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    .line 102
    sput-object p0, Lcom/com2us/module/offerwall/Offerwall;->instance:Lcom/com2us/module/offerwall/Offerwall;

    .line 103
    const-string v0, "Offerwall"

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;Landroid/app/Activity;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 0
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/com2us/module/offerwall/Offerwall;-><init>(Landroid/app/Activity;)V

    .line 109
    invoke-virtual {p0}, Lcom/com2us/module/offerwall/Offerwall;->nativeOfferwallInitialize()V

    .line 110
    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 69
    sput-boolean p0, Lcom/com2us/module/offerwall/Offerwall;->isNetworkProgressing:Z

    return-void
.end method

.method static synthetic access$1(Lcom/com2us/module/offerwall/Offerwall;)Lcom/com2us/module/offerwall/OfferwallNetwork;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->network:Lcom/com2us/module/offerwall/OfferwallNetwork;

    return-object v0
.end method

.method static synthetic access$10(Lcom/com2us/module/offerwall/Offerwall;)V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/com2us/module/offerwall/Offerwall;->syncCookie()V

    return-void
.end method

.method static synthetic access$11(Lcom/com2us/module/offerwall/Offerwall;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/com2us/module/offerwall/Offerwall;->isUsingStaging:Z

    return v0
.end method

.method static synthetic access$12(Lcom/com2us/module/offerwall/Offerwall;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->bitmapPhone:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$13(Lcom/com2us/module/offerwall/Offerwall;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->bitmapTablet:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$14(Lcom/com2us/module/offerwall/Offerwall;Lcom/com2us/module/offerwall/OfferwallDialog;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/com2us/module/offerwall/Offerwall;->dialog:Lcom/com2us/module/offerwall/OfferwallDialog;

    return-void
.end method

.method static synthetic access$15(Lcom/com2us/module/offerwall/Offerwall;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/com2us/module/offerwall/Offerwall;->isShowingOfferWall:Z

    return-void
.end method

.method static synthetic access$2(Lcom/com2us/module/offerwall/Offerwall;I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/com2us/module/offerwall/Offerwall;->rewardResult:I

    return-void
.end method

.method static synthetic access$3(Lcom/com2us/module/offerwall/Offerwall;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/com2us/module/offerwall/Offerwall;->saveOfferwallState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/com2us/module/offerwall/Offerwall;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/com2us/module/offerwall/Offerwall;->saveRewardData([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/com2us/module/offerwall/Offerwall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct/range {p0 .. p6}, Lcom/com2us/module/offerwall/Offerwall;->rewardCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/com2us/module/offerwall/Offerwall;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/com2us/module/offerwall/Offerwall;->isShowingOfferWall:Z

    return v0
.end method

.method static synthetic access$7(Lcom/com2us/module/offerwall/Offerwall;)Lcom/com2us/module/offerwall/OfferwallDialog;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->dialog:Lcom/com2us/module/offerwall/OfferwallDialog;

    return-object v0
.end method

.method static synthetic access$8(Lcom/com2us/module/offerwall/Offerwall;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$9(Lcom/com2us/module/offerwall/Offerwall;I)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/com2us/module/offerwall/Offerwall;->callback(I)V

    return-void
.end method

.method private callback(I)V
    .locals 3
    .param p1, "callbackMsg"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mCBforMercury:Lcom/com2us/module/offerwall/Offerwall$OfferwallCBforMercury;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mCBforMercury:Lcom/com2us/module/offerwall/Offerwall$OfferwallCBforMercury;

    invoke-interface {v0, p1}, Lcom/com2us/module/offerwall/Offerwall$OfferwallCBforMercury;->offerwallCallBackforMercury(I)V

    .line 254
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallCB;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mNativeCB:I

    if-eqz v0, :cond_1

    .line 244
    iget v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mNativeCB:I

    invoke-virtual {p0, v0, p1}, Lcom/com2us/module/offerwall/Offerwall;->nativeOfferwallCallBack(II)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallCB;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mNativeCB:I

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallCB;

    invoke-interface {v0, p1}, Lcom/com2us/module/offerwall/Offerwall$OfferwallCB;->offerwallCallBack(I)V

    goto :goto_0

    .line 252
    :cond_2
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "Offerwall-Callback didn\'t register"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/com2us/module/offerwall/Offerwall;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->instance:Lcom/com2us/module/offerwall/Offerwall;

    return-object v0
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/16 v1, -0xe

    .line 119
    sget-object v2, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "offerwall initialize(uid)"

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 120
    invoke-static {p1}, Lcom/com2us/module/offerwall/OfferwallData;->setUID(Ljava/lang/String;)V

    .line 121
    new-instance v2, Lcom/com2us/module/offerwall/OfferwallNetwork;

    invoke-direct {v2}, Lcom/com2us/module/offerwall/OfferwallNetwork;-><init>()V

    iput-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->network:Lcom/com2us/module/offerwall/OfferwallNetwork;

    .line 123
    iget-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/com2us/module/offerwall/OfferwallData;->create(Landroid/app/Activity;)V

    .line 124
    iget-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/com2us/module/offerwall/OfferwallProperties;->loadProperties(Landroid/content/Context;)V

    .line 125
    const-string v2, "activation"

    invoke-static {v2}, Lcom/com2us/module/offerwall/OfferwallProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "0"

    invoke-direct {p0, v2}, Lcom/com2us/module/offerwall/Offerwall;->saveOfferwallState(Ljava/lang/String;)V

    .line 130
    :cond_0
    const-string v2, "rewardResult"

    invoke-static {v2}, Lcom/com2us/module/offerwall/OfferwallProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 132
    const-string v2, "rewardResult"

    invoke-static {v2}, Lcom/com2us/module/offerwall/OfferwallProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/com2us/module/offerwall/Offerwall;->rewardResult:I

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v2

    iput-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    .line 136
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    iput-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    .line 137
    iget-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v2, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "common/offerwall/btn_native_X.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->bitmapPhone:Landroid/graphics/Bitmap;

    .line 141
    iget-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "common/offerwall/btn_native_X_tablet.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->bitmapTablet:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iget-boolean v2, p0, Lcom/com2us/module/offerwall/Offerwall;->isUsingStaging:Z

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->network:Lcom/com2us/module/offerwall/OfferwallNetwork;

    const-string v3, "http://test.wall.com2us.com/api/init"

    invoke-virtual {v2, v3}, Lcom/com2us/module/offerwall/OfferwallNetwork;->setServer(Ljava/lang/String;)V

    .line 149
    const-string v2, "http://test.wall.com2us.com/"

    iput-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    .line 157
    :goto_1
    iput-boolean v4, p0, Lcom/com2us/module/offerwall/Offerwall;->isInitialized:Z

    .line 159
    const-string v2, "Offerwall"

    const-string v3, "initialize. call reauestNetwork"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/com2us/module/offerwall/Offerwall;->requestNetwork()V

    .line 161
    invoke-virtual {p0}, Lcom/com2us/module/offerwall/Offerwall;->getOfferwallState()I

    move-result v2

    if-ne v2, v1, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/com2us/module/offerwall/Offerwall;->callback(I)V

    .line 162
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->network:Lcom/com2us/module/offerwall/OfferwallNetwork;

    const-string v3, "http://m.wall.com2us.com/api/init"

    invoke-virtual {v2, v3}, Lcom/com2us/module/offerwall/OfferwallNetwork;->setServer(Ljava/lang/String;)V

    .line 154
    const-string v2, "http://m.wall.com2us.com/"

    iput-object v2, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_3
    const/16 v1, -0xf

    goto :goto_2
.end method

.method private requestNetwork()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->networkRequestThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->networkRequestThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "network thread already running"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_0
    return-void

    .line 301
    :cond_0
    new-instance v0, Lcom/com2us/module/offerwall/Offerwall$1;

    invoke-direct {v0, p0}, Lcom/com2us/module/offerwall/Offerwall$1;-><init>(Lcom/com2us/module/offerwall/Offerwall;)V

    iput-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->networkRequestThread:Ljava/lang/Thread;

    .line 364
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->networkRequestThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private rewardCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;
    .param p4, "eventID"    # Ljava/lang/String;
    .param p5, "assetCode"    # Ljava/lang/String;
    .param p6, "assetAmount"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mRewardCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallRewardCB;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mNativeRewardCB:I

    if-eqz v0, :cond_0

    .line 271
    iget v1, p0, Lcom/com2us/module/offerwall/Offerwall;->mNativeRewardCB:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v0, p0

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/com2us/module/offerwall/Offerwall;->nativeOfferwallRewardCallBack(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 283
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mRewardCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallRewardCB;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mNativeRewardCB:I

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->mRewardCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallRewardCB;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/com2us/module/offerwall/Offerwall$OfferwallRewardCB;->offerwallRewardCallBack(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 279
    :cond_1
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "Reward-Callback didn\'t register"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveOfferwallState(Ljava/lang/String;)V
    .locals 4
    .param p1, "activationInfo"    # Ljava/lang/String;

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 401
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "Error: activationInfo string is null"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 405
    :cond_0
    const-string v0, "activation"

    invoke-static {v0, p1}, Lcom/com2us/module/offerwall/OfferwallProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallProperties;->storeProperties(Landroid/content/Context;)V

    .line 407
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saved activation info in file. Value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveRewardData([Ljava/lang/String;)V
    .locals 8
    .param p1, "rewardInfo"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 374
    const-string v0, "rewardEventID"

    aget-object v1, p1, v4

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/OfferwallProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallProperties;->storeProperties(Landroid/content/Context;)V

    .line 376
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "saved reward data in file"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    aget-object v0, p1, v5

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->setAwardResult(Ljava/lang/String;)V

    .line 380
    aget-object v0, p1, v4

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->setEventID(Ljava/lang/String;)V

    .line 381
    aget-object v0, p1, v6

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->setAssetCode(Ljava/lang/String;)V

    .line 382
    aget-object v0, p1, v7

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->setAssetAmount(Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "saved reward data in cookie"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reward Result\n error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 387
    const-string v3, "\n errormsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 388
    const-string v3, "\n result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 389
    const-string v3, "\n eventID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 390
    const-string v3, "\n assetcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 391
    const-string v3, "\n assetaomunt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method private show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 559
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "dialog show(uid, additionalInfo)"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 562
    if-nez p2, :cond_0

    .line 564
    const-string p2, ""

    .line 566
    :cond_0
    if-nez p1, :cond_1

    .line 568
    const-string p1, ""

    .line 570
    :cond_1
    const-string v0, "Offerwall"

    const-string v1, "show. call reauestNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-direct {p0}, Lcom/com2us/module/offerwall/Offerwall;->requestNetwork()V

    .line 573
    invoke-static {p1}, Lcom/com2us/module/offerwall/OfferwallData;->setUID(Ljava/lang/String;)V

    .line 574
    invoke-static {p2}, Lcom/com2us/module/offerwall/OfferwallData;->setAdditionalInfo(Ljava/lang/String;)V

    .line 575
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dialog show(addInfo : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/offerwall/Offerwall$3;

    invoke-direct {v1, p0}, Lcom/com2us/module/offerwall/Offerwall$3;-><init>(Lcom/com2us/module/offerwall/Offerwall;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 602
    return-void
.end method

.method private syncCookie()V
    .locals 5

    .prologue
    .line 488
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "syncCookie"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_appid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_mac="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_lan="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_con="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_devicetype="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_osver="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_libver="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/com2us/module/offerwall/Constants;->Version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_appver="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x7

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_appvercode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_uid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_did="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_vid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_additionalInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_mcc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x11

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_mnc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x12

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x13

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_eventID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_assetcode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xd

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_assetamount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xe

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oq_result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xf

    invoke-static {v3}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 515
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get cookie"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v4, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieDomain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/offerwall/Offerwall;->isShowingOfferWall:Z

    .line 607
    const/16 v0, -0xc

    invoke-direct {p0, v0}, Lcom/com2us/module/offerwall/Offerwall;->callback(I)V

    .line 608
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 648
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->dialog:Lcom/com2us/module/offerwall/OfferwallDialog;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->dialog:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-virtual {v0}, Lcom/com2us/module/offerwall/OfferwallDialog;->destroy()V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->bitmapPhone:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->bitmapPhone:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 653
    iput-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->bitmapPhone:Landroid/graphics/Bitmap;

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->bitmapTablet:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->bitmapTablet:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 658
    iput-object v1, p0, Lcom/com2us/module/offerwall/Offerwall;->bitmapTablet:Landroid/graphics/Bitmap;

    .line 661
    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    const-string v0, "Offerwall"

    return-object v0
.end method

.method public getOfferwallState()I
    .locals 5

    .prologue
    .line 412
    const/4 v0, -0x1

    .line 413
    .local v0, "offerwallState":I
    const-string v2, "activation"

    invoke-static {v2}, Lcom/com2us/module/offerwall/OfferwallProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "offerwallStateString":Ljava/lang/String;
    sget-boolean v2, Lcom/com2us/module/offerwall/Offerwall;->isNetworkProgressing:Z

    if-eqz v2, :cond_1

    .line 417
    const/4 v0, 0x2

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 419
    :cond_1
    if-nez v1, :cond_2

    .line 421
    sget-object v2, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Offerwall"

    const-string v4, "Error: Failed to get activation value from property"

    invoke-virtual {v2, v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_2
    sget-object v2, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "offerwallStateString : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 426
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 427
    if-nez v0, :cond_3

    .line 429
    const/16 v0, -0xf

    .line 430
    goto :goto_0

    .line 431
    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 433
    const/16 v0, -0xe

    goto :goto_0
.end method

.method public getPermission()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->PERMISSION:[Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->Version:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Ljava/lang/String;ZLcom/com2us/module/offerwall/Offerwall$OfferwallCB;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "_isUsingStaging"    # Z
    .param p3, "callback"    # Lcom/com2us/module/offerwall/Offerwall$OfferwallCB;

    .prologue
    .line 167
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "offerwall initialize(uid, isStaging, callback)"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 169
    iput-object p3, p0, Lcom/com2us/module/offerwall/Offerwall;->mCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallCB;

    .line 171
    iput-boolean p2, p0, Lcom/com2us/module/offerwall/Offerwall;->isUsingStaging:Z

    .line 172
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/com2us/module/offerwall/Offerwall;->isUsingStaging:Z

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/OfferwallData;->setDID(Landroid/content/Context;Z)V

    .line 174
    invoke-direct {p0, p1}, Lcom/com2us/module/offerwall/Offerwall;->initialize(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public initializeEx(Ljava/lang/String;ZLcom/com2us/module/offerwall/Offerwall$OfferwallCB;Lcom/com2us/module/offerwall/Offerwall$OfferwallRewardCB;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "_isUsingStaging"    # Z
    .param p3, "callback"    # Lcom/com2us/module/offerwall/Offerwall$OfferwallCB;
    .param p4, "rewardCallBack"    # Lcom/com2us/module/offerwall/Offerwall$OfferwallRewardCB;

    .prologue
    .line 180
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "offerwall initializeEx(uid, isStaging, callback, rewardCallback)"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 182
    iput-object p3, p0, Lcom/com2us/module/offerwall/Offerwall;->mCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallCB;

    .line 183
    iput-object p4, p0, Lcom/com2us/module/offerwall/Offerwall;->mRewardCB:Lcom/com2us/module/offerwall/Offerwall$OfferwallRewardCB;

    .line 185
    iput-boolean p2, p0, Lcom/com2us/module/offerwall/Offerwall;->isUsingStaging:Z

    .line 186
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/com2us/module/offerwall/Offerwall;->isUsingStaging:Z

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/OfferwallData;->setDID(Landroid/content/Context;Z)V

    .line 188
    invoke-direct {p0, p1}, Lcom/com2us/module/offerwall/Offerwall;->initialize(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public nativeInitialize(Ljava/lang/String;II)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "_isUsingStaging"    # I
    .param p3, "offerwallCallback"    # I

    .prologue
    const/4 v2, 0x1

    .line 199
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "offerwall nativeInitialize(uid, isStaging, callback)"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 201
    iput p3, p0, Lcom/com2us/module/offerwall/Offerwall;->mNativeCB:I

    .line 203
    if-ne v2, p2, :cond_0

    .line 205
    iput-boolean v2, p0, Lcom/com2us/module/offerwall/Offerwall;->isUsingStaging:Z

    .line 212
    :goto_0
    invoke-direct {p0, p1}, Lcom/com2us/module/offerwall/Offerwall;->initialize(Ljava/lang/String;)V

    .line 213
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/offerwall/Offerwall;->isUsingStaging:Z

    goto :goto_0
.end method

.method public nativeInitializeEx(Ljava/lang/String;III)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "_isUsingStaging"    # I
    .param p3, "offerwallCallback"    # I
    .param p4, "rewardCallback"    # I

    .prologue
    const/4 v0, 0x1

    .line 219
    iput p3, p0, Lcom/com2us/module/offerwall/Offerwall;->mNativeCB:I

    .line 220
    iput p4, p0, Lcom/com2us/module/offerwall/Offerwall;->mNativeRewardCB:I

    .line 222
    if-ne v0, p2, :cond_0

    .line 224
    iput-boolean v0, p0, Lcom/com2us/module/offerwall/Offerwall;->isUsingStaging:Z

    .line 231
    :goto_0
    invoke-direct {p0, p1}, Lcom/com2us/module/offerwall/Offerwall;->initialize(Ljava/lang/String;)V

    .line 232
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/offerwall/Offerwall;->isUsingStaging:Z

    goto :goto_0
.end method

.method public native nativeOfferwallCallBack(II)V
.end method

.method public native nativeOfferwallInitialize()V
.end method

.method public native nativeOfferwallRewardCallBack(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public onActivityPaused()V
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/com2us/module/offerwall/Offerwall;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 683
    :cond_0
    return-void
.end method

.method public onActivityResumed()V
    .locals 2

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/com2us/module/offerwall/Offerwall;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 672
    const-string v0, "Offerwall"

    const-string v1, "onActivityResumed. call reauestNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-direct {p0}, Lcom/com2us/module/offerwall/Offerwall;->requestNetwork()V

    .line 675
    :cond_0
    return-void
.end method

.method public rewardFinish()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 444
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "Called rewardFinish"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v0, Lcom/com2us/module/offerwall/Offerwall$2;

    invoke-direct {v0, p0}, Lcom/com2us/module/offerwall/Offerwall$2;-><init>(Lcom/com2us/module/offerwall/Offerwall;)V

    .line 482
    invoke-virtual {v0}, Lcom/com2us/module/offerwall/Offerwall$2;->start()V

    .line 483
    return-void
.end method

.method public setAppIdForIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/com2us/module/offerwall/Offerwall;->appIdForIdentity:Ljava/lang/String;

    .line 644
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall;->appIdForIdentity:Ljava/lang/String;

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->setAppID(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public setCBforMercury(Lcom/com2us/module/offerwall/Offerwall$OfferwallCBforMercury;)V
    .locals 0
    .param p1, "CBforMercury"    # Lcom/com2us/module/offerwall/Offerwall$OfferwallCBforMercury;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/com2us/module/offerwall/Offerwall;->mCBforMercury:Lcom/com2us/module/offerwall/Offerwall$OfferwallCBforMercury;

    .line 194
    return-void
.end method

.method public setLogged(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 639
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0, p1}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 640
    return-void
.end method

.method public setRewardFlag(I)Z
    .locals 6
    .param p1, "reward"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 612
    sget-object v2, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Offerwall"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setRewardFlag : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    if-nez p1, :cond_0

    .line 615
    iput-boolean v1, p0, Lcom/com2us/module/offerwall/Offerwall;->rewardFlag:Z

    .line 625
    :goto_0
    return v0

    .line 618
    :cond_0
    if-ne v0, p1, :cond_1

    .line 620
    iput-boolean v0, p0, Lcom/com2us/module/offerwall/Offerwall;->rewardFlag:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 625
    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 523
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "dialog show()"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 524
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->setPath(I)V

    .line 525
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/com2us/module/offerwall/Offerwall;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2
    .param p1, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 533
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "dialog show(additionalInfo)"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 534
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->setPath(I)V

    .line 535
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/com2us/module/offerwall/Offerwall;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public showEx(Ljava/lang/String;)V
    .locals 2
    .param p1, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 543
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "dialog showEx(addtionalInfo)"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 544
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->setPath(I)V

    .line 545
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/com2us/module/offerwall/Offerwall;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public showExforMercury(Ljava/lang/String;)V
    .locals 2
    .param p1, "addtionalInfo"    # Ljava/lang/String;

    .prologue
    .line 552
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "dialog showExforMercury(addtionalInfo)"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 553
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->setPath(I)V

    .line 554
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/com2us/module/offerwall/Offerwall;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-void
.end method
