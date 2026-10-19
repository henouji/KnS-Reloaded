.class public Lcom/com2us/peppermint/Peppermint;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/peppermint/Peppermint$ActivityResultCode;,
        Lcom/com2us/peppermint/Peppermint$Version;
    }
.end annotation


# static fields
.field private static a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Lcom/com2us/peppermint/PeppermintDialog;

.field private a:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field public domainNotify:Lcom/com2us/peppermint/NotificationCenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    iput-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Landroid/app/Activity;

    iput-object p1, p0, Lcom/com2us/peppermint/Peppermint;->a:Landroid/app/Activity;

    invoke-static {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->setPeppermint(Lcom/com2us/peppermint/Peppermint;)V

    return-void
.end method

.method private a(Ljava/lang/String;ZZLcom/com2us/peppermint/PeppermintCallback;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showDialog subPath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isViewInvisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isFullScreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/peppermint/d;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/com2us/peppermint/d;-><init>(Lcom/com2us/peppermint/Peppermint;Ljava/lang/String;ZLcom/com2us/peppermint/PeppermintCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/com2us/peppermint/Peppermint;)Lcom/com2us/peppermint/PeppermintDialog;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/PeppermintDialog;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/com2us/peppermint/Peppermint;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintUtil;->macAddress(Landroid/content/Context;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "macAddress function inner="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/peppermint/Peppermint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static a()V
    .locals 5

    const/4 v3, 0x3

    const/4 v0, 0x0

    invoke-static {}, Lcom/facebook/Settings;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ne v2, v3, :cond_1

    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n*****************************************************************************\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "This is message from Com2uS Hive team. Hive Android 2.1.6 or higher must use Facebook SDK 3.15.0 or higher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Current Facebook SDK version that you use is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    const-string v0, "\n*****************************************************************************"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/Peppermint;Lcom/com2us/peppermint/PeppermintDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/PeppermintDialog;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "native_version="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/com2us/peppermint/Peppermint;->getNativeVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "appid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/com2us/peppermint/Peppermint;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "gameindex="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/com2us/peppermint/Peppermint;->getGameIndex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "device="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/com2us/peppermint/Peppermint;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "platform="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/com2us/peppermint/Peppermint;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "osversion="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/com2us/peppermint/Peppermint;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/com2us/peppermint/Peppermint;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "did="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/com2us/peppermint/Peppermint;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "null"

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hub_ck1="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintUtil;->generateClientKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/com2us/peppermint/Peppermint;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "null"

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hub_ck2="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintUtil;->generateClientKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/com2us/peppermint/Peppermint;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "null"

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hub_ck3="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintUtil;->generateClientKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "restoreCookies cookie="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendRequest subPath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/com2us/peppermint/PeppermintRequest;

    invoke-direct {v0}, Lcom/com2us/peppermint/PeppermintRequest;-><init>()V

    iget-object v1, p0, Lcom/com2us/peppermint/Peppermint;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/com2us/peppermint/PeppermintRequest;->request(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)Lcom/com2us/peppermint/PeppermintRequest;

    const/4 v0, 0x1

    return v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/com2us/peppermint/util/PeppermintUtil;->deviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "com.com2us.module.activeuser.ActiveUser"

    const-string v2, "getDID"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "getDID cls is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "ActiveUser Module getDID Exception occured!"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "getDID method is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getIsPGS()I
    .locals 1

    const-string v0, "getIsPGS"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->getIsPGS()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.3.4"

    return-object v0
.end method


# virtual methods
.method public asyncRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "asyncRequest requestName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "requestName is null"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/16 v0, -0x9

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/com2us/peppermint/Peppermint;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, -0x11

    goto :goto_0
.end method

.method public auth(Lcom/com2us/peppermint/PeppermintCallback;)I
    .locals 2

    const/4 v1, 0x1

    const-string v0, "auth"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/PeppermintDialog;

    if-eqz v0, :cond_0

    const-string v0, "auth dialog already exist"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/4 v0, -0x8

    :goto_0
    return v0

    :cond_0
    const-string v0, "auth"

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/com2us/peppermint/Peppermint;->a(Ljava/lang/String;ZZLcom/com2us/peppermint/PeppermintCallback;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApiBaseURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthToken()Lcom/com2us/peppermint/PeppermintAuthToken;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog;->getAuthToken()Lcom/com2us/peppermint/PeppermintAuthToken;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Lcom/com2us/peppermint/PeppermintDialog;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/PeppermintDialog;

    return-object v0
.end method

.method public getGameIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMainActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public getNativeVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "Hive v.2.3.4"

    return-object v0
.end method

.method public getPeppermintDialog()Lcom/com2us/peppermint/PeppermintDialog;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/PeppermintDialog;

    return-object v0
.end method

.method public getWebBaseURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->c:Ljava/lang/String;

    return-object v0
.end method

.method public guestAcquireUid(Lcom/com2us/peppermint/PeppermintCallback;)I
    .locals 1

    const-string v0, "guestAcquireUid"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/PeppermintDialog;

    if-eqz v0, :cond_0

    const-string v0, "guestAcquireUid dialog already exist"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/4 v0, -0x8

    :goto_0
    return v0

    :cond_0
    const-string v0, "guest"

    invoke-virtual {p0, v0, p1}, Lcom/com2us/peppermint/Peppermint;->showDialog(Ljava/lang/String;Lcom/com2us/peppermint/PeppermintCallback;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public guestBind(Ljava/lang/String;Ljava/lang/String;Lcom/com2us/peppermint/PeppermintCallback;)I
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "guestBind guestUid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " candidateUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/PeppermintDialog;

    if-eqz v1, :cond_0

    const-string v0, "guestBind dialog already exist"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/4 v0, -0x8

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "guestBind guestUid or candidateUid is invalid"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/16 v0, -0x9

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "guest/bind/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0, p3}, Lcom/com2us/peppermint/Peppermint;->a(Ljava/lang/String;ZZLcom/com2us/peppermint/PeppermintCallback;)I

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialize appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gameIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " useTestServer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/16 v0, -0x9

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/com2us/peppermint/Peppermint;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    sget-object v2, Lcom/com2us/peppermint/PeppermintURL;->PEPPERMINT_COOKIE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "initialize cookie is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    :cond_3
    if-eqz p3, :cond_5

    const-string v1, "http://test.hub.com2us.com/"

    iput-object v1, p0, Lcom/com2us/peppermint/Peppermint;->c:Ljava/lang/String;

    const-string v1, "http://test.api.com2us.com/"

    iput-object v1, p0, Lcom/com2us/peppermint/Peppermint;->d:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lcom/com2us/peppermint/Peppermint;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/com2us/peppermint/Peppermint;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/PeppermintDialog;

    sget-object v1, Lcom/com2us/peppermint/PeppermintURL;->PEPPERMINT_COOKIE_URL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/com2us/peppermint/Peppermint;->a(Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/com2us/peppermint/Peppermint;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/peppermint/Peppermint;->a:Landroid/app/Activity;

    const-string v3, "R.string.applicationId"

    invoke-static {v2, v3}, Lcom/com2us/peppermint/util/PeppermintResource;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/com2us/peppermint/Peppermint;->a()V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v1, v0

    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_3

    aget-object v4, v2, v1

    const-string v5, "="

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "----------------------"

    invoke-static {v5}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const-string v4, "----------------------"

    invoke-static {v4}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const-string v1, "http://hub.com2us.com/"

    iput-object v1, p0, Lcom/com2us/peppermint/Peppermint;->c:Ljava/lang/String;

    const-string v1, "http://api.com2us.com/"

    iput-object v1, p0, Lcom/com2us/peppermint/Peppermint;->d:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public logout(Lcom/com2us/peppermint/PeppermintCallback;)I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "logout"

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/PeppermintDialog;

    if-eqz v1, :cond_0

    const-string v0, "logout dialog already exist"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/4 v0, -0x8

    :goto_0
    return v0

    :cond_0
    const-string v1, "auth/logout_proc"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/com2us/peppermint/Peppermint;->a(Ljava/lang/String;ZZLcom/com2us/peppermint/PeppermintCallback;)I

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/com2us/peppermint/ActivityResult;

    invoke-direct {v0, p0}, Lcom/com2us/peppermint/ActivityResult;-><init>(Lcom/com2us/peppermint/Peppermint;)V

    packed-switch p2, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->sharedInstance()Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPlugins()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "googleplus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->get_instance()Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/com2us/peppermint/ActivityResult;->onActivityResultForCamera(IILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/com2us/peppermint/ActivityResult;->onActivityResultForFacebook(IILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->sharedInstance()Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPlugins()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "googleplus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->get_instance()Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2328 -> :sswitch_2
        0x2329 -> :sswitch_2
        0x232a -> :sswitch_2
        0x238c -> :sswitch_2
        0x4a38 -> :sswitch_3
        0x4a39 -> :sswitch_3
        0x4a3a -> :sswitch_3
        0x4c2c -> :sswitch_3
        0x4c2d -> :sswitch_3
        0xface -> :sswitch_1
        0xca001 -> :sswitch_0
        0xca003 -> :sswitch_0
        0xa1b002 -> :sswitch_0
        0xea0623 -> :sswitch_1
    .end sparse-switch
.end method

.method public pgsLoginProc(Lcom/com2us/peppermint/PeppermintCallback;)I
    .locals 1

    const-string v0, "pgsLoginProc"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-direct {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;-><init>()V

    sput-object v0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-virtual {v0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->PGSLoginProc(Lcom/com2us/peppermint/PeppermintCallback;)I

    move-result v0

    return v0
.end method

.method public setApiBaseURL(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setApiBaseURL url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/com2us/peppermint/Peppermint;->d:Ljava/lang/String;

    return-void
.end method

.method public setMainActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/Peppermint;->a:Landroid/app/Activity;

    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOption allowedKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/PeppermintURL;->PEPPERMINT_COOKIE_URL:Ljava/lang/String;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    const-string v2, "login_center_vid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restoreCookies cookie="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EEE, dd MMM yyyy hh:mm:ss"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "=;expires="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, -0x9

    goto :goto_1
.end method

.method public setWebBaseURL(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setWebBaseURL url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/com2us/peppermint/Peppermint;->c:Ljava/lang/String;

    return-void
.end method

.method public showDialog(Ljava/lang/String;Lcom/com2us/peppermint/PeppermintCallback;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showDialog subPath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/PeppermintDialog;

    if-eqz v0, :cond_0

    const-string v0, "showDialog dialog already exist"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/4 v0, -0x8

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "showDialog subPath is null"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/16 v0, -0x9

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/com2us/peppermint/Peppermint;->a(Ljava/lang/String;ZZLcom/com2us/peppermint/PeppermintCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public socialRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "socialRequest service="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " jObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->pluginByName(Ljava/lang/String;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, -0x65

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->isWorking()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x8

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->actionWithName(Ljava/lang/String;)Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;

    move-result-object v1

    if-nez v1, :cond_2

    const/16 v0, -0x9

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, p3, p4}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->connectForAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, -0x10

    goto :goto_0
.end method

.method public uninitialize()I
    .locals 1

    const-string v0, "uninitialize"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/Peppermint;->a:Lcom/com2us/peppermint/PeppermintDialog;

    if-eqz v0, :cond_0

    const-string v0, "uninitialize dialog already exist"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/4 v0, -0x8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
