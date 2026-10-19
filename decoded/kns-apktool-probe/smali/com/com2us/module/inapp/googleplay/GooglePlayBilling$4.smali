.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;


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
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    return-object v0
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V
    .locals 18
    .param p1, "result"    # Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    .param p2, "purchase"    # Lcom/com2us/module/inapp/googleplay/Purchase;

    .prologue
    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase finished: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 701
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, "sku":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/inapp/googleplay/Purchase;->getManaged()Z

    move-result v17

    .line 703
    .local v17, "isManaged":Z
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 704
    .local v5, "uid":Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v6

    .line 706
    .local v6, "addtionalInfo":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error purchasing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getResponse()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    if-nez v17, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase is unmanaged. Starting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " consumption."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 713
    :try_start_0
    const-string v1, "Found previous progress."

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4$1;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;)V

    invoke-static {v1, v2, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$9(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_4
    return-void

    .line 701
    .end local v3    # "sku":Ljava/lang/String;
    .end local v5    # "uid":Ljava/lang/String;
    .end local v6    # "addtionalInfo":Ljava/lang/String;
    .end local v17    # "isManaged":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v1, v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v2, "pid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 702
    .restart local v3    # "sku":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v1, v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v2, "isManaged"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    goto :goto_1

    .line 703
    .restart local v17    # "isManaged":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v1, v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 704
    .restart local v5    # "uid":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v1, v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->buyItemInfo:Lorg/json/JSONObject;

    const-string v2, "addtionalInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 721
    .restart local v6    # "addtionalInfo":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 722
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 724
    new-instance v7, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v1, "googleplay"

    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getResponse()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v1, v2, v4}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    .local v7, "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v2, 0x3

    const/4 v4, 0x1

    invoke-static/range {v1 .. v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 729
    .end local v7    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 730
    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getResponse()I

    move-result v1

    const/16 v2, -0x3ed

    if-ne v1, v2, :cond_6

    .line 731
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v9, 0x4

    if-eqz v17, :cond_5

    const/4 v11, 0x0

    :goto_5
    const-string v14, "User canceled"

    move-object v10, v3

    move-object v12, v5

    move-object v13, v6

    invoke-static/range {v8 .. v14}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    const/4 v11, 0x1

    goto :goto_5

    .line 733
    :cond_6
    new-instance v7, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v1, "googleplay"

    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getResponse()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v1, v2, v4}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .restart local v7    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v2, 0x3

    if-eqz v17, :cond_7

    const/4 v4, 0x0

    :goto_6
    invoke-static/range {v1 .. v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_7
    const/4 v4, 0x1

    goto :goto_6

    .line 740
    .end local v7    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    :cond_8
    const-string v1, "Purchase successful."

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 743
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/inapp/googleplay/Purchase;->getManaged()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 744
    const-string v1, "Purchase is managed."

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 745
    new-instance v15, Lcom/com2us/module/inapp/googleplay/BillingDatabase;

    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;-><init>(Landroid/content/Context;)V

    .line 746
    .local v15, "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v2, v4}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->updatePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {v15}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 748
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$10(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 754
    .end local v15    # "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    :catch_1
    move-exception v16

    .line 755
    .restart local v16    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 756
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 757
    new-instance v7, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v1, "googleplay"

    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getResponse()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v1, v2, v4}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .restart local v7    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v2, 0x3

    if-eqz v17, :cond_a

    const/4 v4, 0x0

    :goto_7
    invoke-static/range {v1 .. v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 750
    .end local v7    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase is unmanaged. Starting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " consumption."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v1, v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v2, v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mConsumeFinishedListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->consumeAsync(Lcom/com2us/module/inapp/googleplay/Purchase;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 758
    .restart local v7    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    .restart local v16    # "e":Ljava/lang/Exception;
    :cond_a
    const/4 v4, 0x1

    goto :goto_7
.end method
