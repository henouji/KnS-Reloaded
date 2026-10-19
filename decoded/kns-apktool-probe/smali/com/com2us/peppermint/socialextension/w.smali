.class Lcom/com2us/peppermint/socialextension/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# instance fields
.field private final synthetic a:Lcom/com2us/peppermint/PeppermintCallback;

.field final synthetic a:Lcom/com2us/peppermint/socialextension/v;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/v;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/w;->a:Lcom/com2us/peppermint/socialextension/v;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/w;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 5

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/w;->a:Lcom/com2us/peppermint/PeppermintCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "service"

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/w;->a:Lcom/com2us/peppermint/socialextension/v;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/v;->a(Lcom/com2us/peppermint/socialextension/v;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SEND_APP_INVITATION:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    instance-of v0, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_1

    const-string v0, "error_code"

    const/16 v2, 0x7d1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const-string v2, "user cancelled"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sendAppInvitationWithParams json="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/w;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v0, v1}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "error_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "receivers"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "to"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
