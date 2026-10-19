.class Lcom/com2us/module/offerwall/Offerwall$1;
.super Ljava/lang/Thread;
.source "Offerwall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/offerwall/Offerwall;->requestNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/offerwall/Offerwall;


# direct methods
.method constructor <init>(Lcom/com2us/module/offerwall/Offerwall;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/offerwall/Offerwall$1;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    .line 301
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v0, 0x1

    const/4 v13, 0x0

    .line 303
    invoke-static {v0}, Lcom/com2us/module/offerwall/Offerwall;->access$0(Z)V

    .line 305
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "requestNetwork run"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$1;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v0}, Lcom/com2us/module/offerwall/Offerwall;->access$1(Lcom/com2us/module/offerwall/Offerwall;)Lcom/com2us/module/offerwall/OfferwallNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/offerwall/OfferwallNetwork;->processNetworkTask()Ljava/lang/Object;

    move-result-object v10

    .line 308
    .local v10, "obj":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 309
    .local v8, "jsonObj":Lorg/json/JSONObject;
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Offerwall json String :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    if-eqz v10, :cond_0

    .line 314
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    check-cast v10, Ljava/lang/String;

    .end local v10    # "obj":Ljava/lang/Object;
    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v8    # "jsonObj":Lorg/json/JSONObject;
    .local v9, "jsonObj":Lorg/json/JSONObject;
    :try_start_1
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "json : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$1;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    const-string v1, "result"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/Offerwall;->access$2(Lcom/com2us/module/offerwall/Offerwall;I)V

    .line 320
    const-string v0, "activation"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 321
    .local v11, "offerwallActivation":Ljava/lang/String;
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$1;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v0, v11}, Lcom/com2us/module/offerwall/Offerwall;->access$3(Lcom/com2us/module/offerwall/Offerwall;Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x6

    new-array v12, v0, [Ljava/lang/String;

    .line 326
    .local v12, "rewardInfo":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "error"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 327
    const/4 v0, 0x1

    const-string v1, "errormsg"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 328
    const/4 v0, 0x2

    const-string v1, "result"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 329
    const/4 v0, 0x3

    const-string v1, "eventid"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 330
    const/4 v0, 0x4

    const-string v1, "asset_code"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 331
    const/4 v0, 0x5

    const-string v1, "asset_amount"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 334
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$1;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v0, v12}, Lcom/com2us/module/offerwall/Offerwall;->access$4(Lcom/com2us/module/offerwall/Offerwall;[Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$1;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    const/4 v1, 0x0

    aget-object v1, v12, v1

    const/4 v2, 0x1

    aget-object v2, v12, v2

    const/4 v3, 0x2

    aget-object v3, v12, v3

    const/4 v4, 0x3

    aget-object v4, v12, v4

    const/4 v5, 0x4

    aget-object v5, v12, v5

    const/4 v6, 0x5

    aget-object v6, v12, v6

    invoke-static/range {v0 .. v6}, Lcom/com2us/module/offerwall/Offerwall;->access$5(Lcom/com2us/module/offerwall/Offerwall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$1;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v0}, Lcom/com2us/module/offerwall/Offerwall;->access$6(Lcom/com2us/module/offerwall/Offerwall;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$1;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v0}, Lcom/com2us/module/offerwall/Offerwall;->access$7(Lcom/com2us/module/offerwall/Offerwall;)Lcom/com2us/module/offerwall/OfferwallDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/offerwall/OfferwallDialog;->loadURL()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 361
    .end local v9    # "jsonObj":Lorg/json/JSONObject;
    .end local v11    # "offerwallActivation":Ljava/lang/String;
    .end local v12    # "rewardInfo":[Ljava/lang/String;
    .restart local v8    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v13}, Lcom/com2us/module/offerwall/Offerwall;->access$0(Z)V

    .line 362
    return-void

    .line 345
    :catch_0
    move-exception v7

    .line 346
    .local v7, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 350
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v10    # "obj":Ljava/lang/Object;
    :cond_0
    sget-object v0, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "Error: Offerwall network disconnect"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    .end local v8    # "jsonObj":Lorg/json/JSONObject;
    .end local v10    # "obj":Ljava/lang/Object;
    .restart local v9    # "jsonObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9    # "jsonObj":Lorg/json/JSONObject;
    .restart local v8    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_1

    .end local v8    # "jsonObj":Lorg/json/JSONObject;
    .restart local v9    # "jsonObj":Lorg/json/JSONObject;
    .restart local v11    # "offerwallActivation":Ljava/lang/String;
    .restart local v12    # "rewardInfo":[Ljava/lang/String;
    :cond_1
    move-object v8, v9

    .end local v9    # "jsonObj":Lorg/json/JSONObject;
    .restart local v8    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_0
.end method
