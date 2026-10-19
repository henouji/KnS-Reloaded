.class Lcom/com2us/module/util/DeviceIdentity$1;
.super Ljava/lang/Object;
.source "DeviceIdentity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/util/DeviceIdentity;->getDIDSynchronized(Landroid/content/Context;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/util/DeviceIdentity$1;->val$context:Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 174
    :try_start_0
    iget-object v3, p0, Lcom/com2us/module/util/DeviceIdentity$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/com2us/module/util/DeviceIdentity;->access$0(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 176
    .local v2, "msg":Ljava/lang/String;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v3, "errno"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 178
    const-string v3, "did"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/util/DeviceIdentity;->access$1(Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/com2us/module/util/DeviceIdentity$1;->val$context:Landroid/content/Context;

    const-string v4, "did_data"

    invoke-static {}, Lcom/com2us/module/util/DeviceIdentity;->access$2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/com2us/module/util/DeviceIdentity;->access$3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lcom/com2us/module/util/DeviceIdentity$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/com2us/module/util/DeviceIdentity;->access$4(Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v2    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-static {}, Lcom/com2us/module/util/DeviceIdentity;->access$5()Lcom/com2us/module/util/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDID responseMsg JSONException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 189
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/com2us/module/util/DeviceIdentity;->access$5()Lcom/com2us/module/util/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDID processNetworkTask Exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
