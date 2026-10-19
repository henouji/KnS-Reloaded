.class Lcom/com2us/peppermint/socialextension/D;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/com2us/peppermint/PeppermintCallback;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/D;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/D;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/D;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->setIsPGS(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/D;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)Lcom/com2us/peppermint/PeppermintCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x1

    :try_start_0
    const-string v2, "playername"

    iget-object v3, p0, Lcom/com2us/peppermint/socialextension/D;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-static {v3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "playerid"

    iget-object v3, p0, Lcom/com2us/peppermint/socialextension/D;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-static {v3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "didLogout"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/D;->a:Landroid/app/Activity;

    const-string v2, "logoutHistory"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/com2us/peppermint/LocalStorage;->setDataValueWithKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/D;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)Lcom/com2us/peppermint/PeppermintCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    :cond_0
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/D;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;Lcom/com2us/peppermint/PeppermintCallback;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
