.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    return-object v0
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Inventory;)V
    .locals 7
    .param p1, "result"    # Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    .param p2, "inventory"    # Lcom/com2us/module/inapp/googleplay/Inventory;

    .prologue
    .line 671
    const-string v0, "Query inventory for Consume finished."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, "sku":Ljava/lang/String;
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, "uid":Ljava/lang/String;
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v1, "addtionalInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 678
    .local v5, "addtionalInfo":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 680
    new-instance v6, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v0, "googleplay"

    const-string v1, "7"

    const-string v3, "Unable to buy item (response: 7:Item Already Owned)"

    invoke-direct {v6, v0, v1, v3}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .local v6, "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v1, 0x3

    const/4 v3, 0x1

    invoke-static/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    .end local v6    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    :goto_0
    return-void

    .line 683
    :cond_0
    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3$1;

    invoke-direct {v1, p0, p2, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3$1;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;Lcom/com2us/module/inapp/googleplay/Inventory;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
