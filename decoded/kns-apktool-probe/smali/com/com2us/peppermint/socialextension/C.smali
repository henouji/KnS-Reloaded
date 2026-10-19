.class Lcom/com2us/peppermint/socialextension/C;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/com2us/peppermint/PeppermintCallback;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/C;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/C;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/C;->a:Landroid/app/Activity;

    const-string v3, "maxretrypgs"

    invoke-static {v0, v3}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkServerPGSOn json"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v3, ""

    :try_start_0
    const-string v3, "error_code"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "error_code"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :cond_0
    :goto_1
    if-nez v1, :cond_5

    :try_start_1
    const-string v1, "use_pgs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "use_pgs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "maxretrypgs"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "maxretrypgs"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_3
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    :goto_4
    iget-object v3, p0, Lcom/com2us/peppermint/socialextension/C;->a:Landroid/app/Activity;

    const-string v4, "use_pgs"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/com2us/peppermint/LocalStorage;->setDataValueWithKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/com2us/peppermint/socialextension/C;->a:Landroid/app/Activity;

    const-string v4, "maxretrypgs"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/com2us/peppermint/LocalStorage;->setDataValueWithKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "UsePGS Off(from Server)"

    move-object v6, v3

    move v3, v1

    move-object v1, v6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ActionKeyType"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ActionKeyValue"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_6
    return-void

    :cond_2
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/C;->a:Landroid/app/Activity;

    const-string v3, "maxretrypgs"

    invoke-static {v0, v3}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/C;->a:Landroid/app/Activity;

    const-string v3, "use_pgs"

    invoke-static {v1, v3}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "UsePGS Off(from Local)"

    move-object v6, v1

    move-object v1, v3

    move v3, v0

    move-object v0, v6

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/C;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)I

    move-result v0

    if-lt v0, v3, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Over retry "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ActionKeyType"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ActionKeyValue"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/C;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)V

    goto :goto_6

    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method
