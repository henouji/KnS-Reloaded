.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$5;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;


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
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$5;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/com2us/module/inapp/googleplay/Purchase;Lcom/com2us/module/inapp/googleplay/GooglePlayResult;)V
    .locals 8
    .param p1, "purchase"    # Lcom/com2us/module/inapp/googleplay/Purchase;
    .param p2, "result"    # Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    .prologue
    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Consumption finished. Purchase: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 770
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, "sku":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v4

    .line 773
    .local v4, "uid":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v5

    .line 780
    .local v5, "addtionalInfo":Ljava/lang/String;
    :goto_2
    invoke-virtual {p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 785
    const-string v0, "Consumption successful. Provisioning."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 786
    new-instance v7, Lcom/com2us/module/inapp/googleplay/BillingDatabase;

    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;-><init>(Landroid/content/Context;)V

    .line 787
    .local v7, "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v1, v3}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->updatePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual {v7}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 789
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$5;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$10(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 798
    const-string v0, "End consumption flow."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 799
    .end local v7    # "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    :goto_3
    return-void

    .line 770
    .end local v2    # "sku":Ljava/lang/String;
    .end local v4    # "uid":Ljava/lang/String;
    .end local v5    # "addtionalInfo":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$5;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 772
    .restart local v2    # "sku":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$5;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 773
    .restart local v4    # "uid":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$5;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v1, "addtionalInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 792
    .restart local v5    # "addtionalInfo":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while consuming: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$5;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 794
    new-instance v6, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v0, "googleplay"

    invoke-virtual {p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getResponse()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v0, v1, v3}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    .local v6, "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$5;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v1, 0x3

    const/4 v3, 0x1

    invoke-static/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method
