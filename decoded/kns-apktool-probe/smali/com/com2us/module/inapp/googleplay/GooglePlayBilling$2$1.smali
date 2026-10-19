.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->onQueryInventoryFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Inventory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

.field private final synthetic val$purchasedItemList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    iput-object p2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->val$purchasedItemList:Ljava/util/List;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->val$purchasedItemList:Ljava/util/List;

    iget-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v2

    iget-object v2, v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->restoreUid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$6(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Ljava/util/List;Ljava/lang/String;)I

    move-result v10

    .line 563
    .local v10, "resultVerify":I
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 565
    packed-switch v10, :pswitch_data_0

    .line 605
    new-instance v6, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v0, "c2s"

    const-string v1, "1"

    const-string v2, "Verification failed."

    invoke-direct {v6, v0, v1, v2}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .local v6, "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    invoke-static/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .end local v6    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 614
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 616
    .end local v10    # "resultVerify":I
    :goto_1
    return-void

    .line 567
    .restart local v10    # "resultVerify":I
    :pswitch_0
    :try_start_1
    const-string v0, "Restore successful."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 569
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v7, "consumItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->val$purchasedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 591
    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1$1;

    invoke-direct {v1, p0, v7}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1$1;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 610
    .end local v7    # "consumItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    .end local v10    # "resultVerify":I
    :catch_0
    move-exception v8

    .line 611
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 614
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    goto :goto_1

    .line 571
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "consumItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    .restart local v10    # "resultVerify":I
    :cond_1
    :try_start_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/com2us/module/inapp/googleplay/Purchase;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 574
    .local v9, "purchasedItem":Lcom/com2us/module/inapp/googleplay/Purchase;
    :try_start_4
    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getManaged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    const-string v0, "Restore item is managed."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getAddtionalInfo()Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-static {v12}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$3(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/Purchase;)[Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 583
    :catch_1
    move-exception v8

    .line 584
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 612
    .end local v7    # "consumItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "purchasedItem":Lcom/com2us/module/inapp/googleplay/Purchase;
    .end local v10    # "resultVerify":I
    :catchall_0
    move-exception v0

    .line 613
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$2(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 614
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 615
    throw v0

    .line 579
    .restart local v7    # "consumItemList":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/Purchase;>;"
    .restart local v9    # "purchasedItem":Lcom/com2us/module/inapp/googleplay/Purchase;
    .restart local v10    # "resultVerify":I
    :cond_2
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Restore item is unmanaged. Starting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " consumption."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 580
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
