.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;
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
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    return-object v0
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Inventory;)V
    .locals 20
    .param p1, "result"    # Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    .param p2, "inventory"    # Lcom/com2us/module/inapp/googleplay/Inventory;

    .prologue
    .line 526
    const-string v2, "Query inventory for Restore finished."

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->isFailure()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inventory Error : Failed to query inventory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 531
    new-instance v8, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v2, "googleplay"

    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getResponse()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v2, v3, v4}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v8, "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v3, 0x3

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    invoke-static/range {v2 .. v8}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 665
    .end local v8    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    :goto_0
    return-void

    .line 535
    :cond_0
    const-string v2, "Query inventory was successful."

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 538
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/inapp/googleplay/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v19

    .line 540
    .local v19, "purchasedItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v10, 0x5

    const-string v11, ""

    const/4 v12, 0x0

    const-string v13, ""

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$3(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/Purchase;)[Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v9 .. v15}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    goto :goto_0

    .line 547
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$4(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 549
    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$5()Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$5()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 551
    const-string v2, "processPurchasedData - sendThread is Alive, return"

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    goto/16 :goto_0

    .line 556
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;Ljava/util/List;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$8(Ljava/lang/Thread;)V

    .line 618
    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$5()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 662
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    goto/16 :goto_0

    .line 621
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 624
    const-string v2, "Restore successful."

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 626
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v16, "consumItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 647
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 648
    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$2;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 659
    .end local v16    # "consumItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    .end local v19    # "purchasedItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    :catch_0
    move-exception v17

    .line 660
    .local v17, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    goto/16 :goto_0

    .line 628
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v16    # "consumItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    .restart local v19    # "purchasedItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    :cond_6
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/com2us/module/inapp/googleplay/Purchase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 631
    .local v18, "purchasedItem":Lcom/com2us/module/inapp/googleplay/Purchase;
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Lcom/com2us/module/inapp/googleplay/Purchase;->getManaged()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 632
    const-string v3, "Restore item is managed."

    invoke-static {v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v10, 0x5

    invoke-virtual/range {v18 .. v18}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v18 .. v18}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$3(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/Purchase;)[Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v9 .. v15}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 640
    :catch_1
    move-exception v17

    .line 641
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 661
    .end local v16    # "consumItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v18    # "purchasedItem":Lcom/com2us/module/inapp/googleplay/Purchase;
    .end local v19    # "purchasedItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    :catchall_0
    move-exception v2

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 664
    throw v2

    .line 636
    .restart local v16    # "consumItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    .restart local v18    # "purchasedItem":Lcom/com2us/module/inapp/googleplay/Purchase;
    .restart local v19    # "purchasedItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    :cond_7
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Restore item is unmanaged. Starting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " consumption."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method
