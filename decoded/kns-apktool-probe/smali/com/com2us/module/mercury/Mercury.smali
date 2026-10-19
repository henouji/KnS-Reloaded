.class public Lcom/com2us/module/mercury/Mercury;
.super Lcom/com2us/module/AppStateAdapter;
.source "Mercury.java"

# interfaces
.implements Lcom/com2us/module/mercury/Constants;
.implements Lcom/com2us/module/Modulable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/mercury/Mercury$MercuryCB;,
        Lcom/com2us/module/mercury/Mercury$OfferwallCBs;
    }
.end annotation


# static fields
.field public static final MERCURY_CLOSE:I = -0x7

.field public static final MERCURY_EVENT_FORCE_SHOW:I = -0xe

.field public static final MERCURY_EVENT_SHOW:I = -0xd

.field public static final MERCURY_FORCED_CLOSE:I = -0x9

.field public static final MERCURY_FORCED_OPEN:I = -0x8

.field public static final MERCURY_NETWORK_DISCONNECT:I = -0xa

.field public static final MERCURY_NOTICE_EX_SHOW:I = -0xf

.field public static final MERCURY_NOTICE_FORCE_SHOW:I = -0xc

.field public static final MERCURY_NOTICE_SHOW:I = -0xb

.field public static final MERCURY_OPEN:I = -0x6

.field public static logger:Lcom/com2us/module/util/Logger;

.field private static savedUserID:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private appIdForIdentity:Ljava/lang/String;

.field private bIgnoreForcedFlag:Z

.field private bitmapClose:Landroid/graphics/Bitmap;

.field private bitmapWebViewBorder0:Landroid/graphics/Bitmap;

.field private bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

.field private bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

.field private bitmapWebViewBorder2:Landroid/graphics/Bitmap;

.field private cookieManager:Landroid/webkit/CookieManager;

.field private cookieSyncManager:Landroid/webkit/CookieSyncManager;

.field private dialog:Lcom/com2us/module/mercury/MercuryDialog;

.field private isShowing:Z

.field private isUsingStaging:Z

.field private mCB:Lcom/com2us/module/mercury/Mercury$MercuryCB;

.field private mNativeCB:I

.field private message:Ljava/lang/String;

.field private network:Lcom/com2us/module/mercury/MercuryNetwork;

.field private offerwall:Lcom/com2us/module/offerwall/Offerwall;

.field private webViewCount:I

.field private webViewJSONArr:Lorg/json/JSONArray;

.field private webViewShow:I

.field private webViewShowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    .line 49
    sput-object v0, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Lcom/com2us/module/AppStateAdapter;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    .line 33
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->appIdForIdentity:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    .line 35
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    .line 36
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->network:Lcom/com2us/module/mercury/MercuryNetwork;

    .line 38
    iput v1, p0, Lcom/com2us/module/mercury/Mercury;->webViewShow:I

    .line 39
    iput v1, p0, Lcom/com2us/module/mercury/Mercury;->webViewShowType:I

    .line 40
    iput v1, p0, Lcom/com2us/module/mercury/Mercury;->webViewCount:I

    .line 43
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->mCB:Lcom/com2us/module/mercury/Mercury$MercuryCB;

    .line 44
    iput v1, p0, Lcom/com2us/module/mercury/Mercury;->mNativeCB:I

    .line 45
    iput-boolean v1, p0, Lcom/com2us/module/mercury/Mercury;->isUsingStaging:Z

    .line 46
    iput-boolean v1, p0, Lcom/com2us/module/mercury/Mercury;->isShowing:Z

    .line 48
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->message:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapClose:Landroid/graphics/Bitmap;

    .line 66
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    .line 67
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    .line 68
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

    .line 69
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    .line 72
    iput-boolean v1, p0, Lcom/com2us/module/mercury/Mercury;->bIgnoreForcedFlag:Z

    .line 75
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->offerwall:Lcom/com2us/module/offerwall/Offerwall;

    .line 97
    invoke-direct {p0, p1}, Lcom/com2us/module/mercury/Mercury;->initialize(Landroid/app/Activity;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Lcom/com2us/module/AppStateAdapter;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    .line 33
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->appIdForIdentity:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    .line 35
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    .line 36
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->network:Lcom/com2us/module/mercury/MercuryNetwork;

    .line 38
    iput v1, p0, Lcom/com2us/module/mercury/Mercury;->webViewShow:I

    .line 39
    iput v1, p0, Lcom/com2us/module/mercury/Mercury;->webViewShowType:I

    .line 40
    iput v1, p0, Lcom/com2us/module/mercury/Mercury;->webViewCount:I

    .line 43
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->mCB:Lcom/com2us/module/mercury/Mercury$MercuryCB;

    .line 44
    iput v1, p0, Lcom/com2us/module/mercury/Mercury;->mNativeCB:I

    .line 45
    iput-boolean v1, p0, Lcom/com2us/module/mercury/Mercury;->isUsingStaging:Z

    .line 46
    iput-boolean v1, p0, Lcom/com2us/module/mercury/Mercury;->isShowing:Z

    .line 48
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->message:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapClose:Landroid/graphics/Bitmap;

    .line 66
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    .line 67
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    .line 68
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

    .line 69
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    .line 72
    iput-boolean v1, p0, Lcom/com2us/module/mercury/Mercury;->bIgnoreForcedFlag:Z

    .line 75
    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->offerwall:Lcom/com2us/module/offerwall/Offerwall;

    .line 102
    invoke-direct {p0, p1}, Lcom/com2us/module/mercury/Mercury;->initialize(Landroid/app/Activity;)V

    .line 103
    invoke-virtual {p0}, Lcom/com2us/module/mercury/Mercury;->nativeMercuryInitialize()V

    .line 104
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/mercury/Mercury;)Lcom/com2us/module/mercury/MercuryNetwork;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->network:Lcom/com2us/module/mercury/MercuryNetwork;

    return-object v0
.end method

.method static synthetic access$1(Lcom/com2us/module/mercury/Mercury;I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/com2us/module/mercury/Mercury;->webViewCount:I

    return-void
.end method

.method static synthetic access$2(Lcom/com2us/module/mercury/Mercury;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/com2us/module/mercury/Mercury;->webViewCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/com2us/module/mercury/Mercury;I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/com2us/module/mercury/Mercury;->webViewShow:I

    return-void
.end method

.method static synthetic access$4(Lcom/com2us/module/mercury/Mercury;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/com2us/module/mercury/Mercury;->webViewShowType:I

    return-void
.end method

.method static synthetic access$5(Lcom/com2us/module/mercury/Mercury;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/com2us/module/mercury/Mercury;->webViewJSONArr:Lorg/json/JSONArray;

    return-void
.end method

.method static synthetic access$6(Lcom/com2us/module/mercury/Mercury;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->webViewJSONArr:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$7(Lcom/com2us/module/mercury/Mercury;)V
    .locals 0

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->sendNetworkDisconnectCallback()V

    return-void
.end method

.method static synthetic access$8(Lcom/com2us/module/mercury/Mercury;I)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/com2us/module/mercury/Mercury;->callback(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/com2us/module/mercury/Mercury;)V
    .locals 0

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->loadDialog()V

    return-void
.end method

.method private callback(I)V
    .locals 1
    .param p1, "callbackMsg"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->mCB:Lcom/com2us/module/mercury/Mercury$MercuryCB;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/com2us/module/mercury/Mercury;->mNativeCB:I

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0, p1}, Lcom/com2us/module/mercury/Mercury;->nativeMercuryCallBack(I)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->mCB:Lcom/com2us/module/mercury/Mercury$MercuryCB;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/com2us/module/mercury/Mercury;->mNativeCB:I

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->mCB:Lcom/com2us/module/mercury/Mercury$MercuryCB;

    invoke-interface {v0, p1}, Lcom/com2us/module/mercury/Mercury$MercuryCB;->mercuryCallBack(I)V

    goto :goto_0
.end method

.method private deleteExpiredPID()Z
    .locals 9

    .prologue
    .line 212
    invoke-static {}, Lcom/com2us/module/mercury/MercuryProperties;->getPIDList()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "pidList":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 215
    const-string v6, "Mercury"

    const-string v7, "PID List isn\'t exist"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v6, 0x0

    .line 241
    :goto_0
    return v6

    .line 221
    :cond_0
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "pidArray":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "today":Ljava/lang/String;
    array-length v3, v1

    .line 227
    .local v3, "pidlistCount":I
    const-string v4, ""

    .line 228
    .local v4, "savedOffAutoDate":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_1

    .line 239
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryProperties;->storeProperties(Landroid/content/Context;)V

    .line 241
    const/4 v6, 0x1

    goto :goto_0

    .line 230
    :cond_1
    aget-object v6, v1, v0

    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 233
    aget-object v6, v1, v0

    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryProperties;->removeProperties(Ljava/lang/String;)V

    .line 234
    const-string v6, "Mercury"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "deleted pid: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v1, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_2
    const-string v6, "Mercury"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pid array["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Today:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private expireCookie()V
    .locals 5

    .prologue
    .line 542
    sget-object v1, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "Mercury"

    const-string v3, "expireCookie"

    invoke-virtual {v1, v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, ";expires=Mon, 17 Oct 2011 10:47:11 UTC;"

    .line 545
    .local v0, "expireStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_appid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_mac="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_lan="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_con="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_devicetype="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_osver="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_libver="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_appver="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_appvercode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_orient="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_did="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_vid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_additionalInfo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_mcc="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://.com2us.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mq_mnc="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 563
    return-void
.end method

.method private getServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/com2us/module/mercury/Mercury;->isUsingStaging:Z

    if-eqz v0, :cond_0

    .line 569
    const-string v0, "http://test.mercury.com2us.com/init"

    .line 573
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://m.mercury.com2us.com/init"

    goto :goto_0
.end method

.method private initialize(Landroid/app/Activity;)V
    .locals 5
    .param p1, "_activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    .line 108
    iput-object p1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    .line 110
    const-string v1, "Mercury"

    iget-object v2, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;Landroid/app/Activity;)Lcom/com2us/module/util/Logger;

    move-result-object v1

    sput-object v1, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    .line 112
    new-instance v1, Lcom/com2us/module/mercury/MercuryNetwork;

    invoke-direct {v1}, Lcom/com2us/module/mercury/MercuryNetwork;-><init>()V

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->network:Lcom/com2us/module/mercury/MercuryNetwork;

    .line 114
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryProperties;->loadProperties(Landroid/content/Context;)V

    .line 116
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryData;->create(Landroid/app/Activity;)V

    .line 117
    const-string v1, ""

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryData;->setAdditionalInfo(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    .line 119
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    .line 120
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v1, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 122
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->deleteExpiredPID()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    sget-object v1, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "Mercury"

    const-string v3, " You don\'t have to delete pid list"

    invoke-virtual {v1, v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/btn_native_X.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapClose:Landroid/graphics/Bitmap;

    .line 129
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 145
    :pswitch_0
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 146
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/0_length_outline.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    .line 147
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/1_length_box_check_d.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    .line 148
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/1_length_box_check_s.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

    .line 149
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/2_length_box_close.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    .line 163
    :goto_0
    return-void

    .line 132
    :pswitch_1
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/0_length_outline.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    .line 133
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/1_length_box_check_d.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    .line 134
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/1_length_box_check_s.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

    .line 135
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/2_length_box_close.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/0_wide_outline.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    .line 140
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/1_wide_box_check_d.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    .line 141
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/1_wide_box_check_s.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

    .line 142
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/2_wide_box_close.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/0_wide_outline.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    .line 153
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/1_wide_box_check_d.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    .line 154
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/1_wide_box_check_s.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

    .line 155
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "common/mercury/2_wide_box_close.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private load()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/mercury/Mercury$3;

    invoke-direct {v1, p0}, Lcom/com2us/module/mercury/Mercury$3;-><init>(Lcom/com2us/module/mercury/Mercury;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 749
    return-void
.end method

.method private loadDialog()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 652
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dialog show. webViewCount : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/com2us/module/mercury/Mercury;->webViewCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 653
    new-instance v0, Lcom/com2us/module/mercury/MercuryDialog;

    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/com2us/module/mercury/MercuryDialog;-><init>(Lcom/com2us/module/mercury/Mercury;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->dialog:Lcom/com2us/module/mercury/MercuryDialog;

    .line 654
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->dialog:Lcom/com2us/module/mercury/MercuryDialog;

    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->bitmapClose:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/com2us/module/mercury/Mercury;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/module/mercury/MercuryDialog;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 655
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/com2us/module/mercury/Mercury;->webViewCount:I

    if-gt v0, v7, :cond_0

    .line 725
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->dialog:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v0}, Lcom/com2us/module/mercury/MercuryDialog;->getLayoutListsize()I

    move-result v0

    iput v0, p0, Lcom/com2us/module/mercury/Mercury;->webViewCount:I

    .line 727
    iget v0, p0, Lcom/com2us/module/mercury/Mercury;->webViewCount:I

    if-lez v0, :cond_8

    .line 729
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->dialog:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v0}, Lcom/com2us/module/mercury/MercuryDialog;->show()V

    .line 730
    iput-boolean v14, p0, Lcom/com2us/module/mercury/Mercury;->isShowing:Z

    .line 731
    invoke-virtual {p0}, Lcom/com2us/module/mercury/Mercury;->sendOpenCallback()V

    .line 737
    :goto_1
    return-void

    .line 658
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->webViewJSONArr:Lorg/json/JSONArray;

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 659
    .local v9, "jsonObject":Lorg/json/JSONObject;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 660
    .local v12, "today":Ljava/lang/String;
    const-string v0, "webview_type"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 663
    .local v13, "webViewType":Ljava/lang/String;
    iget v0, p0, Lcom/com2us/module/mercury/Mercury;->webViewShowType:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/com2us/module/mercury/Mercury;->webViewShow:I

    if-ne v14, v0, :cond_2

    move v8, v14

    .line 665
    .local v8, "isTypeAllAndisInitShow":Z
    :goto_2
    if-eqz v8, :cond_3

    const-string v0, "cpi"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 667
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Mercury"

    const-string v2, "LoadDialog Type : CPI"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v0, "pid"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 670
    .local v10, "pid":Ljava/lang/String;
    invoke-static {v10}, Lcom/com2us/module/mercury/MercuryProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 672
    .local v11, "savedOffAutoDate":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 674
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 655
    .end local v8    # "isTypeAllAndisInitShow":Z
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "pid":Ljava/lang/String;
    .end local v11    # "savedOffAutoDate":Ljava/lang/String;
    .end local v12    # "today":Ljava/lang/String;
    .end local v13    # "webViewType":Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 663
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "today":Ljava/lang/String;
    .restart local v13    # "webViewType":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 680
    .restart local v8    # "isTypeAllAndisInitShow":Z
    :cond_3
    if-eqz v8, :cond_5

    const-string v0, "fullbanner"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 682
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Mercury"

    const-string v2, "LoadDialog Type : FULLBANNER"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v0, "pid"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 685
    .restart local v10    # "pid":Ljava/lang/String;
    invoke-static {v10}, Lcom/com2us/module/mercury/MercuryProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 687
    .restart local v11    # "savedOffAutoDate":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 689
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    .end local v10    # "pid":Ljava/lang/String;
    .end local v11    # "savedOffAutoDate":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->dialog:Lcom/com2us/module/mercury/MercuryDialog;

    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->dialog:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v1}, Lcom/com2us/module/mercury/MercuryDialog;->getLayoutListsize()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Lcom/com2us/module/mercury/MercuryDialog;->initMercuryLayout(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 721
    .end local v8    # "isTypeAllAndisInitShow":Z
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "today":Ljava/lang/String;
    .end local v13    # "webViewType":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 722
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 696
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v8    # "isTypeAllAndisInitShow":Z
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "today":Ljava/lang/String;
    .restart local v13    # "webViewType":Ljava/lang/String;
    :cond_5
    if-eqz v8, :cond_6

    :try_start_1
    const-string v0, "main"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 698
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Mercury"

    const-string v2, "LoadDialog Type : MAIN"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v0, "Mercury_Main_OffAuto_Date"

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 700
    .restart local v11    # "savedOffAutoDate":Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 705
    .end local v11    # "savedOffAutoDate":Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_7

    .line 707
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Mercury"

    const-string v2, "undefined webview_type"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 710
    :cond_7
    iget-boolean v0, p0, Lcom/com2us/module/mercury/Mercury;->bIgnoreForcedFlag:Z

    if-eqz v0, :cond_4

    const-string v0, "main"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 712
    const-string v0, "Mercury_Main_OffAuto_Date"

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 713
    .restart local v11    # "savedOffAutoDate":Ljava/lang/String;
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Mercury"

    const-string v2, "LoadDialog Type : MAIN without Forced Option"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    if-eqz v11, :cond_4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 735
    .end local v8    # "isTypeAllAndisInitShow":Z
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "savedOffAutoDate":Ljava/lang/String;
    .end local v12    # "today":Ljava/lang/String;
    .end local v13    # "webViewType":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/com2us/module/mercury/Mercury;->sendCloseCallback()V

    goto/16 :goto_1
.end method

.method private requestNetwork()V
    .locals 1

    .prologue
    .line 580
    new-instance v0, Lcom/com2us/module/mercury/Mercury$1;

    invoke-direct {v0, p0}, Lcom/com2us/module/mercury/Mercury$1;-><init>(Lcom/com2us/module/mercury/Mercury;)V

    .line 632
    invoke-virtual {v0}, Lcom/com2us/module/mercury/Mercury$1;->start()V

    .line 634
    return-void
.end method

.method private sendNetworkDisconnectCallback()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/mercury/Mercury$2;

    invoke-direct {v1, p0}, Lcom/com2us/module/mercury/Mercury$2;-><init>(Lcom/com2us/module/mercury/Mercury;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 646
    return-void
.end method

.method public static setUid(Ljava/lang/String;)V
    .locals 0
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-static {p0}, Lcom/com2us/module/mercury/MercuryData;->setUID(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private setUidCheckMSG()V
    .locals 13

    .prologue
    const/16 v12, 0x12

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 441
    const/16 v10, 0xa

    invoke-static {v10}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "currentUserID":Ljava/lang/String;
    if-eqz v1, :cond_0

    sget-object v10, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 444
    :cond_0
    sget-object v9, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v10, "Mercury"

    const-string v11, "saavedUserID is null. (first time call)"

    invoke-virtual {v9, v10, v11}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 449
    .local v0, "cUidLength":I
    sget-object v10, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    .line 451
    .local v7, "sUidLength":I
    sget-object v10, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    if-eqz v10, :cond_2

    sget-object v10, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    move v3, v9

    .line 452
    .local v3, "isUidNull":Z
    :goto_1
    if-eqz v1, :cond_3

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    move v5, v9

    .line 453
    .local v5, "isUserIdNull":Z
    :goto_2
    if-lez v7, :cond_4

    if-le v12, v7, :cond_4

    move v2, v4

    .line 454
    .local v2, "isUidCorrectSize":Z
    :goto_3
    if-lez v0, :cond_5

    if-le v12, v0, :cond_5

    .line 456
    .local v4, "isUserIdCorrectSize":Z
    :goto_4
    const-string v6, "uid is null"

    .line 457
    .local v6, "nullMsg":Ljava/lang/String;
    const-string v8, "uid is undefined size string"

    .line 459
    .local v8, "uncorrectSizeMsg":Ljava/lang/String;
    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    .line 461
    const-string v9, ""

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryData;->setUID(Ljava/lang/String;)V

    .line 462
    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryData;->setUidCheckMSG(Ljava/lang/String;)V

    .line 493
    :goto_5
    sget-object v9, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v10, "Mercury"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "UidCheck Result : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x10

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "isUidCorrectSize":Z
    .end local v3    # "isUidNull":Z
    .end local v4    # "isUserIdCorrectSize":Z
    .end local v5    # "isUserIdNull":Z
    .end local v6    # "nullMsg":Ljava/lang/String;
    .end local v8    # "uncorrectSizeMsg":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 451
    goto :goto_1

    .restart local v3    # "isUidNull":Z
    :cond_3
    move v5, v4

    .line 452
    goto :goto_2

    .restart local v5    # "isUserIdNull":Z
    :cond_4
    move v2, v9

    .line 453
    goto :goto_3

    .restart local v2    # "isUidCorrectSize":Z
    :cond_5
    move v4, v9

    .line 454
    goto :goto_4

    .line 464
    .restart local v4    # "isUserIdCorrectSize":Z
    .restart local v6    # "nullMsg":Ljava/lang/String;
    .restart local v8    # "uncorrectSizeMsg":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_7

    if-nez v4, :cond_7

    .line 466
    invoke-static {v8}, Lcom/com2us/module/mercury/MercuryData;->setUidCheckMSG(Ljava/lang/String;)V

    goto :goto_5

    .line 468
    :cond_7
    if-nez v2, :cond_8

    if-eqz v5, :cond_8

    .line 470
    sget-object v9, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryData;->setUID(Ljava/lang/String;)V

    .line 471
    invoke-static {v8}, Lcom/com2us/module/mercury/MercuryData;->setUidCheckMSG(Ljava/lang/String;)V

    goto :goto_5

    .line 473
    :cond_8
    if-nez v2, :cond_9

    if-nez v4, :cond_9

    .line 475
    sget-object v9, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryData;->setUID(Ljava/lang/String;)V

    .line 476
    invoke-static {v8}, Lcom/com2us/module/mercury/MercuryData;->setUidCheckMSG(Ljava/lang/String;)V

    goto :goto_5

    .line 478
    :cond_9
    if-nez v3, :cond_a

    if-nez v2, :cond_a

    sget-object v9, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 480
    sget-object v9, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryData;->setUID(Ljava/lang/String;)V

    .line 481
    invoke-static {v8}, Lcom/com2us/module/mercury/MercuryData;->setUidCheckMSG(Ljava/lang/String;)V

    goto :goto_5

    .line 483
    :cond_a
    if-nez v3, :cond_b

    if-eqz v2, :cond_b

    sget-object v9, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 485
    sget-object v9, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryData;->setUID(Ljava/lang/String;)V

    .line 486
    const-string v9, "success"

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryData;->setUidCheckMSG(Ljava/lang/String;)V

    goto :goto_5

    .line 490
    :cond_b
    const-string v9, "success"

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryData;->setUidCheckMSG(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private syncCookie()V
    .locals 6

    .prologue
    const/16 v4, 0xa

    .line 499
    sget-object v1, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "Mercury"

    const-string v3, "syncCookie"

    invoke-virtual {v1, v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "domain":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v4, :cond_1

    .line 503
    iget-boolean v1, p0, Lcom/com2us/module/mercury/Mercury;->isUsingStaging:Z

    if-eqz v1, :cond_0

    .line 505
    const-string v0, "http://test.mercury.com2us.com"

    .line 517
    :goto_0
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_appid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_mac="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_lan="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_con="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_devicetype="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_osver="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_libver="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/com2us/module/mercury/Constants;->Version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_appver="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x7

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_appvercode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_orient="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_uid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_did="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_vid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x11

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_additionalInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x12

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_mcc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x13

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mq_mnc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x14

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 536
    sget-object v1, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "Mercury"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get cookie"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/com2us/module/mercury/Mercury;->cookieManager:Landroid/webkit/CookieManager;

    const-string v5, "http://.com2us.com"

    invoke-virtual {v4, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void

    .line 509
    :cond_0
    const-string v0, "http://m.mercury.com2us.com"

    .line 511
    goto/16 :goto_0

    .line 514
    :cond_1
    const-string v0, "http://.com2us.com"

    goto/16 :goto_0
.end method


# virtual methods
.method public checkIfServiceAvailable(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "_context"    # Landroid/content/Context;

    .prologue
    .line 912
    :try_start_0
    sget-object v1, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkIfServiceAvailable of <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 913
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    const/4 v1, 0x1

    .line 917
    :goto_0
    return v1

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 917
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/mercury/Mercury;->isShowing:Z

    .line 857
    invoke-virtual {p0}, Lcom/com2us/module/mercury/Mercury;->sendCloseCallback()V

    .line 858
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->dialog:Lcom/com2us/module/mercury/MercuryDialog;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->dialog:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v0}, Lcom/com2us/module/mercury/MercuryDialog;->destroy()V

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapClose:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapClose:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->bitmapClose:Landroid/graphics/Bitmap;

    .line 895
    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 862
    const-string v0, "Mercury"

    return-object v0
.end method

.method public getPermission()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 877
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->PERMISSION:[Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->Version:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewCount()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/com2us/module/mercury/Mercury;->webViewCount:I

    return v0
.end method

.method public hasOfferwallInstance()Z
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lcom/com2us/module/offerwall/Offerwall;->getInstance()Lcom/com2us/module/offerwall/Offerwall;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/mercury/Mercury;->offerwall:Lcom/com2us/module/offerwall/Offerwall;

    .line 176
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->offerwall:Lcom/com2us/module/offerwall/Offerwall;

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mercuryShowEx(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "mercuryShowType"    # I
    .param p3, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 417
    const/16 v0, -0xb

    if-ne p2, v0, :cond_1

    .line 419
    invoke-virtual {p0, p1, p3}, Lcom/com2us/module/mercury/Mercury;->requestShowForNotice(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    const/16 v0, -0xc

    if-ne p2, v0, :cond_2

    .line 423
    invoke-virtual {p0, p1, p3}, Lcom/com2us/module/mercury/Mercury;->requestForcedShowForNotice(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_2
    const/16 v0, -0xd

    if-ne p2, v0, :cond_3

    .line 427
    invoke-virtual {p0, p1, p3}, Lcom/com2us/module/mercury/Mercury;->requestShowForEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_3
    const/16 v0, -0xe

    if-ne p2, v0, :cond_4

    .line 431
    invoke-virtual {p0, p1, p3}, Lcom/com2us/module/mercury/Mercury;->requestForcedShowForEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_4
    const/16 v0, -0xf

    if-ne p2, v0, :cond_0

    .line 435
    invoke-virtual {p0, p1, p3}, Lcom/com2us/module/mercury/Mercury;->requestShowForNoticeEx(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public native nativeMercuryCallBack(I)V
.end method

.method public native nativeMercuryInitialize()V
.end method

.method public onActivityPaused()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 908
    return-void
.end method

.method public onActivityResumed()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 902
    return-void
.end method

.method public requestForcedShowForEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/com2us/module/mercury/Mercury;->requestForcedShowForEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public requestForcedShowForEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 383
    sput-object p1, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    .line 386
    if-nez p2, :cond_0

    .line 388
    const-string p2, ""

    .line 390
    :cond_0
    invoke-static {p2}, Lcom/com2us/module/mercury/MercuryData;->setAdditionalInfo(Ljava/lang/String;)V

    .line 392
    iget-boolean v0, p0, Lcom/com2us/module/mercury/Mercury;->isShowing:Z

    if-eqz v0, :cond_1

    .line 404
    :goto_0
    return-void

    .line 397
    :cond_1
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Forced Event , Action : button"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 399
    const-string v0, "button"

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryData;->setAction(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->network:Lcom/com2us/module/mercury/MercuryNetwork;

    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->getServerURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/mercury/MercuryNetwork;->setServer(Ljava/lang/String;)V

    .line 401
    const-string v0, "event"

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryData;->setType(Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->setUidCheckMSG()V

    .line 403
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->requestNetwork()V

    goto :goto_0
.end method

.method public requestForcedShowForNotice(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/com2us/module/mercury/Mercury;->requestForcedShowForNotice(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public requestForcedShowForNotice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 335
    sput-object p1, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    .line 338
    if-nez p2, :cond_0

    .line 340
    const-string p2, ""

    .line 342
    :cond_0
    invoke-static {p2}, Lcom/com2us/module/mercury/MercuryData;->setAdditionalInfo(Ljava/lang/String;)V

    .line 344
    iget-boolean v0, p0, Lcom/com2us/module/mercury/Mercury;->isShowing:Z

    if-eqz v0, :cond_1

    .line 356
    :goto_0
    return-void

    .line 349
    :cond_1
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Forced Notice , Action : button"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 351
    const-string v0, "button"

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryData;->setAction(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->network:Lcom/com2us/module/mercury/MercuryNetwork;

    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->getServerURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/mercury/MercuryNetwork;->setServer(Ljava/lang/String;)V

    .line 353
    const-string v0, "notice"

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryData;->setType(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->setUidCheckMSG()V

    .line 355
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->requestNetwork()V

    goto :goto_0
.end method

.method public requestShowForEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/com2us/module/mercury/Mercury;->requestShowForEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public requestShowForEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 359
    sput-object p1, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    .line 362
    if-nez p2, :cond_0

    .line 364
    const-string p2, ""

    .line 366
    :cond_0
    invoke-static {p2}, Lcom/com2us/module/mercury/MercuryData;->setAdditionalInfo(Ljava/lang/String;)V

    .line 368
    iget-boolean v0, p0, Lcom/com2us/module/mercury/Mercury;->isShowing:Z

    if-eqz v0, :cond_1

    .line 380
    :goto_0
    return-void

    .line 373
    :cond_1
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Normal Event , Action : init"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 375
    const-string v0, "init"

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryData;->setAction(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->network:Lcom/com2us/module/mercury/MercuryNetwork;

    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->getServerURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/mercury/MercuryNetwork;->setServer(Ljava/lang/String;)V

    .line 377
    const-string v0, "event"

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryData;->setType(Ljava/lang/String;)V

    .line 378
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->setUidCheckMSG()V

    .line 379
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->requestNetwork()V

    goto :goto_0
.end method

.method public requestShowForNotice(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/com2us/module/mercury/Mercury;->requestShowForNotice(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public requestShowForNotice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 309
    sput-object p1, Lcom/com2us/module/mercury/Mercury;->savedUserID:Ljava/lang/String;

    .line 312
    if-nez p2, :cond_0

    .line 314
    const-string p2, ""

    .line 316
    :cond_0
    invoke-static {p2}, Lcom/com2us/module/mercury/MercuryData;->setAdditionalInfo(Ljava/lang/String;)V

    .line 318
    iget-boolean v0, p0, Lcom/com2us/module/mercury/Mercury;->isShowing:Z

    if-eqz v0, :cond_1

    .line 331
    :goto_0
    return-void

    .line 323
    :cond_1
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Normal Notice , Action : init"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 325
    const-string v0, "init"

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryData;->setAction(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->network:Lcom/com2us/module/mercury/MercuryNetwork;

    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->getServerURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/mercury/MercuryNetwork;->setServer(Ljava/lang/String;)V

    .line 327
    const-string v0, "notice"

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryData;->setType(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->setUidCheckMSG()V

    .line 329
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->requestNetwork()V

    goto :goto_0
.end method

.method public requestShowForNoticeEx(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/com2us/module/mercury/Mercury;->requestShowForNoticeEx(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public requestShowForNoticeEx(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/module/mercury/Mercury;->bIgnoreForcedFlag:Z

    .line 411
    invoke-virtual {p0, p1, p2}, Lcom/com2us/module/mercury/Mercury;->requestForcedShowForNotice(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method saveOffAutoParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "_webViewType"    # Ljava/lang/String;
    .param p2, "_pid"    # Ljava/lang/String;

    .prologue
    .line 826
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "today":Ljava/lang/String;
    const-string v1, "cpi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    invoke-static {p2, v0}, Lcom/com2us/module/mercury/MercuryProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-static {p2}, Lcom/com2us/module/mercury/MercuryProperties;->addPID(Ljava/lang/String;)V

    .line 832
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryProperties;->storeProperties(Landroid/content/Context;)V

    .line 851
    :goto_0
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->dialog:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v1}, Lcom/com2us/module/mercury/MercuryDialog;->close()V

    .line 852
    return-void

    .line 834
    :cond_0
    const-string v1, "fullbanner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    invoke-static {p2, v0}, Lcom/com2us/module/mercury/MercuryProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-static {p2}, Lcom/com2us/module/mercury/MercuryProperties;->addPID(Ljava/lang/String;)V

    .line 838
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryProperties;->storeProperties(Landroid/content/Context;)V

    goto :goto_0

    .line 840
    :cond_1
    const-string v1, "main"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 842
    sget-object v1, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "Mercury"

    const-string v3, "Saved OffAuto (MAIN Webview"

    invoke-virtual {v1, v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v1, "Mercury_Main_OffAuto_Date"

    invoke-static {v1, v0}, Lcom/com2us/module/mercury/MercuryProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryProperties;->storeProperties(Landroid/content/Context;)V

    goto :goto_0

    .line 848
    :cond_2
    sget-object v1, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "Mercury"

    const-string v3, "Undefined typeParam"

    invoke-virtual {v1, v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendCloseCallback()V
    .locals 2

    .prologue
    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/mercury/Mercury;->bIgnoreForcedFlag:Z

    .line 754
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/mercury/Mercury$4;

    invoke-direct {v1, p0}, Lcom/com2us/module/mercury/Mercury$4;-><init>(Lcom/com2us/module/mercury/Mercury;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 768
    return-void
.end method

.method sendOpenCallback()V
    .locals 2

    .prologue
    .line 772
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/com2us/module/mercury/Mercury;->callback(I)V

    .line 780
    :goto_0
    return-void

    .line 778
    :cond_0
    const/4 v0, -0x8

    invoke-direct {p0, v0}, Lcom/com2us/module/mercury/Mercury;->callback(I)V

    goto :goto_0
.end method

.method public setAppIdForIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 882
    iput-object p1, p0, Lcom/com2us/module/mercury/Mercury;->appIdForIdentity:Ljava/lang/String;

    .line 883
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->appIdForIdentity:Ljava/lang/String;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryData;->setAppID(Ljava/lang/String;)V

    .line 884
    return-void
.end method

.method public setCallBack(Lcom/com2us/module/mercury/Mercury$MercuryCB;)V
    .locals 3
    .param p1, "callback"    # Lcom/com2us/module/mercury/Mercury$MercuryCB;

    .prologue
    .line 275
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Mercury"

    const-string v2, "setCallback"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iput-object p1, p0, Lcom/com2us/module/mercury/Mercury;->mCB:Lcom/com2us/module/mercury/Mercury$MercuryCB;

    .line 277
    return-void
.end method

.method public setIsUsingStaging(Z)V
    .locals 2
    .param p1, "_isUsingStaging"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/com2us/module/mercury/Mercury;->isUsingStaging:Z

    .line 252
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/com2us/module/mercury/Mercury;->isUsingStaging:Z

    invoke-static {v0, v1}, Lcom/com2us/module/mercury/MercuryData;->setDID(Landroid/content/Context;Z)V

    .line 253
    iget-boolean v0, p0, Lcom/com2us/module/mercury/Mercury;->isUsingStaging:Z

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryBridge;->setUsingStaging(Z)V

    .line 254
    return-void
.end method

.method public setLogged(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 872
    sget-object v0, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0, p1}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 873
    return-void
.end method

.method public setNativeCallBack(I)V
    .locals 0
    .param p1, "callback"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/com2us/module/mercury/Mercury;->mNativeCB:I

    .line 282
    return-void
.end method

.method public setNativeIsUsingStaging(I)V
    .locals 1
    .param p1, "_isUsingStaging"    # I

    .prologue
    const/4 v0, 0x1

    .line 263
    if-ne v0, p1, :cond_0

    .line 265
    iput-boolean v0, p0, Lcom/com2us/module/mercury/Mercury;->isUsingStaging:Z

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/mercury/Mercury;->isUsingStaging:Z

    goto :goto_0
.end method

.method show()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 785
    iget-boolean v2, p0, Lcom/com2us/module/mercury/Mercury;->isShowing:Z

    if-eqz v2, :cond_0

    .line 822
    :goto_0
    return-void

    .line 789
    :cond_0
    sget-object v2, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Mercury"

    const-string v4, "show"

    invoke-virtual {v2, v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    sget-object v2, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Mercury"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "webViewShow : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/com2us/module/mercury/Mercury;->webViewShow:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  webViewShowType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/com2us/module/mercury/Mercury;->webViewShowType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, "today":Ljava/lang/String;
    iget v2, p0, Lcom/com2us/module/mercury/Mercury;->webViewShow:I

    if-le v6, v2, :cond_1

    .line 795
    invoke-virtual {p0}, Lcom/com2us/module/mercury/Mercury;->sendCloseCallback()V

    goto :goto_0

    .line 798
    :cond_1
    const/4 v2, 0x2

    iget v3, p0, Lcom/com2us/module/mercury/Mercury;->webViewShow:I

    if-ne v2, v3, :cond_3

    .line 800
    sget-object v2, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Mercury"

    const-string v4, "show type is forced Show"

    invoke-virtual {v2, v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->syncCookie()V

    .line 821
    invoke-direct {p0}, Lcom/com2us/module/mercury/Mercury;->load()V

    goto :goto_0

    .line 802
    :cond_3
    iget v2, p0, Lcom/com2us/module/mercury/Mercury;->webViewShowType:I

    if-ne v6, v2, :cond_2

    .line 804
    const-string v2, "Mercury_Show_Date"

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "savedDay":Ljava/lang/String;
    sget-object v2, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Mercury"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "saved Day:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 810
    invoke-virtual {p0}, Lcom/com2us/module/mercury/Mercury;->sendCloseCallback()V

    goto/16 :goto_0

    .line 815
    :cond_4
    const-string v2, "Mercury_Show_Date"

    invoke-static {v2, v1}, Lcom/com2us/module/mercury/MercuryProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/com2us/module/mercury/Mercury;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryProperties;->storeProperties(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public showOfferwall()V
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lcom/com2us/module/offerwall/Offerwall;->getInstance()Lcom/com2us/module/offerwall/Offerwall;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/Mercury;->offerwall:Lcom/com2us/module/offerwall/Offerwall;

    .line 185
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->offerwall:Lcom/com2us/module/offerwall/Offerwall;

    if-eqz v1, :cond_0

    .line 186
    new-instance v0, Lcom/com2us/module/mercury/Mercury$OfferwallCBs;

    invoke-direct {v0, p0}, Lcom/com2us/module/mercury/Mercury$OfferwallCBs;-><init>(Lcom/com2us/module/mercury/Mercury;)V

    .line 187
    .local v0, "offerwallCBs":Lcom/com2us/module/mercury/Mercury$OfferwallCBs;
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->offerwall:Lcom/com2us/module/offerwall/Offerwall;

    invoke-virtual {v1, v0}, Lcom/com2us/module/offerwall/Offerwall;->setCBforMercury(Lcom/com2us/module/offerwall/Offerwall$OfferwallCBforMercury;)V

    .line 188
    iget-object v1, p0, Lcom/com2us/module/mercury/Mercury;->offerwall:Lcom/com2us/module/offerwall/Offerwall;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/com2us/module/offerwall/Offerwall;->showExforMercury(Ljava/lang/String;)V

    .line 190
    .end local v0    # "offerwallCBs":Lcom/com2us/module/mercury/Mercury$OfferwallCBs;
    :cond_0
    return-void
.end method
