.class Lcom/com2us/module/mercury/Mercury$1;
.super Ljava/lang/Thread;
.source "Mercury.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/Mercury;->requestNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/mercury/Mercury;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/Mercury;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    .line 580
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 582
    sget-object v6, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    const-string v8, "requestNetwork run"

    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/4 v5, 0x0

    .line 584
    .local v5, "obj":Ljava/lang/Object;
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    invoke-static {v6}, Lcom/com2us/module/mercury/Mercury;->access$0(Lcom/com2us/module/mercury/Mercury;)Lcom/com2us/module/mercury/MercuryNetwork;

    move-result-object v6

    invoke-virtual {v6}, Lcom/com2us/module/mercury/MercuryNetwork;->processNetworkTask()Ljava/lang/Object;

    move-result-object v5

    .line 585
    const/4 v3, 0x0

    .line 586
    .local v3, "jsonObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_3

    .line 589
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "obj":Ljava/lang/Object;
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .local v4, "jsonObj":Lorg/json/JSONObject;
    :try_start_1
    sget-object v6, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "json : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v6, "error"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "error":Ljava/lang/String;
    const-string v6, "errormsg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "errorMsg":Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 596
    sget-object v6, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "requestNetwork error : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "error msg : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    invoke-virtual {v6}, Lcom/com2us/module/mercury/Mercury;->sendCloseCallback()V

    move-object v3, v4

    .line 631
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 601
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v1    # "error":Ljava/lang/String;
    .restart local v2    # "errorMsg":Ljava/lang/String;
    .restart local v4    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    const-string v7, "count"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/com2us/module/mercury/Mercury;->access$1(Lcom/com2us/module/mercury/Mercury;I)V

    .line 602
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    invoke-static {v6}, Lcom/com2us/module/mercury/Mercury;->access$2(Lcom/com2us/module/mercury/Mercury;)I

    move-result v6

    if-gtz v6, :cond_1

    .line 604
    sget-object v6, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    const-string v8, "requestNetwork webViewCount <= 0"

    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    invoke-virtual {v6}, Lcom/com2us/module/mercury/Mercury;->sendCloseCallback()V

    move-object v3, v4

    .line 606
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 609
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v4    # "jsonObj":Lorg/json/JSONObject;
    :cond_1
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    const-string v7, "show"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/com2us/module/mercury/Mercury;->access$3(Lcom/com2us/module/mercury/Mercury;I)V

    .line 610
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    const-string v7, "type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/com2us/module/mercury/Mercury;->access$4(Lcom/com2us/module/mercury/Mercury;I)V

    .line 611
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    const-string v7, "webview"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/com2us/module/mercury/Mercury;->access$5(Lcom/com2us/module/mercury/Mercury;Lorg/json/JSONArray;)V

    .line 613
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    invoke-static {v6}, Lcom/com2us/module/mercury/Mercury;->access$2(Lcom/com2us/module/mercury/Mercury;)I

    move-result v6

    iget-object v7, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    invoke-static {v7}, Lcom/com2us/module/mercury/Mercury;->access$6(Lcom/com2us/module/mercury/Mercury;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 615
    sget-object v6, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    const-string v8, "requestNetwork webViewCount != webViewJSONArr.length()"

    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    invoke-virtual {v6}, Lcom/com2us/module/mercury/Mercury;->sendCloseCallback()V

    move-object v3, v4

    .line 617
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 620
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v4    # "jsonObj":Lorg/json/JSONObject;
    :cond_2
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    invoke-virtual {v6}, Lcom/com2us/module/mercury/Mercury;->show()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 622
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_0

    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "errorMsg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 627
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_3
    sget-object v6, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    const-string v8, "Error: Mercury network diconnected"

    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v6, p0, Lcom/com2us/module/mercury/Mercury$1;->this$0:Lcom/com2us/module/mercury/Mercury;

    invoke-static {v6}, Lcom/com2us/module/mercury/Mercury;->access$7(Lcom/com2us/module/mercury/Mercury;)V

    goto/16 :goto_0

    .line 622
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v5    # "obj":Ljava/lang/Object;
    .restart local v4    # "jsonObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_1
.end method
