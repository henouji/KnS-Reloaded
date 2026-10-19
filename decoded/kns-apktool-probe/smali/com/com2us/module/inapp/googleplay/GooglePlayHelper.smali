.class public Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;
.super Ljava/lang/Object;
.source "GooglePlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;,
        Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;,
        Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;,
        Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabSetupFinishedListener;,
        Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mDebugLog:Z

    .line 75
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mDebugTag:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mSetupDone:Z

    .line 81
    iput-boolean v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mDisposed:Z

    .line 84
    iput-boolean v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mSubscriptionsSupported:Z

    .line 88
    iput-boolean v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mAsyncInProgress:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mAsyncOperation:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mContext:Landroid/content/Context;

    .line 166
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 766
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 769
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 779
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 782
    rsub-int v2, p0, -0x3e8

    .line 783
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 789
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 784
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 786
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 787
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 789
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 797
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_0
    return-void
.end method

.method consume(Lcom/com2us/module/inapp/googleplay/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/com2us/module/inapp/googleplay/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/com2us/module/inapp/googleplay/GooglePlayException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkNotDisposed()V

    .line 673
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 675
    iget-object v4, p1, Lcom/com2us/module/inapp/googleplay/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 676
    new-instance v4, Lcom/com2us/module/inapp/googleplay/GooglePlayException;

    const/16 v5, -0x3f2

    .line 677
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Items of type \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/com2us/module/inapp/googleplay/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 676
    invoke-direct {v4, v5, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 681
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 684
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t consume "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 685
    new-instance v4, Lcom/com2us/module/inapp/googleplay/GooglePlayException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 685
    invoke-direct {v4, v5, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/com2us/module/inapp/googleplay/GooglePlayException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 689
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Consuming sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 690
    iget-object v4, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 691
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Successfully consumed sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 702
    return-void

    .line 695
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error consuming consuming sku "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 696
    new-instance v4, Lcom/com2us/module/inapp/googleplay/GooglePlayException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error consuming sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/com2us/module/inapp/googleplay/Purchase;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/com2us/module/inapp/googleplay/Purchase;
    .param p2, "listener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkNotDisposed()V

    .line 741
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;)V

    .line 745
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/com2us/module/inapp/googleplay/Purchase;",
            ">;",
            "Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 753
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkNotDisposed()V

    .line 754
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 755
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;)V

    .line 756
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/com2us/module/inapp/googleplay/Purchase;",
            ">;",
            "Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;",
            "Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 968
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 969
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 970
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;Ljava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 999
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1000
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 296
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mSetupDone:Z

    .line 298
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 302
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mDisposed:Z

    .line 303
    iput-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mContext:Landroid/content/Context;

    .line 304
    iput-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 305
    iput-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 306
    iput-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    .line 307
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkNotDisposed()V

    .line 180
    iput-boolean p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mDebugLog:Z

    .line 181
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkNotDisposed()V

    .line 174
    iput-boolean p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mDebugLog:Z

    .line 175
    iput-object p2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mDebugTag:Ljava/lang/String;

    .line 176
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 843
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mAsyncOperation:Ljava/lang/String;

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mAsyncInProgress:Z

    .line 845
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_0
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mAsyncOperation:Ljava/lang/String;

    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mAsyncInProgress:Z

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 803
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 804
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 805
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 806
    const/4 v1, 0x0

    .line 809
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 808
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 809
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 811
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 813
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 819
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 820
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 821
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 822
    const/4 v1, 0x0

    .line 825
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 824
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 825
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 827
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 829
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 447
    iget v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mRequestCode:I

    if-eq p1, v6, :cond_0

    .line 448
    const-string v6, "requestCode invalid in IAB activity result."

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 449
    const/4 v6, 0x0

    .line 530
    :goto_0
    return v6

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkNotDisposed()V

    .line 453
    const-string v6, "handleActivityResult"

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->flagEndAsync()V

    .line 458
    if-nez p3, :cond_2

    .line 459
    const-string v6, "Null data in IAB activity result."

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 460
    new-instance v5, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/16 v6, -0x3ea

    const-string v7, "Null data in IAB result"

    invoke-direct {v5, v6, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    .line 461
    .local v5, "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V

    .line 462
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 465
    .end local v5    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v4

    .line 466
    .local v4, "responseCode":I
    const-string v6, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "purchaseData":Ljava/lang/String;
    const-string v6, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "dataSignature":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Purchase data: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 470
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Data signature: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 471
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Extras: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 472
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Expected item type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 474
    const/4 v6, -0x1

    if-ne p2, v6, :cond_8

    if-nez v4, :cond_8

    .line 475
    const-string v6, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 477
    if-eqz v3, :cond_3

    if-nez v0, :cond_5

    .line 478
    :cond_3
    const-string v6, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 479
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Extras: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 480
    new-instance v5, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/16 v6, -0x3f0

    const-string v7, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v5, v6, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    .line 481
    .restart local v5    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V

    .line 482
    :cond_4
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 485
    .end local v5    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    :cond_5
    const/4 v2, 0x0

    .line 487
    .local v2, "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    :try_start_0
    new-instance v2, Lcom/com2us/module/inapp/googleplay/Purchase;

    .end local v2    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v2, v6, v3, v0}, Lcom/com2us/module/inapp/googleplay/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .restart local v2    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    .line 508
    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    new-instance v7, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/4 v8, 0x0

    const-string v9, "Success"

    invoke-direct {v7, v8, v9}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v6, v7, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V

    .line 530
    .end local v2    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    :cond_6
    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "Failed to parse purchase data."

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 502
    new-instance v5, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/16 v6, -0x3ea

    const-string v7, "Failed to parse purchase data."

    invoke-direct {v5, v6, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    .line 503
    .restart local v5    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V

    .line 504
    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 511
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    :cond_8
    const/4 v6, -0x1

    if-ne p2, v6, :cond_9

    .line 513
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 514
    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    .line 515
    new-instance v5, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const-string v6, "Problem purchashing item."

    invoke-direct {v5, v4, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    .line 516
    .restart local v5    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V

    goto :goto_1

    .line 519
    .end local v5    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    :cond_9
    if-nez p2, :cond_a

    .line 520
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Purchase canceled - Response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 521
    new-instance v5, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/16 v6, -0x3ed

    const-string v7, "User canceled."

    invoke-direct {v5, v6, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    .line 522
    .restart local v5    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V

    goto :goto_1

    .line 525
    .end local v5    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Purchase failed. Result code: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 526
    const-string v7, ". Response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 525
    invoke-virtual {p0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 527
    new-instance v5, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/16 v6, -0x3ee

    const-string v7, "Unknown purchase response."

    invoke-direct {v5, v6, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    .line 528
    .restart local v5    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V

    goto/16 :goto_1
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 341
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 346
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkNotDisposed()V

    .line 380
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 381
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 384
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_1

    .line 385
    new-instance v11, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/16 v1, -0x3f1

    .line 386
    const-string v2, "Subscriptions are not available."

    .line 385
    invoke-direct {v11, v1, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    .line 387
    .local v11, "r":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    invoke-virtual {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->flagEndAsync()V

    .line 388
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V

    .line 430
    .end local v11    # "r":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Constructing buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 395
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 396
    .local v12, "response":I
    if-eqz v12, :cond_2

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->flagEndAsync()V

    .line 399
    new-instance v13, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    .line 400
    .local v13, "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 414
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    :catch_0
    move-exception v9

    .line 415
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 417
    invoke-virtual {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->flagEndAsync()V

    .line 419
    new-instance v13, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    .line 420
    .restart local v13    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V

    goto/16 :goto_0

    .line 404
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 405
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 406
    move/from16 v0, p4

    iput v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mRequestCode:I

    .line 407
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchaseListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    .line 408
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 409
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 410
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 411
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 412
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 409
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 422
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_1
    move-exception v9

    .line 423
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 425
    invoke-virtual {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->flagEndAsync()V

    .line 427
    new-instance v13, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    .line 428
    .restart local v13    # "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 351
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 356
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GooglePlayHelper - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 1004
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GooglePlayHelper - In-app billing error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 1008
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GooglePlayHelper - In-app billing warning: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 1012
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/com2us/module/inapp/googleplay/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/com2us/module/inapp/googleplay/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/com2us/module/inapp/googleplay/GooglePlayException;
        }
    .end annotation

    .prologue
    .line 534
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/com2us/module/inapp/googleplay/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/com2us/module/inapp/googleplay/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/com2us/module/inapp/googleplay/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/com2us/module/inapp/googleplay/GooglePlayException;
        }
    .end annotation

    .prologue
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, -0x3ea

    .line 552
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkNotDisposed()V

    .line 553
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 555
    :try_start_0
    new-instance v1, Lcom/com2us/module/inapp/googleplay/Inventory;

    invoke-direct {v1}, Lcom/com2us/module/inapp/googleplay/Inventory;-><init>()V

    .line 556
    .local v1, "inv":Lcom/com2us/module/inapp/googleplay/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->queryPurchases(Lcom/com2us/module/inapp/googleplay/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 557
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 558
    new-instance v3, Lcom/com2us/module/inapp/googleplay/GooglePlayException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 585
    .end local v1    # "inv":Lcom/com2us/module/inapp/googleplay/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/com2us/module/inapp/googleplay/GooglePlayException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 561
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/com2us/module/inapp/googleplay/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 562
    :try_start_1
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->querySkuDetails(Ljava/lang/String;Lcom/com2us/module/inapp/googleplay/Inventory;Ljava/util/List;)I

    move-result v2

    .line 563
    if-eqz v2, :cond_1

    .line 564
    new-instance v3, Lcom/com2us/module/inapp/googleplay/GooglePlayException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 588
    .end local v1    # "inv":Lcom/com2us/module/inapp/googleplay/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 589
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/com2us/module/inapp/googleplay/GooglePlayException;

    const-string v4, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v5, v4, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 569
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/com2us/module/inapp/googleplay/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_3

    .line 570
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->queryPurchases(Lcom/com2us/module/inapp/googleplay/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 571
    if-eqz v2, :cond_2

    .line 572
    new-instance v3, Lcom/com2us/module/inapp/googleplay/GooglePlayException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 591
    .end local v1    # "inv":Lcom/com2us/module/inapp/googleplay/Inventory;
    .end local v2    # "r":I
    :catch_2
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/com2us/module/inapp/googleplay/GooglePlayException;

    const-string v4, "Error unknown response exception while refreshing inventory."

    invoke-direct {v3, v5, v4, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "inv":Lcom/com2us/module/inapp/googleplay/Inventory;
    .restart local v2    # "r":I
    :cond_2
    if-eqz p1, :cond_3

    .line 576
    :try_start_3
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->querySkuDetails(Ljava/lang/String;Lcom/com2us/module/inapp/googleplay/Inventory;Ljava/util/List;)I

    move-result v2

    .line 577
    if-eqz v2, :cond_3

    .line 578
    new-instance v3, Lcom/com2us/module/inapp/googleplay/GooglePlayException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 583
    :cond_3
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    .prologue
    .line 654
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;)V

    .line 655
    return-void
.end method

.method public queryInventoryAsync(ZLcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    .prologue
    .line 658
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;)V

    .line 659
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 623
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 624
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkNotDisposed()V

    .line 625
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 626
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 627
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;ZLjava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 650
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 651
    return-void
.end method

.method queryPurchases(Lcom/com2us/module/inapp/googleplay/Inventory;Ljava/lang/String;)I
    .locals 16
    .param p1, "inv"    # Lcom/com2us/module/inapp/googleplay/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 850
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Querying owned items, item type: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 851
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Package name: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 852
    const/4 v12, 0x0

    .line 853
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 856
    .local v1, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 860
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 861
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Owned items response: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 862
    if-eqz v8, :cond_1

    .line 863
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getPurchases() failed: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 908
    .end local v8    # "response":I
    :goto_0
    return v8

    .line 866
    .restart local v8    # "response":I
    :cond_1
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 867
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 868
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 869
    :cond_2
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 870
    const/16 v8, -0x3ea

    goto :goto_0

    .line 874
    :cond_3
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    .line 873
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 876
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 875
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 878
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 877
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 880
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v2, v13, :cond_4

    .line 904
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 905
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 906
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 908
    if-eqz v12, :cond_6

    const/16 v13, -0x3eb

    :goto_2
    move v8, v13

    goto :goto_0

    .line 881
    :cond_4
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 882
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 883
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 885
    .local v11, "sku":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Sku is owned: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 886
    new-instance v5, Lcom/com2us/module/inapp/googleplay/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/com2us/module/inapp/googleplay/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .local v5, "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    invoke-virtual {v5}, Lcom/com2us/module/inapp/googleplay/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 889
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logWarn(Ljava/lang/String;)V

    .line 890
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 894
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/com2us/module/inapp/googleplay/Inventory;->addPurchase(Lcom/com2us/module/inapp/googleplay/Purchase;)V

    .line 880
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 908
    .end local v5    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    goto :goto_2
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/com2us/module/inapp/googleplay/Inventory;Ljava/util/List;)I
    .locals 12
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/com2us/module/inapp/googleplay/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/com2us/module/inapp/googleplay/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 913
    const-string v9, "Querying SKU details."

    invoke-virtual {p0, v9}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 914
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v6, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lcom/com2us/module/inapp/googleplay/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 916
    if-eqz p3, :cond_1

    .line 917
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 924
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_6

    .line 925
    const-string v9, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v9}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 961
    :goto_1
    return v2

    .line 917
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 918
    .local v4, "sku":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 919
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 930
    .end local v4    # "sku":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    .line 931
    const/16 v9, 0x13

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v6, v2, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    .line 930
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 932
    .local v7, "skuSubList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 934
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 935
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string v9, "ITEM_ID_LIST"

    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 936
    iget-object v9, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11, p1, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 938
    .local v5, "skuDetails":Landroid/os/Bundle;
    const-string v9, "DETAILS_LIST"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 939
    invoke-virtual {p0, v5}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 940
    .local v2, "response":I
    if-eqz v2, :cond_4

    .line 941
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getSkuDetails() failed: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 945
    :cond_4
    const-string v9, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v9}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logError(Ljava/lang/String;)V

    .line 946
    const/16 v2, -0x3ea

    goto :goto_1

    .line 951
    .end local v2    # "response":I
    :cond_5
    const-string v9, "DETAILS_LIST"

    .line 950
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 953
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 929
    .end local v1    # "querySkus":Landroid/os/Bundle;
    .end local v3    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "skuDetails":Landroid/os/Bundle;
    .end local v7    # "skuSubList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_3

    goto/16 :goto_1

    .line 953
    .restart local v1    # "querySkus":Landroid/os/Bundle;
    .restart local v3    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "skuDetails":Landroid/os/Bundle;
    .restart local v7    # "skuSubList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 954
    .local v8, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/com2us/module/inapp/googleplay/SkuDetails;

    invoke-direct {v0, p1, v8}, Lcom/com2us/module/inapp/googleplay/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .local v0, "d":Lcom/com2us/module/inapp/googleplay/SkuDetails;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Got sku details: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p2, v0}, Lcom/com2us/module/inapp/googleplay/Inventory;->addSkuDetails(Lcom/com2us/module/inapp/googleplay/SkuDetails;)V

    goto :goto_2
.end method

.method public startSetup(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabSetupFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkNotDisposed()V

    .line 206
    iget-boolean v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    const-string v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->logDebug(Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$1;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    if-eqz p1, :cond_1

    .line 283
    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/4 v2, 0x3

    .line 284
    const-string v3, "Billing service unavailable on device."

    .line 283
    invoke-direct {v1, v2, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    .line 282
    invoke-interface {p1, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->checkNotDisposed()V

    .line 316
    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mSubscriptionsSupported:Z

    return v0
.end method
