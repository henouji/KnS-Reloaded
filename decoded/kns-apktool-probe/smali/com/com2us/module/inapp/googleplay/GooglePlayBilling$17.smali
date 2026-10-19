.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->processPurchasedData()V
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
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 50

    .prologue
    .line 863
    new-instance v43, Lcom/com2us/module/inapp/googleplay/BillingDatabase;

    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v43

    invoke-direct {v0, v1}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;-><init>(Landroid/content/Context;)V

    .line 867
    .local v43, "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$18(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 869
    invoke-virtual/range {v43 .. v43}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->getPurchaseData()[[Ljava/lang/String;

    move-result-object v47

    .line 871
    .local v47, "purchasedData":[[Ljava/lang/String;
    if-nez v47, :cond_0

    .line 872
    const-string v1, "purchasedData is nothing"

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    invoke-virtual/range {v43 .. v43}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 999
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 1002
    :goto_0
    return-void

    .line 876
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processPurchasedData(buy) - autoVerify : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$4(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 878
    const/16 v49, 0x0

    .local v49, "y":I
    :goto_1
    move-object/from16 v0, v47

    array-length v1, v0

    move/from16 v0, v49

    if-lt v0, v1, :cond_1

    .line 886
    const/16 v45, 0x0

    .local v45, "i":I
    :goto_2
    move-object/from16 v0, v47

    array-length v1, v0

    move/from16 v0, v45

    if-lt v0, v1, :cond_2

    .line 993
    invoke-virtual/range {v43 .. v43}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 995
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$21(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    invoke-virtual/range {v43 .. v43}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 999
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    goto :goto_0

    .line 879
    .end local v45    # "i":I
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchasedData["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v49

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v47, v49

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchasedData["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v49

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][1] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v47, v49

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchasedData["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v49

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][2] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v47, v49

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchasedData["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v49

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][3] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v47, v49

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 878
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_1

    .line 889
    .restart local v45    # "i":I
    :cond_2
    :try_start_3
    new-instance v46, Lcom/com2us/module/inapp/googleplay/Purchase;

    const-string v1, "inapp"

    aget-object v2, v47, v45

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aget-object v3, v47, v45

    const/4 v4, 0x2

    aget-object v3, v3, v4

    move-object/from16 v0, v46

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/module/inapp/googleplay/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    .local v46, "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchaseState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getPurchaseState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getPurchaseState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 977
    const-string v1, "Buy Failed : PurchaseState Nothing."

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v43

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->deletePurchase(Ljava/lang/String;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    sget-object v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->RC_LOG:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v4

    .line 980
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v6

    .line 979
    invoke-static/range {v1 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$20(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v43

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->updateLogData(Ljava/lang/String;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 982
    new-instance v42, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v1, "c2s"

    const-string v2, "6"

    const-string v3, "PurchaseState Nothing"

    move-object/from16 v0, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    .local v42, "errorStateValue6":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getManaged()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v39, 0x0

    :goto_3
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v36 .. v42}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 886
    .end local v42    # "errorStateValue6":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    .end local v46    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    :goto_4
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_2

    .line 897
    .restart local v46    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$4(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 899
    const/16 v48, -0x1

    .line 901
    .local v48, "resultVerify":I
    aget-object v1, v47, v45

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    const-string v1, "2"

    aget-object v2, v47, v45

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 902
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v46

    invoke-static {v1, v0, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$19(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/Purchase;Ljava/lang/String;)I

    move-result v48

    .line 913
    :goto_5
    packed-switch v48, :pswitch_data_1

    .line 938
    const-string v1, "Buy Failed : Error - default"

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->updatePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 941
    new-instance v21, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v1, "c2s"

    const-string v2, "3"

    const-string v3, "System is being checked."

    move-object/from16 v0, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    .local v21, "errorStateValue3":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/16 v16, 0x3

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getManaged()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v18, 0x0

    :goto_6
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v19

    .line 943
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v20

    .line 942
    invoke-static/range {v15 .. v21}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 988
    .end local v21    # "errorStateValue3":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    .end local v46    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    .end local v48    # "resultVerify":I
    :catch_0
    move-exception v44

    .line 989
    .local v44, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 997
    .end local v44    # "e":Ljava/lang/Exception;
    .end local v45    # "i":I
    .end local v47    # "purchasedData":[[Ljava/lang/String;
    .end local v49    # "y":I
    :catchall_0
    move-exception v1

    .line 998
    invoke-virtual/range {v43 .. v43}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 1000
    throw v1

    .line 906
    .restart local v45    # "i":I
    .restart local v46    # "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    .restart local v47    # "purchasedData":[[Ljava/lang/String;
    .restart local v48    # "resultVerify":I
    .restart local v49    # "y":I
    :cond_4
    :try_start_5
    aget-object v1, v47, v45

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v48

    goto :goto_5

    .line 907
    :catch_1
    move-exception v44

    .line 908
    .restart local v44    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Exception;->printStackTrace()V

    .line 909
    const/16 v48, -0x1

    goto :goto_5

    .line 915
    .end local v44    # "e":Ljava/lang/Exception;
    :pswitch_1
    aget-object v1, v47, v45

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    .line 916
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    move-object/from16 v0, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->updatePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 920
    :pswitch_2
    const-string v1, "Buy Failed : Verification failed"

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v43

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->deletePurchase(Ljava/lang/String;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 923
    new-instance v7, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v1, "c2s"

    const-string v2, "1"

    const-string v3, "Verification failed."

    invoke-direct {v7, v1, v2, v3}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .local v7, "errorStateValue1":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v2, 0x3

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getManaged()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_7
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 925
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v6

    .line 924
    invoke-static/range {v1 .. v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_5
    const/4 v4, 0x1

    goto :goto_7

    .line 929
    .end local v7    # "errorStateValue1":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    :pswitch_3
    const-string v1, "Buy Failed : System is being checked"

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    move-object/from16 v0, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->updatePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 932
    new-instance v14, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v1, "c2s"

    const-string v2, "2"

    const-string v3, "System is being checked. Please try again later."

    invoke-direct {v14, v1, v2, v3}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    .local v14, "errorStateValue2":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v9, 0x3

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getManaged()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v11, 0x0

    :goto_8
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v12

    .line 934
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v13

    .line 933
    invoke-static/range {v8 .. v14}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_6
    const/4 v11, 0x1

    goto :goto_8

    .line 942
    .end local v14    # "errorStateValue2":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    .restart local v21    # "errorStateValue3":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    :cond_7
    const/16 v18, 0x1

    goto/16 :goto_6

    .line 948
    .end local v21    # "errorStateValue3":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    .end local v48    # "resultVerify":I
    :cond_8
    aget-object v1, v47, v45

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    .line 949
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    move-object/from16 v0, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->updatePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 955
    :pswitch_4
    const-string v1, "Buy Failed : Error - Market canceled."

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v43

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->deletePurchase(Ljava/lang/String;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    sget-object v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->RC_LOG:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v4

    .line 958
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v6

    .line 957
    invoke-static/range {v1 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$20(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v43

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->updateLogData(Ljava/lang/String;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 960
    new-instance v28, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v1, "c2s"

    const-string v2, "4"

    const-string v3, "Market canceled"

    move-object/from16 v0, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .local v28, "errorStateValue4":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getManaged()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v25, 0x0

    :goto_9
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v22 .. v28}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_9
    const/16 v25, 0x1

    goto :goto_9

    .line 966
    .end local v28    # "errorStateValue4":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    :pswitch_5
    const-string v1, "Buy Failed : Error - Item refunded."

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v43

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->deletePurchase(Ljava/lang/String;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    sget-object v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->RC_LOG:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v4

    .line 969
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v6

    .line 968
    invoke-static/range {v1 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$20(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v43

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->updateLogData(Ljava/lang/String;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 971
    new-instance v35, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v1, "c2s"

    const-string v2, "5"

    const-string v3, "Item Refunded"

    move-object/from16 v0, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .local v35, "errorStateValue5":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$17;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getManaged()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v32, 0x0

    :goto_a
    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v46 .. v46}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v29 .. v35}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    :cond_a
    const/16 v32, 0x1

    goto :goto_a

    .line 983
    .end local v35    # "errorStateValue5":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    .restart local v42    # "errorStateValue6":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    :cond_b
    const/16 v39, 0x1

    goto/16 :goto_3

    .line 893
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 913
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
