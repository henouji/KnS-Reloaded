.class Lcom/com2us/module/otacertification/OTACertification$4;
.super Ljava/lang/Thread;
.source "OTACertification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/otacertification/OTACertification;->requestNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/otacertification/OTACertification;


# direct methods
.method constructor <init>(Lcom/com2us/module/otacertification/OTACertification;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/otacertification/OTACertification$4;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    .line 297
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 301
    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification$4;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-virtual {v4}, Lcom/com2us/module/otacertification/OTACertification;->processNetworkTask()Ljava/lang/Object;

    move-result-object v1

    .line 303
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 305
    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification$4;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    const/4 v5, 0x6

    invoke-virtual {v4, v8, v5, v9}, Lcom/com2us/module/otacertification/OTACertification;->onResult(ZILjava/lang/String;)V

    .line 341
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 309
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v2, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;

    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification$4;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-direct {v2, v4}, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;-><init>(Lcom/com2us/module/otacertification/OTACertification;)V

    .line 310
    .local v2, "receivedData":Lcom/com2us/module/otacertification/OTACertification$ReceivedData;
    const/4 v3, 0x0

    .line 313
    .local v3, "result":I
    :try_start_0
    check-cast v1, Ljava/lang/String;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->getData(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 320
    :goto_1
    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification$4;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-static {v4}, Lcom/com2us/module/otacertification/OTACertification;->access$5(Lcom/com2us/module/otacertification/OTACertification;)Lcom/com2us/module/util/Logger;

    move-result-object v4

    const-string v5, "OTACertification"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Receive data"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->resultCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->stateCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 321
    iget-object v7, v2, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 320
    invoke-virtual {v4, v5, v6}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/4 v4, 0x4

    if-eq v4, v3, :cond_1

    .line 325
    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification$4;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-virtual {v4, v8, v11, v9}, Lcom/com2us/module/otacertification/OTACertification;->onResult(ZILjava/lang/String;)V

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification$4;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-virtual {v4, v8, v11, v9}, Lcom/com2us/module/otacertification/OTACertification;->onResult(ZILjava/lang/String;)V

    goto :goto_1

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, v2, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->resultCode:Ljava/lang/String;

    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 329
    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification$4;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-virtual {v4, v10, v10, v9}, Lcom/com2us/module/otacertification/OTACertification;->onResult(ZILjava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v4, v2, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->resultCode:Ljava/lang/String;

    const-string v5, "N"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->resultCode:Ljava/lang/String;

    const-string v5, "E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 333
    :cond_3
    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification$4;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    iget-object v5, v2, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->stateCode:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v2, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->message:Ljava/lang/String;

    invoke-virtual {v4, v8, v5, v6}, Lcom/com2us/module/otacertification/OTACertification;->onResult(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :cond_4
    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification$4;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    const/16 v5, 0x8

    invoke-virtual {v4, v8, v5, v9}, Lcom/com2us/module/otacertification/OTACertification;->onResult(ZILjava/lang/String;)V

    goto/16 :goto_0
.end method
