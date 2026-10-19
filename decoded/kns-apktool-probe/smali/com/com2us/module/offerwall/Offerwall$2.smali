.class Lcom/com2us/module/offerwall/Offerwall$2;
.super Ljava/lang/Thread;
.source "Offerwall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/offerwall/Offerwall;->rewardFinish()V
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
    iput-object p1, p0, Lcom/com2us/module/offerwall/Offerwall$2;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    .line 445
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/offerwall/Offerwall$2;)Lcom/com2us/module/offerwall/Offerwall;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$2;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 447
    iget-object v5, p0, Lcom/com2us/module/offerwall/Offerwall$2;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v5}, Lcom/com2us/module/offerwall/Offerwall;->access$1(Lcom/com2us/module/offerwall/Offerwall;)Lcom/com2us/module/offerwall/OfferwallNetwork;

    move-result-object v5

    invoke-virtual {v5}, Lcom/com2us/module/offerwall/OfferwallNetwork;->processNetworkRewardTask()Ljava/lang/Object;

    move-result-object v3

    .line 448
    .local v3, "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 450
    .local v1, "jsonObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 453
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .local v2, "jsonObj":Lorg/json/JSONObject;
    :try_start_1
    sget-object v5, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v6, "Offerwall"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "rewardFinish Result: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/String;

    .line 457
    .local v4, "rewardInfo":[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "error"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 458
    const/4 v5, 0x1

    const-string v6, "errormsg"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 459
    const/4 v5, 0x2

    const-string v6, "1"

    aput-object v6, v4, v5

    .line 460
    const/4 v5, 0x3

    const-string v6, "0"

    aput-object v6, v4, v5

    .line 461
    const/4 v5, 0x4

    const-string v6, "0"

    aput-object v6, v4, v5

    .line 462
    const/4 v5, 0x5

    const-string v6, "0"

    aput-object v6, v4, v5

    .line 464
    iget-object v5, p0, Lcom/com2us/module/offerwall/Offerwall$2;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v5, v4}, Lcom/com2us/module/offerwall/Offerwall;->access$4(Lcom/com2us/module/offerwall/Offerwall;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 481
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "rewardInfo":[Ljava/lang/String;
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 471
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v5, p0, Lcom/com2us/module/offerwall/Offerwall$2;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v5}, Lcom/com2us/module/offerwall/Offerwall;->access$8(Lcom/com2us/module/offerwall/Offerwall;)Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/com2us/module/offerwall/Offerwall$2$1;

    invoke-direct {v6, p0}, Lcom/com2us/module/offerwall/Offerwall$2$1;-><init>(Lcom/com2us/module/offerwall/Offerwall$2;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 466
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_1
.end method
