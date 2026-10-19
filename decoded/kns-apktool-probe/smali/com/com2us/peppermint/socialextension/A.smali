.class Lcom/com2us/peppermint/socialextension/A;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/A;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ActionKeyType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "ActionKeyValue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/A;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-static {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)Lcom/com2us/peppermint/PeppermintCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/A;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "use_pgs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/A;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-static {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)Lcom/com2us/peppermint/PeppermintCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    :cond_0
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/A;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->setIsPGS(Ljava/lang/Boolean;)V

    :try_start_1
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "CreatePGSHandler mGoogleApiClient is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/A;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/A;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/A;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
