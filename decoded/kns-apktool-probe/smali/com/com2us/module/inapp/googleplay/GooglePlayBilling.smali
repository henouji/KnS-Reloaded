.class public Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;
.super Lcom/com2us/module/inapp/DefaultBilling;
.source "GooglePlayBilling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$com2us$module$inapp$googleplay$GooglePlayBilling$RequestPostType:[I = null

.field static final JSONTOKEN_ADDITIONALINFO:Ljava/lang/String; = "addtionalInfo"

.field static final JSONTOKEN_ISMANAGED:Ljava/lang/String; = "isManaged"

.field static final JSONTOKEN_PID:Ljava/lang/String; = "pid"

.field static final JSONTOKEN_UID:Ljava/lang/String; = "uid"

.field public static final Ver:Ljava/lang/String; = "2.9.8"

.field private static logThread:Ljava/lang/Thread;

.field private static progressDialog:Landroid/app/ProgressDialog;

.field private static sendThread:Ljava/lang/Thread;


# instance fields
.field private InitializeErrorResult:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

.field broadcastFilter:Landroid/content/IntentFilter;

.field buyItemInfo:Lorg/json/JSONObject;

.field private isInStore:Z

.field private isPause:Z

.field private isPurchaseUpdated:Z

.field private isSuccessInitialize:Z

.field mBroadcastReceiver:Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;

.field mConsumeFinishedListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;

.field mConsumeMultiFinishedListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;

.field mGotInventoryForConsumeListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

.field mGotInventoryForItemListListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

.field mGotInventoryForRestoreListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

.field mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

.field mPurchaseFinishedListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

.field pids:[Ljava/lang/String;

.field restoreUid:Ljava/lang/String;

.field private savedPurchaseUpdatedIntent:Landroid/content/Intent;


# direct methods
.method static synthetic $SWITCH_TABLE$com$com2us$module$inapp$googleplay$GooglePlayBilling$RequestPostType()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->$SWITCH_TABLE$com$com2us$module$inapp$googleplay$GooglePlayBilling$RequestPostType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->values()[Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->RC_LOG:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    invoke-virtual {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->RC_VERIFY:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    invoke-virtual {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->$SWITCH_TABLE$com$com2us$module$inapp$googleplay$GooglePlayBilling$RequestPostType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendThread:Ljava/lang/Thread;

    .line 37
    sput-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->logThread:Ljava/lang/Thread;

    .line 38
    sput-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->progressDialog:Landroid/app/ProgressDialog;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "_activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/com2us/module/inapp/DefaultBilling;-><init>(Landroid/app/Activity;)V

    .line 49
    iput-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    .line 50
    iput-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mBroadcastReceiver:Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;

    .line 51
    iput-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->broadcastFilter:Landroid/content/IntentFilter;

    .line 53
    iput-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->pids:[Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->restoreUid:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    .line 58
    iput-boolean v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isSuccessInitialize:Z

    .line 59
    iput-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->InitializeErrorResult:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    .line 60
    iput-boolean v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isInStore:Z

    .line 61
    iput-boolean v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isPause:Z

    .line 62
    iput-boolean v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isPurchaseUpdated:Z

    .line 63
    iput-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->savedPurchaseUpdatedIntent:Landroid/content/Intent;

    .line 452
    new-instance v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;

    invoke-direct {v0, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mGotInventoryForItemListListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    .line 523
    new-instance v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-direct {v0, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mGotInventoryForRestoreListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    .line 668
    new-instance v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;

    invoke-direct {v0, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mGotInventoryForConsumeListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    .line 695
    new-instance v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;

    invoke-direct {v0, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mPurchaseFinishedListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    .line 764
    new-instance v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$5;

    invoke-direct {v0, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$5;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mConsumeFinishedListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;

    .line 803
    new-instance v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$6;

    invoke-direct {v0, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$6;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mConsumeMultiFinishedListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;

    .line 67
    const-string v0, "2.9.8"

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->VERSION:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$7;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$7;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method private declared-synchronized ProgressDialogDismiss()V
    .locals 2

    .prologue
    .line 1182
    monitor-enter p0

    :try_start_0
    const-string v0, "Dismiss Dialog"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1183
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$20;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$20;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    monitor-exit p0

    return-void

    .line 1182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized ProgressDialogShow()V
    .locals 2

    .prologue
    .line 1164
    monitor-enter p0

    :try_start_0
    const-string v0, "Show Dialog"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1165
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    :goto_0
    monitor-exit p0

    return-void

    .line 1168
    :cond_0
    :try_start_1
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$19;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$19;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V
    .locals 0

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->ProgressDialogDismiss()V

    return-void
.end method

.method static synthetic access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$10(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V
    .locals 0

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->processPurchasedData()V

    return-void
.end method

.method static synthetic access$11(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isPurchaseUpdated:Z

    return-void
.end method

.method static synthetic access$12(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->savedPurchaseUpdatedIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$13(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isPause:Z

    return v0
.end method

.method static synthetic access$14(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->savedPurchaseUpdatedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$15(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/GooglePlayResult;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->InitializeErrorResult:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    return-void
.end method

.method static synthetic access$16(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isSuccessInitialize:Z

    return-void
.end method

.method static synthetic access$17(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->InitializeErrorResult:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    return-object v0
.end method

.method static synthetic access$18(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V
    .locals 0

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->ProgressDialogShow()V

    return-void
.end method

.method static synthetic access$19(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/Purchase;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1123
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->verifyPurchase(Lcom/com2us/module/inapp/googleplay/Purchase;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->useRestoring:Z

    return-void
.end method

.method static synthetic access$20(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1196
    invoke-direct/range {p0 .. p5}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->strPostDataBuilder(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V
    .locals 0

    .prologue
    .line 1007
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendSuccess()V

    return-void
.end method

.method static synthetic access$22(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isUseTestServer:Z

    return v0
.end method

.method static synthetic access$23(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 1155
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->onCreateProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 38
    sput-object p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$26()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/Purchase;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->makeSuccessStateValue(Lcom/com2us/module/inapp/googleplay/Purchase;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->autoVerify:Z

    return v0
.end method

.method static synthetic access$5()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$6(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Ljava/util/List;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1129
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->verifyPurchase(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$8(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 36
    sput-object p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$9(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->showPreviousProgressInfoDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private makeSuccessStateValue(Lcom/com2us/module/inapp/googleplay/Purchase;)[Ljava/lang/String;
    .locals 3
    .param p1, "purchase"    # Lcom/com2us/module/inapp/googleplay/Purchase;

    .prologue
    .line 1253
    const/16 v1, 0x29

    new-array v0, v1, [Ljava/lang/String;

    .line 1255
    .local v0, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1256
    const/4 v1, 0x1

    const-string v2, "GooglePlay"

    aput-object v2, v0, v1

    .line 1257
    const/16 v2, 0x23

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v0, v2

    .line 1258
    const/16 v2, 0x24

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v0, v2

    .line 1260
    return-object v0

    .line 1257
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 1258
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private makeVerifyData(Lcom/com2us/module/inapp/googleplay/Purchase;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "purchase"    # Lcom/com2us/module/inapp/googleplay/Purchase;

    .prologue
    .line 1113
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1115
    .local v1, "verifyData":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "transaction"

    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1116
    const-string v2, "signature"

    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    :goto_0
    return-object v1

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onCreateProgressDialog()Landroid/app/ProgressDialog;
    .locals 2

    .prologue
    .line 1156
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1157
    .local v0, "pDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1158
    const-string v1, "Checking your billing information..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1160
    return-object v0
.end method

.method private processPurchasedData()V
    .locals 2

    .prologue
    .line 850
    const-string v0, "processPurchasedData"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 852
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    const-string v0, "processPurchasedData - sendThread is Alive, return"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1005
    :goto_0
    return-void

    .line 858
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendThread:Ljava/lang/Thread;

    .line 1004
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private sendLog()V
    .locals 2

    .prologue
    .line 1045
    const-string v0, "sendLog"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1047
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->logThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->logThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1052
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$18;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$18;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->logThread:Ljava/lang/Thread;

    .line 1109
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->logThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private sendSuccess()V
    .locals 13

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 1008
    const-string v1, "sendSuccess"

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1009
    new-instance v7, Lcom/com2us/module/inapp/googleplay/BillingDatabase;

    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;-><init>(Landroid/content/Context;)V

    .line 1010
    .local v7, "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    invoke-virtual {v7}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->getPurchaseData()[[Ljava/lang/String;

    move-result-object v11

    .line 1011
    .local v11, "purchasedData":[[Ljava/lang/String;
    invoke-virtual {v7}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 1013
    if-eqz v11, :cond_0

    array-length v1, v11

    if-gtz v1, :cond_2

    .line 1014
    :cond_0
    const-string v0, "purchasedData is nothing"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1015
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendLog()V

    .line 1042
    :cond_1
    :goto_0
    return-void

    .line 1019
    :cond_2
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_1
    array-length v1, v11

    if-lt v12, v1, :cond_3

    .line 1027
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    :try_start_0
    array-length v1, v11

    if-ge v9, v1, :cond_1

    .line 1028
    const-string v1, "0"

    aget-object v2, v11, v9

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1029
    new-instance v10, Lcom/com2us/module/inapp/googleplay/Purchase;

    const-string v1, "inapp"

    aget-object v2, v11, v9

    const/4 v4, 0x1

    aget-object v2, v2, v4

    aget-object v4, v11, v9

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-direct {v10, v1, v2, v4}, Lcom/com2us/module/inapp/googleplay/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    .local v10, "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    invoke-virtual {v10}, Lcom/com2us/module/inapp/googleplay/Purchase;->getPurchaseState()I

    move-result v1

    if-nez v1, :cond_5

    .line 1031
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BUY_SUCCESS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  signature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1032
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->ProgressDialogDismiss()V

    .line 1033
    const/4 v1, 0x2

    invoke-virtual {v10}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/com2us/module/inapp/googleplay/Purchase;->getManaged()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_3
    invoke-virtual {v10}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v5

    .line 1034
    invoke-direct {p0, v10}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->makeSuccessStateValue(Lcom/com2us/module/inapp/googleplay/Purchase;)[Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 1033
    invoke-virtual/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1039
    .end local v10    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    :catch_0
    move-exception v8

    .line 1040
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1020
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "i":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchasedData["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v11, v12

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchasedData["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][1] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v11, v12

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchasedData["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][2] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v11, v12

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchasedData["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][3] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v11, v12

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1019
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .restart local v9    # "i":I
    .restart local v10    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    :cond_4
    move v3, v0

    .line 1033
    goto/16 :goto_3

    .line 1027
    .end local v10    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2
.end method

.method private strPostDataBuilder(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "type"    # Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "transaction"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "addtionalInfo"    # Ljava/lang/String;

    .prologue
    .line 1198
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1201
    .local v3, "jsonObjectPostData":Lorg/json/JSONObject;
    const-string v0, ""

    .line 1203
    .local v0, "appversion":Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    sget-object v8, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1204
    .local v2, "i":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    .end local v2    # "i":Landroid/content/pm/PackageInfo;
    :goto_0
    sget-object v7, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 1211
    .local v6, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 1214
    .local v5, "mdn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->GetMACAddress()Ljava/lang/String;

    move-result-object v4

    .line 1217
    .local v4, "mac":Ljava/lang/String;
    :try_start_1
    const-string v7, "market"

    const-string v8, "google"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1218
    const-string v7, "appid"

    sget-object v8, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->c2sAppID:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1219
    const-string v7, "appversion"

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1220
    const-string v7, "device"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1221
    const-string v7, "udid"

    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->GetUDID()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1222
    const-string v7, "osversion"

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1223
    const-string v7, "country"

    invoke-virtual {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1224
    const-string v7, "language"

    invoke-virtual {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1225
    if-eqz v4, :cond_0

    const-string v7, "mac"

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1226
    :cond_0
    if-eqz v5, :cond_1

    const-string v7, "mdn"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1227
    :cond_1
    const-string v7, "androidid"

    sget-object v8, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1228
    const-string v7, "uid"

    invoke-virtual {v3, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1229
    const-string v7, "did"

    sget-object v8, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/com2us/module/util/DeviceIdentity;->getDIDSynchronized(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1230
    const-string v7, "libver"

    iget-object v8, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->VERSION:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1231
    const-string v7, "apiver"

    const-string v8, "3"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1232
    const-string v7, "vid"

    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->getVID()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1233
    const-string v7, "addtionalInfo"

    invoke-virtual {v3, v7, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1235
    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->$SWITCH_TABLE$com$com2us$module$inapp$googleplay$GooglePlayBilling$RequestPostType()[I

    move-result-object v7

    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->ordinal()I

    move-result v8

    aget v7, v7, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    packed-switch v7, :pswitch_data_0

    .line 1248
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "jsonObjectPostData : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1205
    .end local v4    # "mac":Ljava/lang/String;
    .end local v5    # "mdn":Ljava/lang/String;
    .end local v6    # "telManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 1206
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1237
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "mac":Ljava/lang/String;
    .restart local v5    # "mdn":Ljava/lang/String;
    .restart local v6    # "telManager":Landroid/telephony/TelephonyManager;
    :pswitch_0
    :try_start_2
    const-string v7, "verifylist"

    invoke-virtual {v3, v7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1245
    :catch_1
    move-exception v1

    .line 1246
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1240
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_3
    const-string v7, "transaction"

    invoke-virtual {v3, v7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1241
    const-string v7, "signature"

    invoke-virtual {v3, v7, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private verifyPurchase(Lcom/com2us/module/inapp/googleplay/Purchase;Ljava/lang/String;)I
    .locals 2
    .param p1, "purchase"    # Lcom/com2us/module/inapp/googleplay/Purchase;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .local v0, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    invoke-direct {p0, v0, p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->verifyPurchase(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private verifyPurchase(Ljava/util/List;Ljava/lang/String;)I
    .locals 12
    .param p2, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/com2us/module/inapp/googleplay/Purchase;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1130
    .local p1, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    const-string v0, "verifyPurchase"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1131
    const/4 v10, 0x1

    .line 1133
    .local v10, "resultBill":I
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 1134
    .local v11, "verifyList":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1138
    :try_start_0
    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->RC_VERIFY:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->strPostDataBuilder(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1139
    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isUseTestServer:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1138
    :goto_1
    invoke-static {v1, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1141
    .local v9, "responseStr":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "responseStr : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1143
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v8, "responseData":Lorg/json/JSONObject;
    const-string v0, "result"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "verifyList : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    .end local v8    # "responseData":Lorg/json/JSONObject;
    .end local v9    # "responseStr":Ljava/lang/String;
    :goto_2
    return v10

    .line 1134
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/com2us/module/inapp/googleplay/Purchase;

    .line 1135
    .local v7, "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    invoke-direct {p0, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->makeVerifyData(Lcom/com2us/module/inapp/googleplay/Purchase;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1139
    .end local v7    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    :cond_1
    const/16 v0, 0x8

    :try_start_1
    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1148
    :catch_0
    move-exception v6

    .line 1149
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1150
    const/4 v10, -0x1

    goto :goto_2
.end method


# virtual methods
.method protected activityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "activityResult : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$16;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 449
    return-void
.end method

.method protected destroy()V
    .locals 2

    .prologue
    .line 407
    const-string v0, "destroy"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mBroadcastReceiver:Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$15;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$15;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 423
    :cond_0
    const-string v0, "Destroying helper."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->dispose()V

    .line 426
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    .line 427
    return-void
.end method

.method protected iapBuyFinish()V
    .locals 11

    .prologue
    .line 348
    const-string v0, "BuyFinish, Receive CB"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 350
    new-instance v6, Lcom/com2us/module/inapp/googleplay/BillingDatabase;

    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;-><init>(Landroid/content/Context;)V

    .line 351
    .local v6, "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    invoke-virtual {v6}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->getPurchaseData()[[Ljava/lang/String;

    move-result-object v10

    .line 353
    .local v10, "purchasedData":[[Ljava/lang/String;
    if-eqz v10, :cond_0

    array-length v0, v10

    if-gtz v0, :cond_1

    .line 354
    :cond_0
    const-string v0, "purchasedData is nothing"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 383
    :goto_0
    return-void

    .line 359
    :cond_1
    const/4 v8, 0x0

    .line 360
    .local v8, "i":I
    const/4 v8, 0x0

    :goto_1
    :try_start_0
    array-length v0, v10

    if-lt v8, v0, :cond_2

    .line 372
    :goto_2
    array-length v0, v10

    if-ne v8, v0, :cond_4

    .line 373
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :goto_3
    invoke-virtual {v6}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    goto :goto_0

    .line 361
    :cond_2
    :try_start_1
    const-string v0, "0"

    aget-object v1, v10, v8

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    new-instance v9, Lcom/com2us/module/inapp/googleplay/Purchase;

    const-string v0, "inapp"

    aget-object v1, v10, v8

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-object v2, v10, v8

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v9, v0, v1, v2}, Lcom/com2us/module/inapp/googleplay/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v9, "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getPurchaseState()I

    move-result v0

    if-nez v0, :cond_3

    .line 364
    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->RC_LOG:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->strPostDataBuilder(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->updateLogData(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->deletePurchase(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v6}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 378
    .end local v9    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    :catch_0
    move-exception v7

    .line 379
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    invoke-virtual {v6}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    goto :goto_0

    .line 360
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 375
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendSuccess()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 380
    :catchall_0
    move-exception v0

    .line 381
    invoke-virtual {v6}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 382
    throw v0
.end method

.method protected iapBuyItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "_pid"    # Ljava/lang/String;
    .param p2, "_quantity"    # I
    .param p3, "_uid"    # Ljava/lang/String;
    .param p4, "_addtionalInfo"    # Ljava/lang/String;

    .prologue
    .line 285
    const-string v1, "BuyItem"

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isSuccessInitialize:Z

    if-nez v1, :cond_2

    .line 288
    new-instance v7, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v2, "googleplay"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->InitializeErrorResult:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->InitializeErrorResult:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    if-nez v1, :cond_1

    const-string v1, "Start Setup Error."

    .line 288
    :goto_1
    invoke-direct {v7, v2, v3, v1}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v7, "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    const/4 v2, 0x3

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    .end local v7    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    :goto_2
    return-void

    .line 288
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->InitializeErrorResult:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    .line 289
    invoke-virtual {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getResponse()I

    move-result v1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->InitializeErrorResult:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    invoke-virtual {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 294
    :cond_2
    new-instance v15, Lcom/com2us/module/inapp/googleplay/BillingDatabase;

    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;-><init>(Landroid/content/Context;)V

    .line 295
    .local v15, "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    invoke-virtual {v15}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->getPurchaseData()[[Ljava/lang/String;

    move-result-object v17

    .line 296
    .local v17, "purchasedData":[[Ljava/lang/String;
    invoke-virtual {v15}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 298
    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    array-length v1, v0

    if-lez v1, :cond_3

    .line 299
    const-string v1, "Found previous progress."

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 300
    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$13;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->showPreviousProgressInfoDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 310
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->ProgressDialogShow()V

    .line 312
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 314
    .local v11, "payload":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "isManaged"

    if-nez p2, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v11, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 315
    const-string v2, "uid"

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "0"

    :goto_4
    invoke-virtual {v11, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v1, "addtionalInfo"

    move-object/from16 v0, p4

    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    .line 319
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v2, "pid"

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "payload : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching purchase flow for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 328
    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    new-instance v8, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v8 .. v14}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 314
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v1, p3

    .line 315
    goto :goto_4

    .line 322
    :catch_0
    move-exception v16

    .line 323
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method protected iapInitialize([Ljava/lang/String;Ljava/lang/String;ZI)I
    .locals 5
    .param p1, "_pids"    # [Ljava/lang/String;
    .param p2, "_appid"    # Ljava/lang/String;
    .param p3, "_autoVerify"    # Z
    .param p4, "cbRef"    # I

    .prologue
    const/4 v1, 0x0

    .line 79
    const-string v2, "initialize"

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 80
    sput-object p2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->appid:Ljava/lang/String;

    .line 81
    iput-boolean p3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->autoVerify:Z

    .line 82
    sput p4, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->CallBackRef:I

    .line 83
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->pids:[Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->pids:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->pids:[Ljava/lang/String;

    array-length v2, v2

    if-gtz v2, :cond_1

    .line 86
    :cond_0
    const-string v2, "pids is nothing."

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 165
    :goto_0
    return v1

    .line 89
    :cond_1
    array-length v2, p1

    :goto_1
    if-lt v1, v2, :cond_2

    .line 94
    const-string v1, "Starting setup."

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 95
    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-direct {v2, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 165
    const/4 v1, 0x1

    goto :goto_0

    .line 89
    :cond_2
    aget-object v0, p1, v1

    .line 90
    .local v0, "_pid":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected iapRestoreItem(Ljava/lang/String;)V
    .locals 7
    .param p1, "_uid"    # Ljava/lang/String;

    .prologue
    .line 242
    const-string v0, "RestoreItem"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->checkNetworkState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isInStore:Z

    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isSuccessInitialize:Z

    if-nez v0, :cond_4

    .line 249
    new-instance v6, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v1, "googleplay"

    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->InitializeErrorResult:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->InitializeErrorResult:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    if-nez v0, :cond_3

    const-string v0, "Start Setup Error."

    .line 249
    :goto_2
    invoke-direct {v6, v1, v2, v0}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .local v6, "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    const/4 v1, 0x3

    const-string v2, ""

    const/4 v3, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 249
    .end local v6    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    :cond_2
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->InitializeErrorResult:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    .line 250
    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getResponse()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->InitializeErrorResult:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 255
    :cond_4
    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->useRestoring:Z

    if-eqz v0, :cond_5

    .line 256
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$11;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$11;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 265
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->useRestoring:Z

    .line 266
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->restoreUid:Ljava/lang/String;

    .line 267
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$12;

    invoke-direct {v1, p0, p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$12;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected iapStoreEnd()V
    .locals 3

    .prologue
    .line 228
    const-string v2, "StoreEnd"

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 229
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isInStore:Z

    .line 231
    new-instance v0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;

    sget-object v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;-><init>(Landroid/content/Context;)V

    .line 232
    .local v0, "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->getLogData()[[Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "logData":[[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 235
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendLog()V

    .line 238
    :cond_0
    return-void
.end method

.method protected iapStoreStart()V
    .locals 5

    .prologue
    .line 203
    const-string v3, "StoreStart"

    invoke-static {v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 204
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isInStore:Z

    .line 206
    new-instance v0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;

    sget-object v3, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->getPurchaseData()[[Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "purchasedData":[[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->getLogData()[[Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "logData":[[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 211
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 212
    const-string v3, "StoreStart - Found previous progress."

    invoke-static {v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 213
    sget-object v3, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$10;

    invoke-direct {v4, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$10;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    invoke-virtual {p0, v3, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->showPreviousProgressInfoDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendLog()V

    goto :goto_0
.end method

.method protected iapUninitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    const-string v1, "uninitialize"

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 171
    iput-boolean v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isInStore:Z

    .line 172
    iput-boolean v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isSuccessInitialize:Z

    .line 173
    sput v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->CallBackRef:I

    .line 174
    const-string v1, ""

    sput-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->appid:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mBroadcastReceiver:Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 177
    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$9;

    invoke-direct {v2, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$9;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    :cond_0
    const-string v1, "Destroying helper."

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    if-eqz v1, :cond_1

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    invoke-virtual {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    .line 199
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GooglePlayHelper dipose exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected pause()V
    .locals 1

    .prologue
    .line 387
    const-string v0, "pause"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isPause:Z

    .line 389
    return-void
.end method

.method protected resume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 393
    const-string v0, "resume"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 394
    iput-boolean v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isPause:Z

    .line 396
    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isPurchaseUpdated:Z

    if-eqz v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "savedPurchaseUpdatedIntent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->savedPurchaseUpdatedIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 399
    const/16 v1, 0x8

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    iput-boolean v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->isPurchaseUpdated:Z

    .line 401
    iput-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->savedPurchaseUpdatedIntent:Landroid/content/Intent;

    .line 403
    :cond_0
    return-void
.end method
