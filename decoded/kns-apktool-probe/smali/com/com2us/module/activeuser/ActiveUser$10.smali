.class Lcom/com2us/module/activeuser/ActiveUser$10;
.super Ljava/lang/Thread;
.source "ActiveUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUser;->requestNetwork(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/ActiveUser;

.field private final synthetic val$requestCmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/ActiveUser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    iput-object p2, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->val$requestCmd:Ljava/lang/String;

    .line 521
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 523
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->val$requestCmd:Ljava/lang/String;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->processNetworkTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 526
    .local v5, "obj":Ljava/lang/Object;
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->val$requestCmd:Ljava/lang/String;

    const-string v7, "download"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 528
    if-eqz v5, :cond_3

    .line 530
    const/4 v1, 0x0

    .line 532
    .local v1, "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;
    :try_start_0
    move-object v0, v5

    check-cast v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUser;->access$0(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/util/Logger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/com2us/module/util/Logger;->isLogged()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 552
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUser;->access$0(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/util/Logger;

    move-result-object v6

    invoke-virtual {v1}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->i(Ljava/lang/String;)V

    .line 554
    :cond_0
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUser;->access$10(Lcom/com2us/module/activeuser/ActiveUser;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 556
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUser;->access$5(Lcom/com2us/module/activeuser/ActiveUser;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 558
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    iget v7, v1, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->errno:I

    invoke-static {v6, v7}, Lcom/com2us/module/activeuser/ActiveUser;->access$11(Lcom/com2us/module/activeuser/ActiveUser;I)V

    .line 616
    .end local v1    # "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;
    :cond_1
    :goto_1
    return-void

    .line 533
    .restart local v1    # "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;
    :catch_0
    move-exception v3

    .line 534
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 554
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/activeuser/ActiveUserModule;

    .line 555
    .local v4, "module":Lcom/com2us/module/activeuser/ActiveUserModule;
    invoke-interface {v4, v1}, Lcom/com2us/module/activeuser/ActiveUserModule;->responseNetwork(Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;)V

    goto :goto_0

    .line 562
    .end local v1    # "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;
    .end local v4    # "module":Lcom/com2us/module/activeuser/ActiveUserModule;
    :cond_3
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUser;->access$12(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/activeuser/didcheck/DIDCheck;

    move-result-object v6

    invoke-virtual {v6}, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->isExecutable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 563
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUser;->access$0(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/util/Logger;

    move-result-object v6

    const-string v7, "[requestNetwork] didCheck.isExecutable true, REQUEST_DID"

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 565
    iget-object v7, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUser;->getDID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "get_did"

    :goto_2
    invoke-static {v7, v6}, Lcom/com2us/module/activeuser/ActiveUser;->access$13(Lcom/com2us/module/activeuser/ActiveUser;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v6, "update_did"

    goto :goto_2

    .line 568
    :cond_5
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v6, v8}, Lcom/com2us/module/activeuser/ActiveUser;->access$11(Lcom/com2us/module/activeuser/ActiveUser;I)V

    goto :goto_1

    .line 573
    :cond_6
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->val$requestCmd:Ljava/lang/String;

    const-string v7, "referrer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 575
    const/4 v1, 0x0

    .line 577
    .local v1, "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;
    :try_start_1
    move-object v0, v5

    check-cast v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 582
    iget v6, v1, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;->errno:I

    if-nez v6, :cond_1

    .line 583
    const-string v6, "send_referrer"

    const-string v7, "Y"

    invoke-static {v6, v7}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUser;->access$5(Lcom/com2us/module/activeuser/ActiveUser;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    goto :goto_1

    .line 578
    :catch_1
    move-exception v3

    .line 579
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 588
    .end local v1    # "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->val$requestCmd:Ljava/lang/String;

    const-string v7, "get_did"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->val$requestCmd:Ljava/lang/String;

    const-string v7, "update_did"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 590
    :cond_8
    if-eqz v5, :cond_9

    .line 591
    const/4 v1, 0x0

    .line 593
    .local v1, "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;
    :try_start_2
    move-object v0, v5

    check-cast v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;

    move-object v1, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 598
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUser;->access$12(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/activeuser/didcheck/DIDCheck;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->responseNetwork(Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;)V

    .line 600
    move-object v2, v1

    .line 601
    .local v2, "didData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    iget v7, v2, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;->errno:I

    invoke-static {v6, v7}, Lcom/com2us/module/activeuser/ActiveUser;->access$11(Lcom/com2us/module/activeuser/ActiveUser;I)V

    goto/16 :goto_1

    .line 594
    .end local v2    # "didData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;
    :catch_2
    move-exception v3

    .line 595
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 605
    .end local v1    # "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_9
    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUser;->getDID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 606
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    const/16 v7, -0x63

    invoke-static {v6, v7}, Lcom/com2us/module/activeuser/ActiveUser;->access$11(Lcom/com2us/module/activeuser/ActiveUser;I)V

    goto/16 :goto_1

    .line 608
    :cond_a
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v6, v8}, Lcom/com2us/module/activeuser/ActiveUser;->access$11(Lcom/com2us/module/activeuser/ActiveUser;I)V

    goto/16 :goto_1

    .line 614
    :cond_b
    iget-object v6, p0, Lcom/com2us/module/activeuser/ActiveUser$10;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUser;->access$0(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/util/Logger;

    move-result-object v6

    const-string v7, "[requestNetwork] wrong request Cmd !!"

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
