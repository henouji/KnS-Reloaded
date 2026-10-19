.class public Lcom/com2us/module/inapp/lebi/LebiBilling;
.super Lcom/com2us/module/inapp/DefaultBilling;
.source "LebiBilling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;
    }
.end annotation


# static fields
.field public static final Ver:Ljava/lang/String; = "2.9.8"

.field private static balanceThread:Ljava/lang/Thread;

.field private static billingDialog:Landroid/app/Dialog;

.field private static getItemListThread:Ljava/lang/Thread;

.field private static isBilling:Z

.field private static itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

.field private static progressDialog:Landroid/app/ProgressDialog;

.field private static purchaseCheckThread:Ljava/lang/Thread;

.field private static purchaseFstDialog:Landroid/app/Dialog;

.field private static purchaseSndDialog:Landroid/app/Dialog;

.field private static purchaseTrdDialog:Landroid/app/Dialog;

.field private static sendThread:Ljava/lang/Thread;


# instance fields
.field private Popup_ChargeMsg:Ljava/lang/String;

.field private Popup_ChargeTitle:Ljava/lang/String;

.field private Popup_FailedMsg:Ljava/lang/String;

.field private Popup_FailedTitle:Ljava/lang/String;

.field private Popup_FstTitle:Ljava/lang/String;

.field private Popup_SuccessTitle:Ljava/lang/String;

.field private Progress_BalanceCheckMessage:Ljava/lang/String;

.field private Progress_Message:Ljava/lang/String;

.field private Progress_WebViewLoading:Ljava/lang/String;

.field private Text_Buy:Ljava/lang/String;

.field private Text_Cancel:Ljava/lang/String;

.field private Text_CurrentLebi:Ljava/lang/String;

.field private Text_Error:Ljava/lang/String;

.field private Text_Lebi:Ljava/lang/String;

.field private Text_Ok:Ljava/lang/String;

.field private Text_RemainLebi:Ljava/lang/String;

.field private Text_Success:Ljava/lang/String;

.field private Toast_BalanceCheckFailed:Ljava/lang/String;

.field private Toast_BillingViewClose:Ljava/lang/String;

.field private Toast_DateCheckFailed:Ljava/lang/String;

.field private Toast_HiveLoginRequired:Ljava/lang/String;

.field private Toast_ProgressStoreStart:Ljava/lang/String;

.field private Toast_PurchaseCanceled:Ljava/lang/String;

.field private pd:Ljava/lang/String;

.field private restoreUid:Ljava/lang/String;

.field private sysId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->billingDialog:Landroid/app/Dialog;

    .line 61
    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseFstDialog:Landroid/app/Dialog;

    .line 62
    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseSndDialog:Landroid/app/Dialog;

    .line 63
    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseTrdDialog:Landroid/app/Dialog;

    .line 64
    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->progressDialog:Landroid/app/ProgressDialog;

    .line 65
    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->getItemListThread:Ljava/lang/Thread;

    .line 66
    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseCheckThread:Ljava/lang/Thread;

    .line 67
    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->sendThread:Ljava/lang/Thread;

    .line 68
    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->balanceThread:Ljava/lang/Thread;

    .line 70
    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->isBilling:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "_activity"    # Landroid/app/Activity;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/com2us/module/inapp/DefaultBilling;-><init>(Landroid/app/Activity;)V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->restoreUid:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->sysId:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->pd:Ljava/lang/String;

    .line 80
    const-string v0, "Accept & buy"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FstTitle:Ljava/lang/String;

    .line 81
    const-string v0, "Success Item Purcahse"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_SuccessTitle:Ljava/lang/String;

    .line 82
    const-string v0, "Failed Item Purcahse"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FailedTitle:Ljava/lang/String;

    .line 83
    const-string v0, "Purchase failed. Please try again later."

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FailedMsg:Ljava/lang/String;

    .line 84
    const-string v0, "Not enough Lebi"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_ChargeTitle:Ljava/lang/String;

    .line 85
    const-string v0, "Not enough Lebi. Go to Lebi charging site?"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_ChargeMsg:Ljava/lang/String;

    .line 86
    const-string v0, "Waiting for check buy item..."

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_Message:Ljava/lang/String;

    .line 87
    const-string v0, "Waiting for check balance..."

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_BalanceCheckMessage:Ljava/lang/String;

    .line 88
    const-string v0, "Loading..."

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_WebViewLoading:Ljava/lang/String;

    .line 89
    const-string v0, "Checking billing progress..."

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_BillingViewClose:Ljava/lang/String;

    .line 90
    const-string v0, "Found previous progress. Please try again later."

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_ProgressStoreStart:Ljava/lang/String;

    .line 91
    const-string v0, "Hive login is required."

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_HiveLoginRequired:Ljava/lang/String;

    .line 92
    const-string v0, "Balance check failed. Please try again later."

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_BalanceCheckFailed:Ljava/lang/String;

    .line 93
    const-string v0, "If you forcefully adjust date/time, you might be unable to check your balance or make a purchase."

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_DateCheckFailed:Ljava/lang/String;

    .line 94
    const-string v0, "Purchase Canceled."

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_PurchaseCanceled:Ljava/lang/String;

    .line 95
    const-string v0, "Current Lebi"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_CurrentLebi:Ljava/lang/String;

    .line 96
    const-string v0, "Remain Lebi"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_RemainLebi:Ljava/lang/String;

    .line 97
    const-string v0, "Lebi"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Lebi:Ljava/lang/String;

    .line 98
    const-string v0, "Success"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Success:Ljava/lang/String;

    .line 99
    const-string v0, "Error"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Error:Ljava/lang/String;

    .line 100
    const-string v0, "Buy"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Buy:Ljava/lang/String;

    .line 101
    const-string v0, "Cancel"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Cancel:Ljava/lang/String;

    .line 102
    const-string v0, "OK"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Ok:Ljava/lang/String;

    .line 107
    const-string v0, "2.9.8"

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->VERSION:Ljava/lang/String;

    .line 108
    return-void
.end method

.method private FullStringbyLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "nLength"    # I

    .prologue
    .line 1295
    move v0, p2

    .line 1296
    .local v0, "nEmptyLength":I
    move-object v1, p1

    .line 1298
    .local v1, "retStr":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, p2, v2

    .line 1300
    if-gez v0, :cond_0

    .line 1301
    const/4 v0, 0x0

    .line 1304
    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    .line 1308
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FullStringbyLength : src = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dst = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 1309
    return-object v1

    .line 1305
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1306
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private declared-synchronized ProgressDialogDismiss()V
    .locals 2

    .prologue
    .line 1340
    monitor-enter p0

    :try_start_0
    const-string v0, "Dismiss Dialog"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 1341
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/lebi/LebiBilling$30;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$30;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    monitor-exit p0

    return-void

    .line 1340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized ProgressDialogShow(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1323
    monitor-enter p0

    :try_start_0
    const-string v0, "Show Dialog"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 1324
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/lebi/LebiBilling$29;

    invoke-direct {v1, p0, p1}, Lcom/com2us/module/inapp/lebi/LebiBilling$29;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    monitor-exit p0

    return-void

    .line 1323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_WebViewLoading:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1294
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->FullStringbyLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->processReturnValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseCheckThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$13(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->restoreUid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_ProgressStoreStart:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_Message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1322
    invoke-direct {p0, p1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->ProgressDialogShow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V
    .locals 0

    .prologue
    .line 1339
    invoke-direct {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->ProgressDialogDismiss()V

    return-void
.end method

.method static synthetic access$18(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->sysId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->pd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->billingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$20(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_DateCheckFailed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/com2us/module/inapp/lebi/LebiBilling;)V
    .locals 0

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->deleteBuyInfo()V

    return-void
.end method

.method static synthetic access$22(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1372
    invoke-direct {p0, p1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->makeSuccessStateValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23(Lcom/com2us/module/inapp/lebi/LebiBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$24()[Lcom/com2us/module/inapp/InAppCallback$ItemList;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    return-object v0
.end method

.method static synthetic access$25(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_HiveLoginRequired:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_BalanceCheckFailed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_ChargeMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/com2us/module/inapp/lebi/LebiBilling;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 943
    invoke-direct/range {p0 .. p5}, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchasePopup(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$29(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 63
    sput-object p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseTrdDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->appid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseTrdDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$31(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_CurrentLebi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Lebi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Lcom/com2us/module/inapp/lebi/LebiBilling;Landroid/content/Context;ILjava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 940
    invoke-direct {p0, p1, p2, p3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchasePopup(Landroid/content/Context;ILjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$34(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 61
    sput-object p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseFstDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$35()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseFstDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$36(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 62
    sput-object p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseSndDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$37()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseSndDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$38(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_PurchaseCanceled:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$39(Lcom/com2us/module/inapp/lebi/LebiBilling;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->requestPurchase()V

    return-void
.end method

.method static synthetic access$4(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1243
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->postDataBuilder(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$40(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1155
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->createBillingView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41(Lcom/com2us/module/inapp/lebi/LebiBilling;Landroid/view/View;I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1103
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->onCreateBillingDialog(Landroid/view/View;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$42(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 60
    sput-object p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->billingDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$43(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_BillingViewClose:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$44(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_BalanceCheckMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$45(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 68
    sput-object p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->balanceThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$46()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->balanceThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$47()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$48(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 1313
    invoke-direct {p0, p1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->onCreateProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$49(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 64
    sput-object p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$5(Lcom/com2us/module/inapp/lebi/LebiBilling;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->isUseTestServer:Z

    return v0
.end method

.method static synthetic access$6(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->sendToPost(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1200
    invoke-direct {p0, p1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->xmlParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 613
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->processReturnValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/com2us/module/inapp/lebi/LebiBilling;)Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    return-object v0
.end method

.method private createBillingView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p1, "strURL"    # Ljava/lang/String;
    .param p2, "postData"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1156
    new-instance v1, Landroid/webkit/WebView;

    sget-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1157
    .local v1, "webview":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1158
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1160
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 1161
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 1162
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1163
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1164
    new-instance v2, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;

    invoke-direct {v2, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1165
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1167
    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 1168
    return-object v1
.end method

.method private deleteBuyInfo()V
    .locals 3

    .prologue
    .line 930
    const-string v0, "deleteBuyInfo"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v1, "pid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v1, "quantity"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v1, "uid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v1, "addtionalInfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v1, "billingNum"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    .line 937
    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->isBilling:Z

    .line 938
    return-void
.end method

.method private isBilling()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1356
    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v4, "billingNum"

    invoke-virtual {v3, v4}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1357
    .local v0, "savedAddtionalInfo":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1358
    const-string v2, "isBilling : false"

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 1359
    sput-boolean v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->isBilling:Z

    .line 1368
    :goto_0
    return v1

    .line 1361
    :cond_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1362
    const-string v2, "isBilling : false"

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 1363
    sput-boolean v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->isBilling:Z

    goto :goto_0

    .line 1366
    :cond_1
    const-string v1, "isBilling : true"

    invoke-static {v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 1367
    sput-boolean v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->isBilling:Z

    move v1, v2

    .line 1368
    goto :goto_0
.end method

.method private makeSuccessStateValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1373
    const/16 v1, 0x29

    new-array v0, v1, [Ljava/lang/String;

    .line 1375
    .local v0, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1376
    const/4 v1, 0x1

    const-string v2, "Lebi"

    aput-object v2, v0, v1

    .line 1377
    const/16 v1, 0xc

    aput-object p1, v0, v1

    .line 1379
    return-object v0
.end method

.method private onCreateBillingDialog(Landroid/view/View;I)Landroid/app/Dialog;
    .locals 4
    .param p1, "customizeView"    # Landroid/view/View;
    .param p2, "itemPrice"    # I

    .prologue
    const/4 v3, -0x1

    .line 1104
    new-instance v0, Landroid/app/Dialog;

    sget-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1105
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1106
    new-instance v2, Lcom/com2us/module/inapp/lebi/LebiBilling$28;

    invoke-direct {v2, p0, p2}, Lcom/com2us/module/inapp/lebi/LebiBilling$28;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;I)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1147
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1148
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_0

    .line 1149
    invoke-virtual {v0, p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    :cond_0
    return-object v0
.end method

.method private onCreateProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1314
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1315
    .local v0, "pDialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1316
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1317
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1318
    return-object v0
.end method

.method private postDataBuilder(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "RequestCode"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1244
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1245
    .local v2, "postDataBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1246
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postDataBuilder : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 1248
    const/4 v3, 0x0

    .line 1250
    .local v3, "ret":Ljava/lang/String;
    new-instance v4, Lcom/com2us/security/message/CryptMessage;

    invoke-direct {v4}, Lcom/com2us/security/message/CryptMessage;-><init>()V

    .line 1251
    .local v4, "senderMessage":Lcom/com2us/security/message/CryptMessage;
    const-string v5, "pkt"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/com2us/security/message/CryptMessage;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1253
    :try_start_0
    iget-object v5, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->sysId:Ljava/lang/String;

    iget-object v6, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->pd:Ljava/lang/String;

    const-wide/16 v8, 0x12c

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/com2us/security/message/CryptMessage;->getMessage(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1257
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "encrypt postdata : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 1259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    .local v1, "postData":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "value"

    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    return-object v1

    .line 1254
    .end local v1    # "postData":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized processReturnValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 609
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->processReturnValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processReturnValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 29
    .param p1, "rqCode"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    const-string v20, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    .local v20, "response":Ljava/lang/String;
    :try_start_1
    new-instance v17, Lcom/com2us/security/message/CryptMessage;

    invoke-direct/range {v17 .. v17}, Lcom/com2us/security/message/CryptMessage;-><init>()V

    .line 619
    .local v17, "receiverMessage":Lcom/com2us/security/message/CryptMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->sysId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->pd:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v3, v1}, Lcom/com2us/security/message/CryptMessage;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v2, "pkt"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/com2us/security/message/CryptMessage;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decrypt response : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/com2us/security/message/MessageTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/com2us/security/message/MessageCryptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    .end local v17    # "receiverMessage":Lcom/com2us/security/message/CryptMessage;
    :goto_0
    :try_start_2
    const-string v19, ""

    .line 638
    .local v19, "requestCode":Ljava/lang/String;
    const-string v21, ""

    .line 639
    .local v21, "responseData":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 640
    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 645
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processReturnValue requestCode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 648
    const-string v2, "07"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 649
    const-string v2, "process request item price"

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processReturnValue responseData : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    :try_start_3
    new-instance v27, Lorg/json/JSONArray;

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 673
    .local v27, "toBeParsedArray":Lorg/json/JSONArray;
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v16

    .line 675
    .local v16, "jsonArrayLength":I
    if-eqz v16, :cond_2

    .line 676
    move/from16 v0, v16

    new-array v2, v0, [Lcom/com2us/module/inapp/InAppCallback$ItemList;

    sput-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    .line 678
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 693
    const/4 v3, 0x1

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    sget-object v8, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 695
    :try_start_4
    const-string v22, "OK"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 925
    .end local v15    # "i":I
    .end local v16    # "jsonArrayLength":I
    .end local v27    # "toBeParsedArray":Lorg/json/JSONArray;
    :goto_3
    monitor-exit p0

    return-object v22

    .line 623
    .end local v19    # "requestCode":Ljava/lang/String;
    .end local v21    # "responseData":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 624
    .local v12, "e":Lcom/com2us/security/message/MessageTimeoutException;
    :try_start_5
    invoke-virtual {v12}, Lcom/com2us/security/message/MessageTimeoutException;->printStackTrace()V

    .line 625
    sget-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/com2us/module/inapp/lebi/LebiBilling$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/com2us/module/inapp/lebi/LebiBilling$13;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 631
    const-string v20, "error"

    goto/16 :goto_0

    .line 632
    .end local v12    # "e":Lcom/com2us/security/message/MessageTimeoutException;
    :catch_1
    move-exception v12

    .line 633
    .local v12, "e":Lcom/com2us/security/message/MessageCryptException;
    invoke-virtual {v12}, Lcom/com2us/security/message/MessageCryptException;->printStackTrace()V

    .line 634
    const-string v20, "error"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 642
    .end local v12    # "e":Lcom/com2us/security/message/MessageCryptException;
    .restart local v19    # "requestCode":Ljava/lang/String;
    .restart local v21    # "responseData":Ljava/lang/String;
    :cond_0
    move-object/from16 v19, p1

    .line 643
    move-object/from16 v21, v20

    goto/16 :goto_1

    .line 679
    .restart local v15    # "i":I
    .restart local v16    # "jsonArrayLength":I
    .restart local v27    # "toBeParsedArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_6
    sget-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    new-instance v3, Lcom/com2us/module/inapp/InAppCallback$ItemList;

    invoke-direct {v3}, Lcom/com2us/module/inapp/InAppCallback$ItemList;-><init>()V

    aput-object v3, v2, v15

    .line 680
    sget-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    aget-object v2, v2, v15

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "billitemid"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/com2us/module/inapp/InAppCallback$ItemList;->productID:Ljava/lang/String;

    .line 681
    sget-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    aget-object v2, v2, v15

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "price"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/com2us/module/inapp/InAppCallback$ItemList;->formattedString:Ljava/lang/String;

    .line 682
    sget-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    aget-object v2, v2, v15

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "itemname"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/com2us/module/inapp/InAppCallback$ItemList;->localizedTitle:Ljava/lang/String;

    .line 683
    sget-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    aget-object v2, v2, v15

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "itemdiv"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/com2us/module/inapp/InAppCallback$ItemList;->localizedDescription:Ljava/lang/String;

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gamename : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "gamename"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemList["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] (itemname) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    aget-object v3, v3, v15

    iget-object v3, v3, Lcom/com2us/module/inapp/InAppCallback$ItemList;->productID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemList["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] (price)    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    aget-object v3, v3, v15

    iget-object v3, v3, Lcom/com2us/module/inapp/InAppCallback$ItemList;->formattedString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemList["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] (itemname) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    aget-object v3, v3, v15

    iget-object v3, v3, Lcom/com2us/module/inapp/InAppCallback$ItemList;->localizedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemList["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] (itemdiv)  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    aget-object v3, v3, v15

    iget-object v3, v3, Lcom/com2us/module/inapp/InAppCallback$ItemList;->localizedDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 678
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 698
    .end local v15    # "i":I
    :cond_2
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 701
    .end local v16    # "jsonArrayLength":I
    .end local v27    # "toBeParsedArray":Lorg/json/JSONArray;
    :catch_2
    move-exception v12

    .line 702
    .local v12, "e":Lorg/json/JSONException;
    :try_start_7
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    .line 703
    const/4 v2, 0x0

    sput-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "process request item price failed (jsonObject parse failed) : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 707
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 710
    .end local v12    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v2, "04"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 711
    const-string v2, "process request purchase check"

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 714
    const/4 v2, 0x2

    const/4 v3, 0x6

    :try_start_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v21

    .line 719
    :goto_4
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processReturnValue responseData : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 722
    :try_start_a
    const-string v2, "0001"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 723
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "pid"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "quantity"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "uid"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "addtionalInfo"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "billingNum"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->makeSuccessStateValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    .line 723
    invoke-virtual/range {v2 .. v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 753
    :goto_5
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 715
    :catch_3
    move-exception v12

    .line 716
    .local v12, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 717
    const-string v21, "0000"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 729
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_c
    const-string v2, "5001"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 730
    const-string v2, "9998"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 731
    const-string v2, "9999"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 732
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "process request purchase check failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 733
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "pid"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "quantity"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "uid"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "addtionalInfo"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 737
    new-instance v8, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v2, ""

    const-string v28, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v8, v0, v2, v1}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 733
    invoke-virtual/range {v2 .. v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 748
    :catch_4
    move-exception v12

    .line 749
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "process request purchase check failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_5

    .line 615
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v19    # "requestCode":Ljava/lang/String;
    .end local v20    # "response":Ljava/lang/String;
    .end local v21    # "responseData":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 740
    .restart local v19    # "requestCode":Ljava/lang/String;
    .restart local v20    # "response":Ljava/lang/String;
    .restart local v21    # "responseData":Ljava/lang/String;
    :cond_6
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->deleteBuyInfo()V

    .line 741
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "pid"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "quantity"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "uid"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "addtionalInfo"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 745
    new-instance v8, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v2, ""

    const-string v28, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v8, v0, v2, v1}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 741
    invoke-virtual/range {v2 .. v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_5

    .line 756
    :cond_7
    :try_start_f
    const-string v2, "06"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 757
    const-string v2, "process request balance"

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 759
    const/4 v2, 0x2

    const/16 v3, 0xb

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xb

    const/16 v8, 0x14

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    goto/16 :goto_3

    .line 762
    :cond_8
    const-string v2, "08"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 763
    const-string v2, "process request restore item"

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processReturnValue responseData : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 767
    const/16 v22, 0x0

    .line 770
    .local v22, "restoreItemlist":[Ljava/lang/String;
    :try_start_10
    new-instance v27, Lorg/json/JSONArray;

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 771
    .restart local v27    # "toBeParsedArray":Lorg/json/JSONArray;
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v16

    .line 773
    .restart local v16    # "jsonArrayLength":I
    if-nez v16, :cond_9

    .line 774
    const/4 v3, 0x5

    const-string v4, ""

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->restoreUid:Ljava/lang/String;

    const-string v7, ""

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->makeSuccessStateValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 779
    :goto_6
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_7
    move/from16 v0, v16

    if-lt v15, v0, :cond_a

    .line 785
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->restoreUid:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_3

    .line 787
    .end local v15    # "i":I
    .end local v16    # "jsonArrayLength":I
    .end local v27    # "toBeParsedArray":Lorg/json/JSONArray;
    :catch_5
    move-exception v12

    .line 788
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_11
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "process request restore item failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 790
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->restoreUid:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_3

    .line 776
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v16    # "jsonArrayLength":I
    .restart local v27    # "toBeParsedArray":Lorg/json/JSONArray;
    :cond_9
    :try_start_12
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    goto :goto_6

    .line 780
    .restart local v15    # "i":I
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restore jsonArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v22, v15

    .line 782
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->restoreUid:Ljava/lang/String;

    const-string v7, ""

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->makeSuccessStateValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 779
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 796
    .end local v15    # "i":I
    .end local v16    # "jsonArrayLength":I
    .end local v22    # "restoreItemlist":[Ljava/lang/String;
    .end local v27    # "toBeParsedArray":Lorg/json/JSONArray;
    :cond_b
    :try_start_13
    const-string v2, "02"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_13

    .line 797
    const-string v2, "process buy item"

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v3, "pid"

    invoke-virtual {v2, v3}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 800
    .local v4, "pid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v3, "quantity"

    invoke-virtual {v2, v3}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 802
    .local v24, "strQuantity":Ljava/lang/String;
    if-nez v24, :cond_c

    const/4 v5, 0x0

    .line 805
    .local v5, "quantity":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 806
    .local v6, "uid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v3, "addtionalInfo"

    invoke-virtual {v2, v3}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 808
    .local v7, "addtionalInfo":Ljava/lang/String;
    const-string v25, "0000"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 810
    .local v25, "subData":Ljava/lang/String;
    const/4 v2, 0x2

    const/4 v3, 0x6

    :try_start_14
    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v21

    .line 815
    :goto_9
    const/4 v2, 0x2

    const/4 v3, 0x6

    :try_start_15
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v25

    .line 821
    :goto_a
    :try_start_16
    const-string v2, "0001"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    .line 823
    const-string v2, "success check"

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 824
    const/4 v2, 0x2

    const/4 v3, 0x6

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 825
    .local v23, "resultCode":Ljava/lang/String;
    const/4 v2, 0x6

    const/16 v3, 0xf

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 826
    .local v10, "billingNum":Ljava/lang/String;
    const/16 v2, 0xf

    const/16 v3, 0x18

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 827
    .local v18, "remainLebi":Ljava/lang/String;
    const/16 v2, 0x18

    const/16 v3, 0x21

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 828
    .local v11, "bonusLebi":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resultCode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "billingNum : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remainLebi : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bonusLebi  : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v3, "billingNum"

    invoke-virtual {v2, v3, v10}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->storeProperty(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 836
    const/4 v9, -0x1

    .line 838
    .local v9, "balance":I
    :try_start_17
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result v3

    add-int v9, v2, v3

    .line 845
    :goto_b
    const/4 v2, -0x1

    if-eq v9, v2, :cond_e

    .line 846
    :try_start_18
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_RemainLebi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Lebi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    .line 852
    .local v26, "successMsg":Ljava/lang/StringBuffer;
    :goto_c
    sget-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/com2us/module/inapp/lebi/LebiBilling$14;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v3, v0, v1}, Lcom/com2us/module/inapp/lebi/LebiBilling$14;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/StringBuffer;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 920
    .end local v9    # "balance":I
    .end local v10    # "billingNum":Ljava/lang/String;
    .end local v11    # "bonusLebi":Ljava/lang/String;
    .end local v18    # "remainLebi":Ljava/lang/String;
    .end local v23    # "resultCode":Ljava/lang/String;
    .end local v26    # "successMsg":Ljava/lang/StringBuffer;
    :goto_d
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 803
    .end local v5    # "quantity":I
    .end local v6    # "uid":Ljava/lang/String;
    .end local v7    # "addtionalInfo":Ljava/lang/String;
    .end local v25    # "subData":Ljava/lang/String;
    :cond_c
    const-string v2, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v5, 0x0

    .line 804
    .restart local v5    # "quantity":I
    goto/16 :goto_8

    .end local v5    # "quantity":I
    :cond_d
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .restart local v5    # "quantity":I
    goto/16 :goto_8

    .line 811
    .restart local v6    # "uid":Ljava/lang/String;
    .restart local v7    # "addtionalInfo":Ljava/lang/String;
    .restart local v25    # "subData":Ljava/lang/String;
    :catch_6
    move-exception v12

    .line 812
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 813
    const-string v21, "0000"

    goto/16 :goto_9

    .line 816
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v12

    .line 817
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 818
    const-string v25, "0000"

    goto/16 :goto_a

    .line 839
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v9    # "balance":I
    .restart local v10    # "billingNum":Ljava/lang/String;
    .restart local v11    # "bonusLebi":Ljava/lang/String;
    .restart local v18    # "remainLebi":Ljava/lang/String;
    .restart local v23    # "resultCode":Ljava/lang/String;
    :catch_8
    move-exception v12

    .line 840
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 841
    const/4 v9, -0x1

    goto :goto_b

    .line 848
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_e
    const-string v2, "success check - balance error"

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 849
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Success:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    .restart local v26    # "successMsg":Ljava/lang/StringBuffer;
    goto :goto_c

    .line 862
    .end local v9    # "balance":I
    .end local v10    # "billingNum":Ljava/lang/String;
    .end local v11    # "bonusLebi":Ljava/lang/String;
    .end local v18    # "remainLebi":Ljava/lang/String;
    .end local v23    # "resultCode":Ljava/lang/String;
    .end local v26    # "successMsg":Ljava/lang/StringBuffer;
    :cond_f
    const-string v2, "OKAY"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    .line 863
    const-string v2, "cb BUY_SUCCESS"

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 864
    invoke-direct/range {p0 .. p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->ProgressDialogDismiss()V

    .line 865
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v8, "billingNum"

    invoke-virtual {v2, v8}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->makeSuccessStateValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 868
    :cond_10
    const-string v2, "CNCL"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    .line 870
    const-string v2, "user cancel"

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 871
    invoke-direct/range {p0 .. p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->deleteBuyInfo()V

    .line 872
    sget-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/com2us/module/inapp/lebi/LebiBilling$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/com2us/module/inapp/lebi/LebiBilling$15;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 878
    invoke-direct/range {p0 .. p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->ProgressDialogDismiss()V

    .line 879
    const/4 v3, 0x4

    const-string v8, "User Cancel."

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 882
    :cond_11
    const-string v2, "FAIL"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 883
    const-string v13, "Error"
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 885
    .local v13, "errorCode":Ljava/lang/String;
    const/4 v2, 0x2

    const/4 v3, 0x6

    :try_start_19
    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result-object v13

    .line 890
    :goto_e
    :try_start_1a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 891
    invoke-direct/range {p0 .. p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->deleteBuyInfo()V

    .line 892
    invoke-direct/range {p0 .. p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->ProgressDialogDismiss()V

    .line 893
    const/4 v3, 0x3

    new-instance v8, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v2, ""

    const-string v28, ""

    move-object/from16 v0, v28

    invoke-direct {v8, v13, v2, v0}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 886
    :catch_9
    move-exception v12

    .line 887
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 888
    const-string v13, "Error"

    goto :goto_e

    .line 898
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "errorCode":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Error:Ljava/lang/String;

    .line 900
    .restart local v13    # "errorCode":Ljava/lang/String;
    move-object/from16 v13, v21

    .line 905
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 907
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FailedMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " Code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Error:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 909
    .local v14, "failedMsg":Ljava/lang/StringBuffer;
    sget-object v2, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/com2us/module/inapp/lebi/LebiBilling$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/com2us/module/inapp/lebi/LebiBilling$16;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/StringBuffer;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_d

    .line 925
    .end local v4    # "pid":Ljava/lang/String;
    .end local v5    # "quantity":I
    .end local v6    # "uid":Ljava/lang/String;
    .end local v7    # "addtionalInfo":Ljava/lang/String;
    .end local v13    # "errorCode":Ljava/lang/String;
    .end local v14    # "failedMsg":Ljava/lang/StringBuffer;
    .end local v24    # "strQuantity":Ljava/lang/String;
    .end local v25    # "subData":Ljava/lang/String;
    :cond_13
    const/16 v22, 0x0

    goto/16 :goto_3
.end method

.method private purchasePopup(Landroid/content/Context;ILjava/lang/String;)Landroid/app/Dialog;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kind"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 941
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchasePopup(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private purchasePopup(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Landroid/app/Dialog;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kind"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "price"    # I
    .param p5, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 945
    const-string v2, "Purchase"

    .line 947
    .local v2, "title":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 965
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 967
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 968
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 969
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 970
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 971
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 972
    packed-switch p2, :pswitch_data_1

    .line 1076
    new-instance v3, Lcom/com2us/module/inapp/lebi/LebiBilling$27;

    invoke-direct {v3, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$27;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1087
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1098
    .local v1, "dialog":Landroid/app/Dialog;
    return-object v1

    .line 949
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FstTitle:Ljava/lang/String;

    .line 950
    goto :goto_0

    .line 952
    :pswitch_1
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_SuccessTitle:Ljava/lang/String;

    .line 953
    goto :goto_0

    .line 955
    :pswitch_2
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FailedTitle:Ljava/lang/String;

    .line 956
    goto :goto_0

    .line 958
    :pswitch_3
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_ChargeTitle:Ljava/lang/String;

    goto :goto_0

    .line 974
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_4
    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Buy:Ljava/lang/String;

    new-instance v4, Lcom/com2us/module/inapp/lebi/LebiBilling$17;

    invoke-direct {v4, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$17;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 982
    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Cancel:Ljava/lang/String;

    new-instance v4, Lcom/com2us/module/inapp/lebi/LebiBilling$18;

    invoke-direct {v4, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$18;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 989
    new-instance v3, Lcom/com2us/module/inapp/lebi/LebiBilling$19;

    invoke-direct {v3, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$19;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 999
    :pswitch_5
    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Ok:Ljava/lang/String;

    new-instance v4, Lcom/com2us/module/inapp/lebi/LebiBilling$20;

    invoke-direct {v4, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$20;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1007
    new-instance v3, Lcom/com2us/module/inapp/lebi/LebiBilling$21;

    invoke-direct {v3, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$21;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1018
    :pswitch_6
    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Ok:Ljava/lang/String;

    new-instance v4, Lcom/com2us/module/inapp/lebi/LebiBilling$22;

    invoke-direct {v4, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$22;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1026
    new-instance v3, Lcom/com2us/module/inapp/lebi/LebiBilling$23;

    invoke-direct {v3, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$23;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1037
    :pswitch_7
    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Ok:Ljava/lang/String;

    new-instance v4, Lcom/com2us/module/inapp/lebi/LebiBilling$24;

    invoke-direct {v4, p0, p5, p4}, Lcom/com2us/module/inapp/lebi/LebiBilling$24;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1057
    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Cancel:Ljava/lang/String;

    new-instance v4, Lcom/com2us/module/inapp/lebi/LebiBilling$25;

    invoke-direct {v4, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$25;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1065
    new-instance v3, Lcom/com2us/module/inapp/lebi/LebiBilling$26;

    invoke-direct {v3, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$26;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 947
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 972
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private requestPurchase()V
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x2

    .line 574
    const-string v6, "requestPurchase"

    invoke-static {v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 576
    iget-object v6, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v7, "pid"

    invoke-virtual {v6, v7}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "pid":Ljava/lang/String;
    iget-object v6, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v7, "quantity"

    invoke-virtual {v6, v7}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, "strQuantity":Ljava/lang/String;
    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 582
    .local v3, "quantity":I
    :goto_0
    iget-object v6, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v7, "uid"

    invoke-virtual {v6, v7}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, "uid":Ljava/lang/String;
    iget-object v6, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->propertyUtil:Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    const-string v7, "addtionalInfo"

    invoke-virtual {v6, v7}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "addtionalInfo":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pid : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 586
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "quantity : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 587
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "uid : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 588
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "addtionalInfo : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 590
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 591
    const/16 v7, 0xc

    invoke-direct {p0, v1, v7}, Lcom/com2us/module/inapp/lebi/LebiBilling;->FullStringbyLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 592
    invoke-direct {p0, v5, v9}, Lcom/com2us/module/inapp/lebi/LebiBilling;->FullStringbyLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 593
    const-string v7, "03"

    invoke-direct {p0, v7, v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->FullStringbyLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 594
    const-string v7, "03"

    invoke-direct {p0, v7, v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->FullStringbyLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 595
    invoke-direct {p0, v5, v9}, Lcom/com2us/module/inapp/lebi/LebiBilling;->FullStringbyLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 597
    .local v2, "postDataBuffer":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/com2us/module/inapp/lebi/LebiBilling$12;

    invoke-direct {v7, p0, v2}, Lcom/com2us/module/inapp/lebi/LebiBilling$12;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/StringBuffer;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 604
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 605
    return-void

    .line 580
    .end local v0    # "addtionalInfo":Ljava/lang/String;
    .end local v2    # "postDataBuffer":Ljava/lang/StringBuffer;
    .end local v3    # "quantity":I
    .end local v5    # "uid":Ljava/lang/String;
    :cond_0
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    .line 581
    .restart local v3    # "quantity":I
    goto/16 :goto_0

    .end local v3    # "quantity":I
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3    # "quantity":I
    goto/16 :goto_0
.end method

.method private sendToPost(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p2, "postUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1268
    .local p1, "postData":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1269
    .local v3, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v8, 0x1388

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1270
    const/16 v8, 0x1388

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1272
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 1273
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1274
    .local v4, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v8, "UTF-8"

    invoke-direct {v2, p1, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 1275
    .local v2, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1277
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1278
    .local v6, "responsePOST":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1280
    .local v5, "responseEntity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_0

    .line 1282
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 1283
    .local v7, "returnValue":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sendToPost RESPONSE : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "responsePOST":Lorg/apache/http/HttpResponse;
    .end local v7    # "returnValue":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1286
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "responsePOST":Lorg/apache/http/HttpResponse;
    :cond_0
    const-string v7, "-1"

    goto :goto_0

    .line 1287
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "responsePOST":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 1288
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1289
    const-string v7, "-2"

    goto :goto_0
.end method

.method private setLanguage()V
    .locals 4

    .prologue
    .line 1403
    invoke-virtual {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1404
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1406
    .local v1, "language":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Country is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 1407
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Language is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 1409
    const-string v2, "ko"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1410
    const-string v2, "\uc2b9\uc778 & \uad6c\ub9e4"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FstTitle:Ljava/lang/String;

    .line 1411
    const-string v2, "\uc544\uc774\ud15c \uad6c\ub9e4 \uc131\uacf5"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_SuccessTitle:Ljava/lang/String;

    .line 1412
    const-string v2, "\uc544\uc774\ud15c \uad6c\ub9e4 \uc2e4\ud328"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FailedTitle:Ljava/lang/String;

    .line 1413
    const-string v2, "\uad6c\ub9e4\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4. \uc7a0\uc2dc \ud6c4\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc138\uc694."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FailedMsg:Ljava/lang/String;

    .line 1414
    const-string v2, "\ub7ec\ube44 \uc794\uc561\uc774 \ubd80\uc871\ud569\ub2c8\ub2e4"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_ChargeTitle:Ljava/lang/String;

    .line 1415
    const-string v2, "\ub7ec\ube44 \uc794\uc561\uc774 \ubd80\uc871\ud569\ub2c8\ub2e4. \ub7ec\ube44 \ucda9\uc804 \uc0ac\uc774\ud2b8\ub85c \uac00\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_ChargeMsg:Ljava/lang/String;

    .line 1416
    const-string v2, "\uad6c\ub9e4 \uc544\uc774\ud15c \ud655\uc778\uc911..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_Message:Ljava/lang/String;

    .line 1417
    const-string v2, "\ub7ec\ube44 \uc794\uc561 \uc870\ud68c\uc911..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_BalanceCheckMessage:Ljava/lang/String;

    .line 1418
    const-string v2, "\ub85c\ub529 \uc911..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_WebViewLoading:Ljava/lang/String;

    .line 1419
    const-string v2, "\uacb0\uc81c \uc815\ubcf4\ub97c \ud655\uc778\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_BillingViewClose:Ljava/lang/String;

    .line 1420
    const-string v2, "\uc774\uc804\uc5d0 \uc644\ub8cc\ud558\uc9c0 \ubabb\ud55c \uad6c\ub9e4\uacb0\uacfc\ub97c \uc870\ud68c\ud569\ub2c8\ub2e4."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_ProgressStoreStart:Ljava/lang/String;

    .line 1421
    const-string v2, "HIVE \ub85c\uadf8\uc778\uc774 \ud544\uc694\ud569\ub2c8\ub2e4."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_HiveLoginRequired:Ljava/lang/String;

    .line 1422
    const-string v2, "\uc794\uc561 \ud655\uc778\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4. \uc7a0\uc2dc \ud6c4\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc138\uc694."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_BalanceCheckFailed:Ljava/lang/String;

    .line 1423
    const-string v2, "\ub0a0\uc9dc/\uc2dc\uac04 \uc744 \uc784\uc758\ub85c \uc870\uc815\ud558\uba74 \uc794\uc561 \uc870\ud68c \ubc0f \uad6c\ub9e4\uac00 \ubd88\uac00\ub2a5 \ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_DateCheckFailed:Ljava/lang/String;

    .line 1424
    const-string v2, "\uad6c\ub9e4\uac00 \ucde8\uc18c\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_PurchaseCanceled:Ljava/lang/String;

    .line 1425
    const-string v2, "\ud604\uc7ac \ub7ec\ube44"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_CurrentLebi:Ljava/lang/String;

    .line 1426
    const-string v2, "\ub0a8\uc740 \ub7ec\ube44"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_RemainLebi:Ljava/lang/String;

    .line 1427
    const-string v2, "\ub7ec\ube44"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Lebi:Ljava/lang/String;

    .line 1428
    const-string v2, "\uc131\uacf5"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Success:Ljava/lang/String;

    .line 1429
    const-string v2, "\uc5d0\ub7ec"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Error:Ljava/lang/String;

    .line 1430
    const-string v2, "\uad6c\ub9e4"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Buy:Ljava/lang/String;

    .line 1431
    const-string v2, "\ucde8\uc18c"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Cancel:Ljava/lang/String;

    .line 1432
    const-string v2, "\ud655\uc778"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Ok:Ljava/lang/String;

    .line 1512
    :goto_0
    return-void

    .line 1435
    :cond_0
    const-string v2, "us"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1436
    const-string v2, "Accept & buy"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FstTitle:Ljava/lang/String;

    .line 1437
    const-string v2, "Success Item Purcahse"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_SuccessTitle:Ljava/lang/String;

    .line 1438
    const-string v2, "Failed Item Purcahse"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FailedTitle:Ljava/lang/String;

    .line 1439
    const-string v2, "Purchase failed. Please try again later."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FailedMsg:Ljava/lang/String;

    .line 1440
    const-string v2, "Not enough Lebi"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_ChargeTitle:Ljava/lang/String;

    .line 1441
    const-string v2, "Not enough Lebi. Go to Lebi charging site?"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_ChargeMsg:Ljava/lang/String;

    .line 1442
    const-string v2, "Waiting for check buy item..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_Message:Ljava/lang/String;

    .line 1443
    const-string v2, "Waiting for check balance..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_BalanceCheckMessage:Ljava/lang/String;

    .line 1444
    const-string v2, "Loading..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_WebViewLoading:Ljava/lang/String;

    .line 1445
    const-string v2, "Checking billing progress..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_BillingViewClose:Ljava/lang/String;

    .line 1446
    const-string v2, "Found previous progress. Please try again later."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_ProgressStoreStart:Ljava/lang/String;

    .line 1447
    const-string v2, "Hive login is required."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_HiveLoginRequired:Ljava/lang/String;

    .line 1448
    const-string v2, "Balance check failed. Please try again later."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_BalanceCheckFailed:Ljava/lang/String;

    .line 1449
    const-string v2, "If you forcefully adjust date/time, you might be unable to check your balance or make a purchase."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_DateCheckFailed:Ljava/lang/String;

    .line 1450
    const-string v2, "Purchase Canceled."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_PurchaseCanceled:Ljava/lang/String;

    .line 1451
    const-string v2, "Current Lebi"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_CurrentLebi:Ljava/lang/String;

    .line 1452
    const-string v2, "Remain Lebi"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_RemainLebi:Ljava/lang/String;

    .line 1453
    const-string v2, "Lebi"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Lebi:Ljava/lang/String;

    .line 1454
    const-string v2, "Success"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Success:Ljava/lang/String;

    .line 1455
    const-string v2, "Error"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Error:Ljava/lang/String;

    .line 1456
    const-string v2, "Buy"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Buy:Ljava/lang/String;

    .line 1457
    const-string v2, "Cancel"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Cancel:Ljava/lang/String;

    .line 1458
    const-string v2, "OK"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Ok:Ljava/lang/String;

    goto :goto_0

    .line 1461
    :cond_1
    const-string v2, "tw"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1462
    const-string v2, "\u540c\u610f\u4e26\u4e14\u8cfc\u8cb7"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FstTitle:Ljava/lang/String;

    .line 1463
    const-string v2, "\u8cfc\u8cb7\u9053\u5177\u6210\u529f"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_SuccessTitle:Ljava/lang/String;

    .line 1464
    const-string v2, "\u8cfc\u8cb7\u9053\u5177\u5931\u6557"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FailedTitle:Ljava/lang/String;

    .line 1465
    const-string v2, "\u8cfc\u8cb7\u5931\u6557,\u8acb\u7a0d\u5f8c\u518d\u8a66."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FailedMsg:Ljava/lang/String;

    .line 1466
    const-string v2, "\u6a02\u5e63\u9918\u984d\u4e0d\u8db3"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_ChargeTitle:Ljava/lang/String;

    .line 1467
    const-string v2, "\u6a02\u5e63\u9918\u984d\u4e0d\u8db3, \u8981\u7acb\u5373\u5145\u503c\u55ce\uff1f"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_ChargeMsg:Ljava/lang/String;

    .line 1468
    const-string v2, "\u4ea4\u6613\u9032\u884c\u4e2d..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_Message:Ljava/lang/String;

    .line 1469
    const-string v2, "\u7db2\u7d61\u9023\u63a5\u4e2d..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_BalanceCheckMessage:Ljava/lang/String;

    .line 1470
    const-string v2, "\u52a0\u8f09\u4e2d..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_WebViewLoading:Ljava/lang/String;

    .line 1471
    const-string v2, "\u6b63\u5728\u78ba\u8a8d\u4ea4\u6613\u7d50\u679c..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_BillingViewClose:Ljava/lang/String;

    .line 1472
    const-string v2, "\u767c\u73fe\u5df2\u6709\u9032\u7a0b,\u8acb\u7a0d\u5f8c\u518d\u8a66."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_ProgressStoreStart:Ljava/lang/String;

    .line 1473
    const-string v2, "\u8acb\u767b\u9304Com2uS Hive."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_HiveLoginRequired:Ljava/lang/String;

    .line 1474
    const-string v2, "\u67e5\u8a62\u9918\u984d\u5931\u6557,\u8acb\u7a0d\u5f8c\u518d\u8a66."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_BalanceCheckFailed:Ljava/lang/String;

    .line 1475
    const-string v2, "\u4efb\u610f\u8abf\u6574\u6642\u9593\u6216\u65e5\u671f,\u53ef\u80fd\u7121\u6cd5\u67e5\u770b\u9918\u984d\u6216\u7121\u6cd5\u9032\u884c\u8cfc\u8cb7"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_DateCheckFailed:Ljava/lang/String;

    .line 1476
    const-string v2, "\u8cfc\u8cb7\u5df2\u53d6\u6d88"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_PurchaseCanceled:Ljava/lang/String;

    .line 1477
    const-string v2, "\u7576\u524d\u6301\u6709\u6a02\u5e63"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_CurrentLebi:Ljava/lang/String;

    .line 1478
    const-string v2, "\u5269\u9918\u6a02\u5e63"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_RemainLebi:Ljava/lang/String;

    .line 1479
    const-string v2, "\u6a02\u5e63"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Lebi:Ljava/lang/String;

    .line 1480
    const-string v2, "\u6210\u529f"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Success:Ljava/lang/String;

    .line 1481
    const-string v2, "\u5931\u6557"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Error:Ljava/lang/String;

    .line 1482
    const-string v2, "\u8cfc\u8cb7"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Buy:Ljava/lang/String;

    .line 1483
    const-string v2, "\u53d6\u6d88"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Cancel:Ljava/lang/String;

    .line 1484
    const-string v2, "\u78ba\u8a8d"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Ok:Ljava/lang/String;

    goto/16 :goto_0

    .line 1488
    :cond_2
    const-string v2, "\u540c\u610f\u5e76\u4e14\u8d2d\u4e70"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FstTitle:Ljava/lang/String;

    .line 1489
    const-string v2, "\u8d2d\u4e70\u9053\u5177\u6210\u529f"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_SuccessTitle:Ljava/lang/String;

    .line 1490
    const-string v2, "\u8d2d\u4e70\u9053\u5177\u5931\u8d25"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FailedTitle:Ljava/lang/String;

    .line 1491
    const-string v2, "\u8d2d\u4e70\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_FailedMsg:Ljava/lang/String;

    .line 1492
    const-string v2, "\u4e50\u5e01\u4f59\u989d\u4e0d\u8db3"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_ChargeTitle:Ljava/lang/String;

    .line 1493
    const-string v2, "\u4e50\u5e01\u4f59\u989d\u4e0d\u8db3, \u8981\u7acb\u5373\u5145\u503c\u5417\uff1f"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Popup_ChargeMsg:Ljava/lang/String;

    .line 1494
    const-string v2, "\u4ea4\u6613\u8fdb\u884c\u4e2d..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_Message:Ljava/lang/String;

    .line 1495
    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u4e2d..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_BalanceCheckMessage:Ljava/lang/String;

    .line 1496
    const-string v2, "\u52a0\u8f7d\u4e2d..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_WebViewLoading:Ljava/lang/String;

    .line 1497
    const-string v2, "\u6b63\u5728\u786e\u8ba4\u4ea4\u6613\u7ed3\u679c..."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_BillingViewClose:Ljava/lang/String;

    .line 1498
    const-string v2, "\u53d1\u73b0\u5df2\u6709\u8fdb\u7a0b,\u8bf7\u7a0d\u540e\u518d\u8bd5."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_ProgressStoreStart:Ljava/lang/String;

    .line 1499
    const-string v2, "\u8bf7\u767b\u5f55Com2uS Hive."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_HiveLoginRequired:Ljava/lang/String;

    .line 1500
    const-string v2, "\u67e5\u8be2\u4f59\u989d\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_BalanceCheckFailed:Ljava/lang/String;

    .line 1501
    const-string v2, "\u4efb\u610f\u8c03\u6574\u65f6\u95f4\u6216\u65e5\u671f, \u53ef\u80fd\u65e0\u6cd5\u67e5\u770b\u4f59\u989d\u6216\u65e0\u6cd5\u8fdb\u884c\u8d2d\u4e70."

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_DateCheckFailed:Ljava/lang/String;

    .line 1502
    const-string v2, "\u8d2d\u4e70\u5df2\u53d6\u6d88"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Toast_PurchaseCanceled:Ljava/lang/String;

    .line 1503
    const-string v2, "\u5f53\u524d\u6301\u6709\u4e50\u5e01"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_CurrentLebi:Ljava/lang/String;

    .line 1504
    const-string v2, "\u5269\u4f59\u4e50\u5e01"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_RemainLebi:Ljava/lang/String;

    .line 1505
    const-string v2, "\u4e50\u5e01"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Lebi:Ljava/lang/String;

    .line 1506
    const-string v2, "\u6210\u529f"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Success:Ljava/lang/String;

    .line 1507
    const-string v2, "\u5931\u8d25"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Error:Ljava/lang/String;

    .line 1508
    const-string v2, "\u8d2d\u4e70"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Buy:Ljava/lang/String;

    .line 1509
    const-string v2, "\u53d6\u6d88"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Cancel:Ljava/lang/String;

    .line 1510
    const-string v2, "\u786e\u8ba4"

    iput-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Text_Ok:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private xmlParse(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "strXml"    # Ljava/lang/String;

    .prologue
    .line 1201
    const-string v8, "Start Xml Parse"

    invoke-static {v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 1202
    const-string v6, "-1"

    .line 1204
    .local v6, "strParsedXml":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 1205
    .local v4, "parserCreator":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1206
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1207
    .local v2, "inputStream":Ljava/io/InputStream;
    const-string v8, "UTF-8"

    invoke-interface {v3, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1209
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 1210
    .local v5, "parserEvent":I
    const-string v0, ""

    .line 1212
    .local v0, "currentTag":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    .line 1232
    const-string v8, "End Xml Parse"

    invoke-static {v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    move-object v7, v6

    .line 1239
    .end local v0    # "currentTag":Ljava/lang/String;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "parserCreator":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "parserEvent":I
    .end local v6    # "strParsedXml":Ljava/lang/String;
    .local v7, "strParsedXml":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 1214
    .end local v7    # "strParsedXml":Ljava/lang/String;
    .restart local v0    # "currentTag":Ljava/lang/String;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "parserCreator":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "parserEvent":I
    .restart local v6    # "strParsedXml":Ljava/lang/String;
    :cond_0
    packed-switch v5, :pswitch_data_0

    .line 1230
    :cond_1
    :goto_2
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 1216
    :pswitch_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1217
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "XmlParser - START_TAG : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1234
    .end local v0    # "currentTag":Ljava/lang/String;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "parserCreator":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "parserEvent":I
    :catch_0
    move-exception v1

    .line 1235
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v6

    .line 1236
    .end local v6    # "strParsedXml":Ljava/lang/String;
    .restart local v7    # "strParsedXml":Ljava/lang/String;
    goto :goto_1

    .line 1220
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "strParsedXml":Ljava/lang/String;
    .restart local v0    # "currentTag":Ljava/lang/String;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "parserCreator":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "parserEvent":I
    .restart local v6    # "strParsedXml":Ljava/lang/String;
    :pswitch_2
    :try_start_1
    const-string v8, "result"

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 1221
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1222
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "XmlParser - TEXT : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1214
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected iapBuyFinish()V
    .locals 1

    .prologue
    .line 475
    const-string v0, "iapBuyFinish"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 476
    invoke-direct {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->deleteBuyInfo()V

    .line 477
    return-void
.end method

.method protected iapBuyItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "addtionalInfo"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v0, "BuyItem"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->checkNetworkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 229
    :cond_0
    sget-boolean v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->isBilling:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->isBilling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    :cond_1
    const-string v0, "Found previous progress."

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/lebi/LebiBilling$5;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$5;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseCheckThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    const-string v0, "iapBuyItem - purchaseCheckThread is Alive, return"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/inapp/lebi/LebiBilling$6;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$6;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseCheckThread:Ljava/lang/Thread;

    .line 262
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/lebi/LebiBilling$7;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$7;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {p0, v0, v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->showPreviousProgressInfoDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 274
    :cond_3
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->sendThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->sendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    const-string v0, "iapBuyItem - sendThread is Alive, return"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_4
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/com2us/module/inapp/lebi/LebiBilling$8;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v6, Lcom/com2us/module/inapp/lebi/LebiBilling;->sendThread:Ljava/lang/Thread;

    .line 469
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->sendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected iapInitialize([Ljava/lang/String;Ljava/lang/String;ZI)I
    .locals 2
    .param p1, "pids"    # [Ljava/lang/String;
    .param p2, "_appid"    # Ljava/lang/String;
    .param p3, "_autoVerify"    # Z
    .param p4, "cbRef"    # I

    .prologue
    .line 112
    sput-object p2, Lcom/com2us/module/inapp/lebi/LebiBilling;->appid:Ljava/lang/String;

    .line 113
    iput-boolean p3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->autoVerify:Z

    .line 114
    sput p4, Lcom/com2us/module/inapp/lebi/LebiBilling;->CallBackRef:I

    .line 116
    iget-boolean v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->isUseTestServer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->sysId:Ljava/lang/String;

    .line 117
    iget-boolean v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->isUseTestServer:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->pd:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->setLanguage()V

    .line 122
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/inapp/lebi/LebiBilling$1;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$1;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->getItemListThread:Ljava/lang/Thread;

    .line 131
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->getItemListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public iapRequestBalance(Ljava/lang/String;)I
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x2

    .line 525
    const-string v4, "requestBalance"

    invoke-static {v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 527
    const/4 v0, -0x3

    .line 529
    .local v0, "balance":I
    iget-object v4, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->Progress_BalanceCheckMessage:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->ProgressDialogShow(Ljava/lang/String;)V

    .line 532
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 534
    :cond_0
    sget-object v4, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/com2us/module/inapp/lebi/LebiBilling$10;

    invoke-direct {v6, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$10;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v4, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 540
    invoke-direct {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->ProgressDialogDismiss()V

    move v4, v5

    .line 569
    :goto_0
    return v4

    .line 545
    :cond_1
    const-string v4, "06"

    const/16 v6, 0x9

    invoke-direct {p0, p1, v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->FullStringbyLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->postDataBuilder(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget-boolean v4, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->isUseTestServer:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-direct {p0, v6, v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->sendToPost(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->xmlParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, "response":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "request balance response : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 548
    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 549
    const-string v4, "-2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 550
    :cond_2
    sget-object v4, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/com2us/module/inapp/lebi/LebiBilling$11;

    invoke-direct {v6, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$11;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {v4, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 556
    invoke-direct {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->ProgressDialogDismiss()V

    move v4, v5

    .line 557
    goto :goto_0

    .line 545
    .end local v3    # "response":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 559
    .restart local v3    # "response":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->processReturnValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 560
    .local v2, "processedReturnValue":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 562
    :try_start_0
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "processedReturnValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 566
    :cond_5
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "balance : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 568
    invoke-direct {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->ProgressDialogDismiss()V

    move v4, v0

    .line 569
    goto :goto_0

    .line 563
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected iapRestoreItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v0, "RestoreItem"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->checkNetworkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/inapp/lebi/LebiBilling$4;

    invoke-direct {v1, p0, p1}, Lcom/com2us/module/inapp/lebi/LebiBilling$4;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected iapStoreEnd()V
    .locals 1

    .prologue
    .line 198
    const-string v0, "StoreEnd"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->isBilling:Z

    .line 200
    return-void
.end method

.method protected iapStoreStart()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "StoreStart"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->checkNetworkState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->isBilling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseCheckThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const-string v0, "iapStoreStart - purchaseCheckThread is Alive, return"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/inapp/lebi/LebiBilling$2;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$2;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseCheckThread:Ljava/lang/Thread;

    .line 186
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/inapp/lebi/LebiBilling$3;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$3;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-virtual {p0, v0, v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->showPreviousProgressInfoDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected iapUninitialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    const-string v0, "Uninitialize"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    sput v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->CallBackRef:I

    .line 140
    const-string v0, ""

    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->appid:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->restoreUid:Ljava/lang/String;

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->sysId:Ljava/lang/String;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->pd:Ljava/lang/String;

    .line 145
    sput-object v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->itemList:[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    .line 147
    sput-object v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->billingDialog:Landroid/app/Dialog;

    .line 148
    sput-object v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseFstDialog:Landroid/app/Dialog;

    .line 149
    sput-object v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseSndDialog:Landroid/app/Dialog;

    .line 150
    sput-object v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseTrdDialog:Landroid/app/Dialog;

    .line 151
    sput-object v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->progressDialog:Landroid/app/ProgressDialog;

    .line 152
    sput-object v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->getItemListThread:Ljava/lang/Thread;

    .line 153
    sput-object v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->purchaseCheckThread:Ljava/lang/Thread;

    .line 154
    sput-object v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->sendThread:Ljava/lang/Thread;

    .line 155
    sput-object v1, Lcom/com2us/module/inapp/lebi/LebiBilling;->balanceThread:Ljava/lang/Thread;

    .line 156
    return-void
.end method

.method protected iapUseTestServer()V
    .locals 2

    .prologue
    .line 491
    invoke-super {p0}, Lcom/com2us/module/inapp/DefaultBilling;->iapUseTestServer()V

    .line 493
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->getItemListThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-boolean v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->isUseTestServer:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->sysId:Ljava/lang/String;

    .line 496
    iget-boolean v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->isUseTestServer:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling;->pd:Ljava/lang/String;

    .line 499
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->getItemListThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->getItemListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->getItemListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 502
    const-string v0, "iapUseTestServer - getItemListThread is Alive, interrupt"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 506
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/inapp/lebi/LebiBilling$9;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/lebi/LebiBilling$9;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->getItemListThread:Ljava/lang/Thread;

    .line 515
    sget-object v0, Lcom/com2us/module/inapp/lebi/LebiBilling;->getItemListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 495
    :cond_2
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 496
    :cond_3
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method protected pause()V
    .locals 1

    .prologue
    .line 481
    const-string v0, "pause"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method protected resume()V
    .locals 1

    .prologue
    .line 486
    const-string v0, "resume"

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 487
    return-void
.end method
