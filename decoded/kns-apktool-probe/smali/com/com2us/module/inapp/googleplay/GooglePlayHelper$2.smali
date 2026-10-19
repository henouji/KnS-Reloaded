.class Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;
.super Ljava/lang/Object;
.source "GooglePlayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

.field private final synthetic val$moreSkus:Ljava/util/List;

.field private final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;ZLjava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iput-boolean p2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->val$listener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->val$handler:Landroid/os/Handler;

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 629
    new-instance v3, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    .line 630
    .local v3, "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    const/4 v1, 0x0

    .line 632
    .local v1, "inv":Lcom/com2us/module/inapp/googleplay/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iget-boolean v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->queryInventory(ZLjava/util/List;)Lcom/com2us/module/inapp/googleplay/Inventory;
    :try_end_0
    .catch Lcom/com2us/module/inapp/googleplay/GooglePlayException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 638
    :goto_0
    iget-object v5, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    invoke-virtual {v5}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->flagEndAsync()V

    .line 640
    move-object v4, v3

    .line 641
    .local v4, "result_f":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    move-object v2, v1

    .line 642
    .local v2, "inv_f":Lcom/com2us/module/inapp/googleplay/Inventory;
    iget-object v5, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iget-boolean v5, v5, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->val$listener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 643
    iget-object v5, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2$1;

    iget-object v7, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->val$listener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    invoke-direct {v6, p0, v7, v4, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2$1;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 649
    :cond_0
    return-void

    .line 634
    .end local v2    # "inv_f":Lcom/com2us/module/inapp/googleplay/Inventory;
    .end local v4    # "result_f":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    :catch_0
    move-exception v0

    .line 635
    .local v0, "ex":Lcom/com2us/module/inapp/googleplay/GooglePlayException;
    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;->getResult()Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    move-result-object v3

    goto :goto_0
.end method
