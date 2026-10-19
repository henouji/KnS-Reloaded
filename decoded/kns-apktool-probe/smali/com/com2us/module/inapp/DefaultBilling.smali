.class public abstract Lcom/com2us/module/inapp/DefaultBilling;
.super Ljava/lang/Object;
.source "DefaultBilling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;
    }
.end annotation


# static fields
.field public static final AUTHORIZE_LICENSE_FAILED:I = 0x65

.field public static final AUTHORIZE_LICENSE_SUCCESS:I = 0x64

.field public static final BUY_CANCELED:I = 0x4

.field public static final BUY_FAILED:I = 0x3

.field public static final BUY_SUCCESS:I = 0x2

.field protected static CallBackRef:I = 0x0

.field public static final GET_ITEM_LIST:I = 0x1

.field protected static LOG_TAG:Ljava/lang/String; = null

.field protected static LicenseCallbackRef:I = 0x0

.field public static final PURCHASE_UPDATED:I = 0x8

.field public static final RESTORE_SUCCESS:I = 0x5

.field protected static activity:Landroid/app/Activity;

.field protected static appid:Ljava/lang/String;

.field protected static c2sAppID:Ljava/lang/String;

.field protected static glView:Lcom/com2us/module/view/SurfaceViewWrapper;


# instance fields
.field protected Toast_NetworkInactive:Ljava/lang/String;

.field protected VERSION:Ljava/lang/String;

.field protected autoVerify:Z

.field protected inAppCallback:Lcom/com2us/module/inapp/InAppCallback;

.field protected isUseTestServer:Z

.field protected licenseCallback:Lcom/com2us/module/inapp/LicenseCallback;

.field protected propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

.field protected useDialog:Z

.field protected useRestoring:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    const-string v0, "InApp"

    sput-object v0, Lcom/com2us/module/inapp/DefaultBilling;->LOG_TAG:Ljava/lang/String;

    .line 47
    sput-object v2, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    .line 48
    sput-object v2, Lcom/com2us/module/inapp/DefaultBilling;->glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    .line 49
    sput v1, Lcom/com2us/module/inapp/DefaultBilling;->CallBackRef:I

    .line 50
    sput v1, Lcom/com2us/module/inapp/DefaultBilling;->LicenseCallbackRef:I

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/com2us/module/inapp/DefaultBilling;->appid:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/com2us/module/inapp/DefaultBilling;->c2sAppID:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "_activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "0"

    iput-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->VERSION:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    .line 75
    const-string v0, "Network inactive."

    iput-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->Toast_NetworkInactive:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/com2us/module/inapp/DefaultBilling;->isUseTestServer:Z

    .line 79
    iput-boolean v1, p0, Lcom/com2us/module/inapp/DefaultBilling;->autoVerify:Z

    .line 80
    iput-boolean v1, p0, Lcom/com2us/module/inapp/DefaultBilling;->useRestoring:Z

    .line 81
    iput-boolean v1, p0, Lcom/com2us/module/inapp/DefaultBilling;->useDialog:Z

    .line 85
    sput-object p1, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    .line 86
    return-void
.end method

.method protected static GetUDID()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 333
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 335
    .local v0, "UDID":Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 336
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 342
    .end local v0    # "UDID":Ljava/lang/Object;
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-object v0

    .line 339
    .restart local v0    # "UDID":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "getUDID failed"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static LogI(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 556
    .local v0, "logDataBuffer":Ljava/lang/StringBuffer;
    sget-object v1, Lcom/com2us/module/inapp/DefaultBilling;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    sget-object v1, Lcom/com2us/module/inapp/InApp;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method protected static getVID()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 347
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 349
    .local v3, "vid":Ljava/lang/Object;
    :try_start_0
    const-string v4, "com.com2us.module.C2SModule"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 350
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getVID"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 351
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 355
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "getVID failed"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static makeHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 526
    const-string v2, ""

    .line 528
    .local v2, "hashStr":Ljava/lang/String;
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 529
    .local v4, "verify":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 530
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 531
    .local v1, "hashResult":[B
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    array-length v5, v1

    if-lt v3, v5, :cond_0

    .line 540
    .end local v1    # "hashResult":[B
    .end local v3    # "k":I
    .end local v4    # "verify":Ljava/security/MessageDigest;
    :goto_1
    return-object v2

    .line 532
    .restart local v1    # "hashResult":[B
    .restart local v3    # "k":I
    .restart local v4    # "verify":Ljava/security/MessageDigest;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v9, v1, v3

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 531
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 534
    .end local v1    # "hashResult":[B
    .end local v3    # "k":I
    .end local v4    # "verify":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 537
    const-string v2, ""

    goto :goto_1
.end method

.method protected static sendToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "strPostData"    # Ljava/lang/String;
    .param p1, "postUrl"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 438
    :try_start_0
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 439
    .local v3, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v9, 0x3a98

    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 440
    const/16 v9, 0x3a98

    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 442
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 443
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 444
    .local v4, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v9, "UTF-8"

    invoke-direct {v2, p0, v9}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .local v2, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v9, "Content-type"

    const-string v10, "text/html"

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 448
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 449
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 451
    .local v6, "responseEntity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_0

    .line 453
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 454
    .local v7, "returnValue":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sendToPost RESPONSE : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v7    # "returnValue":Ljava/lang/String;
    :goto_0
    return-object v7

    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "responseEntity":Lorg/apache/http/HttpEntity;
    :cond_0
    move-object v7, v8

    .line 457
    goto :goto_0

    .line 458
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "responseEntity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 460
    goto :goto_0
.end method


# virtual methods
.method protected GetMACAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    const/4 v1, 0x0

    .line 409
    .local v1, "macAddress":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/com2us/module/util/WrapperUtility;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 413
    :goto_0
    return-object v1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected activityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 122
    return-void
.end method

.method protected checkNetworkState()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 303
    sget-object v0, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 304
    .local v7, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 305
    .local v8, "netInfo":Landroid/net/NetworkInfo;
    if-nez v8, :cond_0

    .line 306
    const-string v0, "Network Inactive"

    invoke-static {v0}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/DefaultBilling$4;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/DefaultBilling$4;-><init>(Lcom/com2us/module/inapp/DefaultBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    const/4 v1, 0x4

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, "Network Inactive"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/com2us/module/inapp/DefaultBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    :goto_0
    return v3

    .line 326
    :cond_0
    const-string v0, "Network Active"

    invoke-static {v0}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 327
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected destroy()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method protected getCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    sget-object v0, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 419
    sget-object v0, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    sget-object v0, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 428
    sget-object v0, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method protected iapAuthorizeLicense()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method protected abstract iapBuyFinish()V
.end method

.method protected abstract iapBuyItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract iapInitialize([Ljava/lang/String;Ljava/lang/String;ZI)I
.end method

.method protected iapRequestBalance(Ljava/lang/String;)I
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract iapRestoreItem(Ljava/lang/String;)V
.end method

.method protected abstract iapStoreEnd()V
.end method

.method protected abstract iapStoreStart()V
.end method

.method protected abstract iapUninitialize()V
.end method

.method protected iapUseTestServer()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "UseTestServer"

    invoke-static {v0}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->isUseTestServer:Z

    .line 128
    iget-boolean v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->isUseTestServer:Z

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/DefaultBilling$1;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/DefaultBilling$1;-><init>(Lcom/com2us/module/inapp/DefaultBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected abstract pause()V
.end method

.method protected resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "pid"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "stateValue"    # Ljava/lang/Object;

    .prologue
    .line 145
    sget v0, Lcom/com2us/module/inapp/DefaultBilling;->CallBackRef:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/module/inapp/DefaultBilling;->glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    if-eqz v0, :cond_0

    .line 146
    sget-object v8, Lcom/com2us/module/inapp/DefaultBilling;->glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    new-instance v0, Lcom/com2us/module/inapp/DefaultBilling$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/com2us/module/inapp/DefaultBilling$2;-><init>(Lcom/com2us/module/inapp/DefaultBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Lcom/com2us/module/view/SurfaceViewWrapper;->queueEvent(Ljava/lang/Runnable;)V

    .line 180
    :goto_0
    return-void

    .line 154
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->inAppCallback:Lcom/com2us/module/inapp/InAppCallback;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/com2us/module/inapp/InAppCallback;->GET_ITEM_LIST(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->inAppCallback:Lcom/com2us/module/inapp/InAppCallback;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/com2us/module/inapp/InAppCallback;->BUY_SUCCESS(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->inAppCallback:Lcom/com2us/module/inapp/InAppCallback;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/com2us/module/inapp/InAppCallback;->BUY_FAILED(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :pswitch_4
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->inAppCallback:Lcom/com2us/module/inapp/InAppCallback;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/com2us/module/inapp/InAppCallback;->BUY_CANCELED(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    :pswitch_5
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->inAppCallback:Lcom/com2us/module/inapp/InAppCallback;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/com2us/module/inapp/InAppCallback;->RESTORE_SUCCESS(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    :pswitch_6
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->inAppCallback:Lcom/com2us/module/inapp/InAppCallback;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/com2us/module/inapp/InAppCallback;->PURCHASE_UPDATED(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected resultPostLicense(ILjava/lang/Object;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "stateValue"    # Ljava/lang/Object;

    .prologue
    .line 185
    sget v0, Lcom/com2us/module/inapp/DefaultBilling;->LicenseCallbackRef:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/module/inapp/DefaultBilling;->glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/com2us/module/inapp/DefaultBilling;->glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    new-instance v1, Lcom/com2us/module/inapp/DefaultBilling$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/com2us/module/inapp/DefaultBilling$3;-><init>(Lcom/com2us/module/inapp/DefaultBilling;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/com2us/module/view/SurfaceViewWrapper;->queueEvent(Ljava/lang/Runnable;)V

    .line 205
    :goto_0
    return-void

    .line 194
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->licenseCallback:Lcom/com2us/module/inapp/LicenseCallback;

    invoke-interface {v0, p2}, Lcom/com2us/module/inapp/LicenseCallback;->AUTHORIZE_LICENSE_SUCCESS(Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->licenseCallback:Lcom/com2us/module/inapp/LicenseCallback;

    invoke-interface {v0, p2}, Lcom/com2us/module/inapp/LicenseCallback;->AUTHORIZE_LICENSE_FAILED(Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract resume()V
.end method

.method protected setCallback(Lcom/com2us/module/inapp/InAppCallback;)V
    .locals 0
    .param p1, "_inAppCallback"    # Lcom/com2us/module/inapp/InAppCallback;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/com2us/module/inapp/DefaultBilling;->inAppCallback:Lcom/com2us/module/inapp/InAppCallback;

    .line 90
    return-void
.end method

.method protected setGLView(Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 0
    .param p1, "_glView"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 97
    sput-object p1, Lcom/com2us/module/inapp/DefaultBilling;->glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    .line 98
    return-void
.end method

.method protected setLicenseCallbackRef(I)V
    .locals 0
    .param p1, "_licenseCallbackRef"    # I

    .prologue
    .line 93
    sput p1, Lcom/com2us/module/inapp/DefaultBilling;->LicenseCallbackRef:I

    .line 94
    return-void
.end method

.method protected setUseDialog(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/com2us/module/inapp/DefaultBilling;->useDialog:Z

    .line 140
    return-void
.end method

.method protected setVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ver"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/com2us/module/inapp/DefaultBilling;->VERSION:Ljava/lang/String;

    .line 210
    sput-object p2, Lcom/com2us/module/inapp/DefaultBilling;->LOG_TAG:Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Version : v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    sget-object v1, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;-><init>(Lcom/com2us/module/inapp/DefaultBilling;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    .line 213
    return-void
.end method

.method protected showPreviousProgressInfoDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/com2us/module/inapp/DefaultBilling;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 470
    .local v7, "language":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/com2us/module/inapp/DefaultBilling;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, "country":Ljava/lang/String;
    const-string v0, "ko"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    const-string v3, "\uc9c0\uae09\ub418\uc9c0 \uc54a\uc740 \uc0c1\ud488\uc774 \uc788\uc2b5\ub2c8\ub2e4. \n\uc7ac \uc9c0\uae09\uc744 \uc2dc\ub3c4\ud569\ub2c8\ub2e4."

    .line 474
    .local v3, "message":Ljava/lang/String;
    const-string v4, "\ud655\uc778"

    .line 498
    .local v4, "okay":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/com2us/module/inapp/DefaultBilling$5;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/com2us/module/inapp/DefaultBilling$5;-><init>(Lcom/com2us/module/inapp/DefaultBilling;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 521
    return-void

    .line 475
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "okay":Ljava/lang/String;
    :cond_0
    const-string v0, "fr"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    const-string v3, "Echec de lattribution de certains objets. \nLe processus va recommencer."

    .line 477
    .restart local v3    # "message":Ljava/lang/String;
    const-string v4, "OK"

    .line 478
    .restart local v4    # "okay":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "okay":Ljava/lang/String;
    :cond_1
    const-string v0, "de"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    const-string v3, "Nicht erhaltene Items vorhanden. \nVorgang wird wiederholt."

    .line 480
    .restart local v3    # "message":Ljava/lang/String;
    const-string v4, "OK"

    .line 481
    .restart local v4    # "okay":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "okay":Ljava/lang/String;
    :cond_2
    const-string v0, "ja"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    const-string v3, "\u652f\u7d66\u3055\u308c\u3066\u306a\u3044\u30a2\u30a4\u30c6\u30e0\u304c\u3042\u308a\u307e\u3059\u3002 \n\u518d\u652f\u7d66\u3044\u305f\u3057\u307e\u3059\u3002"

    .line 483
    .restart local v3    # "message":Ljava/lang/String;
    const-string v4, "OK"

    .line 484
    .restart local v4    # "okay":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "okay":Ljava/lang/String;
    :cond_3
    const-string v0, "ru"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 485
    const-string v3, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043d\u0430\u0447\u0438\u0441\u043b\u0438\u0442\u044c \u0432\u0441\u0435 \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u044b. \n\u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0435\u043c \u0435\u0449\u0435 \u0440\u0430\u0437."

    .line 486
    .restart local v3    # "message":Ljava/lang/String;
    const-string v4, "OK"

    .line 487
    .restart local v4    # "okay":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "okay":Ljava/lang/String;
    :cond_4
    const-string v0, "tw"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 488
    const-string v3, "\u5546\u54c1\u672a\u6210\u529f\u7d66\u4ed8\uff0c \n\u5c07\u5617\u8a66\u91cd\u65b0\u9818\u53d6\u3002"

    .line 489
    .restart local v3    # "message":Ljava/lang/String;
    const-string v4, "\u78ba\u8a8d"

    .line 490
    .restart local v4    # "okay":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "okay":Ljava/lang/String;
    :cond_5
    const-string v0, "cn"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 491
    const-string v3, "\u5b58\u5728\u672a\u80fd\u652f\u4ed8\u7684\u5546\u54c1\u3002 \n\u5c06\u5c1d\u8bd5\u91cd\u65b0\u652f\u4ed8\u3002"

    .line 492
    .restart local v3    # "message":Ljava/lang/String;
    const-string v4, "\u786e\u8ba4"

    .line 493
    .restart local v4    # "okay":Ljava/lang/String;
    goto :goto_0

    .line 494
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "okay":Ljava/lang/String;
    :cond_6
    const-string v3, "Failed to grant some items. \nThe process will restart."

    .line 495
    .restart local v3    # "message":Ljava/lang/String;
    const-string v4, "OK"

    .restart local v4    # "okay":Ljava/lang/String;
    goto :goto_0
.end method
