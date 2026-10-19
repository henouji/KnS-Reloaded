.class Lcom/com2us/peppermint/socialextension/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field private final synthetic a:Lcom/com2us/peppermint/PeppermintCallback;

.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/c;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/c;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "service"

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/c;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    invoke-virtual {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_BUSINESS_MODEL:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "runSendBusinessModel json= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/c;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v0, v1}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "error_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
