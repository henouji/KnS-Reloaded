.class public Lcom/com2us/peppermint/PeppermintCallbackJSON;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJSON(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lcom/com2us/peppermint/Dictionary;

    invoke-direct {v1}, Lcom/com2us/peppermint/Dictionary;-><init>()V

    :try_start_0
    const-string v0, "type"

    invoke-virtual {v1, v0, p1}, Lcom/com2us/peppermint/Dictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/com2us/peppermint/Dictionary;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    invoke-virtual {v1, v0, p3}, Lcom/com2us/peppermint/Dictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getJSON(Ljava/lang/String;Lcom/com2us/peppermint/Dictionary;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    const-string v0, "type"

    invoke-virtual {p2, v0, p1}, Lcom/com2us/peppermint/Dictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    invoke-virtual {p2, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "error_code"

    invoke-virtual {p2, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const-string v1, "error_code"

    invoke-virtual {p2, v1, v0}, Lcom/com2us/peppermint/Dictionary;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    invoke-virtual {p2, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "error_msg"

    invoke-virtual {p2, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_0

    const-string v1, "error_msg"

    invoke-virtual {p2, v1, v0}, Lcom/com2us/peppermint/Dictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-object p2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
