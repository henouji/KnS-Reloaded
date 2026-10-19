.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$6;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;


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
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$6;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/com2us/module/inapp/googleplay/Purchase;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/com2us/module/inapp/googleplay/GooglePlayResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 807
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/GooglePlayResult;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Multi Consumption finished. Purchases: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", results: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 809
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$6;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$10(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 845
    const-string v0, "End consumption flow."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 846
    :goto_1
    return-void

    .line 811
    :cond_0
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/com2us/module/inapp/googleplay/Purchase;

    .line 812
    .local v9, "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    .line 814
    .local v10, "result":Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, "sku":Ljava/lang/String;
    :goto_2
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, "uid":Ljava/lang/String;
    :goto_3
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v5

    .line 824
    .local v5, "addtionalInfo":Ljava/lang/String;
    :goto_4
    invoke-virtual {v10}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 829
    const-string v0, "Consumption successful. Provisioning."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 830
    new-instance v7, Lcom/com2us/module/inapp/googleplay/BillingDatabase;

    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;-><init>(Landroid/content/Context;)V

    .line 831
    .local v7, "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v1, v3}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->updatePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-virtual {v7}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 809
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 814
    .end local v2    # "sku":Ljava/lang/String;
    .end local v4    # "uid":Ljava/lang/String;
    .end local v5    # "addtionalInfo":Ljava/lang/String;
    .end local v7    # "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$6;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 816
    .restart local v2    # "sku":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$6;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 817
    .restart local v4    # "uid":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$6;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v1, "addtionalInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 835
    .restart local v5    # "addtionalInfo":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while consuming: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$6;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 837
    new-instance v6, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v0, "googleplay"

    invoke-virtual {v10}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getResponse()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v0, v1, v3}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    .local v6, "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$6;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v1, 0x3

    const/4 v3, 0x1

    invoke-static/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
