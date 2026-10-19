.class Lcom/com2us/module/inapp/SelectTarget;
.super Ljava/lang/Object;
.source "SelectTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;
    }
.end annotation


# static fields
.field private static Popup_cancel:Ljava/lang/String; = null

.field private static Popup_ok:Ljava/lang/String; = null

.field private static Popup_title:Ljava/lang/String; = null

.field public static final TARGETING_FAILED:I = 0xc9

.field public static final TARGETING_SUCCESS:I = 0xc8

.field private static Text_targetA:Ljava/lang/String;

.field private static Text_targetB:Ljava/lang/String;

.field private static progressDialog:Landroid/app/ProgressDialog;

.field private static selectTargetTypePopup:Landroid/app/Dialog;

.field private static selectThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/com2us/module/inapp/SelectTarget;->selectThread:Ljava/lang/Thread;

    .line 42
    sput-object v0, Lcom/com2us/module/inapp/SelectTarget;->selectTargetTypePopup:Landroid/app/Dialog;

    .line 43
    sput-object v0, Lcom/com2us/module/inapp/SelectTarget;->progressDialog:Landroid/app/ProgressDialog;

    .line 46
    const-string v0, "Select Payment Type"

    sput-object v0, Lcom/com2us/module/inapp/SelectTarget;->Popup_title:Ljava/lang/String;

    .line 47
    const-string v0, "Select"

    sput-object v0, Lcom/com2us/module/inapp/SelectTarget;->Popup_ok:Ljava/lang/String;

    .line 48
    const-string v0, "Cancel"

    sput-object v0, Lcom/com2us/module/inapp/SelectTarget;->Popup_cancel:Ljava/lang/String;

    .line 50
    const-string v0, "Lebi"

    sput-object v0, Lcom/com2us/module/inapp/SelectTarget;->Text_targetA:Ljava/lang/String;

    .line 51
    const-string v0, "Google Play"

    sput-object v0, Lcom/com2us/module/inapp/SelectTarget;->Text_targetB:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized ProgressDialogDismiss(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 574
    const-class v1, Lcom/com2us/module/inapp/SelectTarget;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/com2us/module/inapp/SelectTarget$8;

    invoke-direct {v0}, Lcom/com2us/module/inapp/SelectTarget$8;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    monitor-exit v1

    return-void

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized ProgressDialogShow(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 557
    const-class v1, Lcom/com2us/module/inapp/SelectTarget;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/com2us/module/inapp/SelectTarget;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/module/inapp/SelectTarget;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    :goto_0
    monitor-exit v1

    return-void

    .line 560
    :cond_0
    :try_start_1
    new-instance v0, Lcom/com2us/module/inapp/SelectTarget$7;

    invoke-direct {v0, p0}, Lcom/com2us/module/inapp/SelectTarget$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$0(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 556
    invoke-static {p0}, Lcom/com2us/module/inapp/SelectTarget;->ProgressDialogShow(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 387
    invoke-static {p0}, Lcom/com2us/module/inapp/SelectTarget;->checkGoogleService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$10()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/com2us/module/inapp/SelectTarget;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 573
    invoke-static {p0}, Lcom/com2us/module/inapp/SelectTarget;->ProgressDialogDismiss(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$3(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 372
    invoke-static {p0}, Lcom/com2us/module/inapp/SelectTarget;->isExistLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Landroid/app/Activity;ILorg/json/JSONObject;Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;I)V
    .locals 0

    .prologue
    .line 254
    invoke-static/range {p0 .. p5}, Lcom/com2us/module/inapp/SelectTarget;->showSelectTargetTypePopup(Landroid/app/Activity;ILorg/json/JSONObject;Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;I)V

    return-void
.end method

.method static synthetic access$5(Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;III)V
    .locals 0

    .prologue
    .line 398
    invoke-static {p0, p1, p2, p3, p4}, Lcom/com2us/module/inapp/SelectTarget;->resultPostTarget(Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;III)V

    return-void
.end method

.method static synthetic access$6()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/com2us/module/inapp/SelectTarget;->selectTargetTypePopup:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$7(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/com2us/module/inapp/SelectTarget;->selectTargetTypePopup:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$8(Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 548
    invoke-static {p0}, Lcom/com2us/module/inapp/SelectTarget;->onCreateProgressDialog(Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/com2us/module/inapp/SelectTarget;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private static checkGoogleService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 390
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 393
    const-string v3, "Device does not have package com.android.vending"

    .line 392
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static iapSelectTarget(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;Lcom/com2us/module/inapp/SelectTargetCallback;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "glView"    # Lcom/com2us/module/view/SurfaceViewWrapper;
    .param p2, "targetCB"    # Lcom/com2us/module/inapp/SelectTargetCallback;
    .param p3, "targetCBRef"    # I

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const-string v0, "iapSelectTarget - activity is null"

    invoke-static {v0}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/com2us/module/inapp/SelectTarget;->selectThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/com2us/module/inapp/SelectTarget;->selectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "iapSelectTarget - selectThread is Alive, return"

    invoke-static {v0}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/inapp/SelectTarget$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/com2us/module/inapp/SelectTarget$1;-><init>(Landroid/app/Activity;Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/com2us/module/inapp/SelectTarget;->selectThread:Ljava/lang/Thread;

    .line 231
    sget-object v0, Lcom/com2us/module/inapp/SelectTarget;->selectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected static iapStoreTarget(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetNumber"    # I

    .prologue
    .line 240
    :try_start_0
    new-instance v1, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;-><init>(Landroid/content/Context;Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;)V

    .line 241
    .local v1, "propertyUtil":Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;
    const-string v2, "last_iap"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->storeProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const/4 v2, 0x1

    .end local v1    # "propertyUtil":Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;
    :goto_0
    return v2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isExistLibrary(Ljava/lang/String;)Z
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 374
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 375
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 382
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v2

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 380
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static onCreateProgressDialog(Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 549
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 550
    .local v0, "pDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 551
    const-string v1, "Checking your billing information..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 552
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 553
    return-object v0
.end method

.method private static resultPostTarget(Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;III)V
    .locals 1
    .param p0, "targetCB"    # Lcom/com2us/module/inapp/SelectTargetCallback;
    .param p1, "glView"    # Lcom/com2us/module/view/SurfaceViewWrapper;
    .param p2, "targetCBRef"    # I
    .param p3, "state"    # I
    .param p4, "target"    # I

    .prologue
    .line 400
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 402
    new-instance v0, Lcom/com2us/module/inapp/SelectTarget$6;

    invoke-direct {v0, p2, p3, p4}, Lcom/com2us/module/inapp/SelectTarget$6;-><init>(III)V

    invoke-virtual {p1, v0}, Lcom/com2us/module/view/SurfaceViewWrapper;->queueEvent(Ljava/lang/Runnable;)V

    .line 421
    :goto_0
    return-void

    .line 410
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 412
    :pswitch_0
    invoke-interface {p0, p4}, Lcom/com2us/module/inapp/SelectTargetCallback;->TARGETING_SUCCESS(I)V

    goto :goto_0

    .line 415
    :pswitch_1
    invoke-interface {p0, p4}, Lcom/com2us/module/inapp/SelectTargetCallback;->TARGETING_FAILED(I)V

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static setLanguage(Landroid/app/Activity;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "target"    # I

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "language":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set Country is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set Language is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 432
    const-string v2, "ko"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    const-string v2, "\uacb0\uc81c \ubc29\uc2dd \uc120\ud0dd"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Popup_title:Ljava/lang/String;

    .line 434
    const-string v2, "\uc120\ud0dd"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Popup_ok:Ljava/lang/String;

    .line 435
    const-string v2, "\ucde8\uc18c"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Popup_cancel:Ljava/lang/String;

    .line 437
    const-string v2, "Lebi"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Text_targetA:Ljava/lang/String;

    .line 438
    const-string v2, "Google Play"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Text_targetB:Ljava/lang/String;

    .line 465
    :goto_0
    return-void

    .line 440
    :cond_0
    const-string v2, "us"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    const-string v2, "Select Payment Type"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Popup_title:Ljava/lang/String;

    .line 442
    const-string v2, "Select"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Popup_ok:Ljava/lang/String;

    .line 443
    const-string v2, "Cancel"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Popup_cancel:Ljava/lang/String;

    .line 445
    const-string v2, "Lebi"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Text_targetA:Ljava/lang/String;

    .line 446
    const-string v2, "Google Play"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Text_targetB:Ljava/lang/String;

    goto :goto_0

    .line 448
    :cond_1
    const-string v2, "tw"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    const-string v2, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Popup_title:Ljava/lang/String;

    .line 451
    const-string v2, "\u78ba\u8a8d"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Popup_ok:Ljava/lang/String;

    .line 452
    const-string v2, "\u53d6\u6d88"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Popup_cancel:Ljava/lang/String;

    .line 454
    const-string v2, "\u6a02\u5e63(\u7528mycard\u5132\u503c)"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Text_targetA:Ljava/lang/String;

    .line 455
    const-string v2, "Google\u96fb\u5b50\u9322\u5305"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Text_targetB:Ljava/lang/String;

    goto :goto_0

    .line 458
    :cond_2
    const-string v2, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Popup_title:Ljava/lang/String;

    .line 459
    const-string v2, "\u786e\u8ba4"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Popup_ok:Ljava/lang/String;

    .line 460
    const-string v2, "\u53d6\u6d88"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Popup_cancel:Ljava/lang/String;

    .line 462
    const-string v2, "\u4e50\u5e01(\u7528\u795e\u5dde\u884c, \u652f\u4ed8\u5b9d\u5145\u503c)"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Text_targetA:Ljava/lang/String;

    .line 463
    const-string v2, "Google\u7535\u5b50\u94b1\u5305"

    sput-object v2, Lcom/com2us/module/inapp/SelectTarget;->Text_targetB:Ljava/lang/String;

    goto :goto_0
.end method

.method private static showSelectTargetTypePopup(Landroid/app/Activity;ILorg/json/JSONObject;Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;I)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "target"    # I
    .param p2, "data"    # Lorg/json/JSONObject;
    .param p3, "targetCB"    # Lcom/com2us/module/inapp/SelectTargetCallback;
    .param p4, "glView"    # Lcom/com2us/module/view/SurfaceViewWrapper;
    .param p5, "targetCBRef"    # I

    .prologue
    .line 257
    invoke-static {p0, p1}, Lcom/com2us/module/inapp/SelectTarget;->setLanguage(Landroid/app/Activity;I)V

    .line 259
    new-instance v8, Landroid/widget/RadioGroup;

    invoke-direct {v8, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 260
    .local v8, "RGtarget":Landroid/widget/RadioGroup;
    new-instance v7, Landroid/widget/RadioButton;

    invoke-direct {v7, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 261
    .local v7, "RBTargetA":Landroid/widget/RadioButton;
    new-instance v2, Landroid/widget/RadioButton;

    invoke-direct {v2, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 263
    .local v2, "RBTargetB":Landroid/widget/RadioButton;
    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/widget/RadioGroup;->setBackgroundColor(I)V

    .line 265
    sget-object v0, Lcom/com2us/module/inapp/SelectTarget;->Text_targetA:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const/high16 v0, -0x1000000

    invoke-virtual {v7, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 268
    sget-object v0, Lcom/com2us/module/inapp/SelectTarget;->Text_targetB:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const/high16 v0, -0x1000000

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 271
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/RadioGroup;->setScrollbarFadingEnabled(Z)V

    .line 272
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/RadioGroup;->setScrollBarStyle(I)V

    .line 274
    new-instance v11, Landroid/widget/RadioGroup$LayoutParams;

    .line 275
    const/4 v0, -0x2

    .line 276
    const/4 v1, -0x2

    .line 274
    invoke-direct {v11, v0, v1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 278
    .local v11, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-virtual {v8, v7, v0, v11}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-virtual {v8, v2, v0, v11}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v0, Lcom/com2us/module/inapp/SelectTarget;->Popup_title:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 284
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 285
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 286
    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 287
    sget-object v12, Lcom/com2us/module/inapp/SelectTarget;->Popup_ok:Ljava/lang/String;

    new-instance v0, Lcom/com2us/module/inapp/SelectTarget$2;

    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/com2us/module/inapp/SelectTarget$2;-><init>(Landroid/app/Activity;Landroid/widget/RadioButton;Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;ILorg/json/JSONObject;)V

    invoke-virtual {v9, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    new-instance v0, Lcom/com2us/module/inapp/SelectTarget$3;

    invoke-direct {v0}, Lcom/com2us/module/inapp/SelectTarget$3;-><init>()V

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    sget-object v0, Lcom/com2us/module/inapp/SelectTarget;->selectTargetTypePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 346
    :try_start_0
    sget-object v0, Lcom/com2us/module/inapp/SelectTarget;->selectTargetTypePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Lcom/com2us/module/inapp/SelectTarget$4;

    invoke-direct {v0}, Lcom/com2us/module/inapp/SelectTarget$4;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_0
    :goto_0
    new-instance v0, Lcom/com2us/module/inapp/SelectTarget$5;

    invoke-direct {v0, v7, v9}, Lcom/com2us/module/inapp/SelectTarget$5;-><init>(Landroid/widget/RadioButton;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 369
    return-void

    .line 354
    :catch_0
    move-exception v10

    .line 355
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
