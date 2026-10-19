.class public Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

.field private a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Ljava/lang/String;

    const-string v0, "GetOauthTokenTask"

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    iput-object v1, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    const/4 v0, 0x0

    iput v0, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    aget-object v0, p1, v5

    if-nez v0, :cond_0

    const-string v0, "doInBackground Activity is Null!"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p1, v5

    check-cast v0, Landroid/app/Activity;

    const-string v1, ""

    aget-object v2, p1, v3

    instance-of v2, v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    if-eqz v2, :cond_2

    const-string v1, "doInBackground Object is PeppermintPGSHelper"

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    aget-object v1, p1, v3

    check-cast v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    iput-object v1, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/16 v2, 0x4a3a

    iput v2, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:I

    invoke-static {v1}, Lcom/google/android/gms/games/Games;->getCurrentAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "use_pgs"

    invoke-static {v2, v3}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "oauth2:https://www.googleapis.com/auth/games https://www.googleapis.com/auth/userinfo.email"

    :goto_2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doInBackground OauthScope is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    :cond_2
    aget-object v2, p1, v3

    instance-of v2, v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    if-eqz v2, :cond_1

    const-string v1, "doInBackground Object is PeppermintSocialPluginGooglePlus"

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    aget-object v1, p1, v3

    check-cast v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    iput-object v1, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/16 v2, 0x232a

    iput v2, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:I

    sget-object v2, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    invoke-interface {v2, v1}, Lcom/google/android/gms/plus/Account;->getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "oauth2:https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/userinfo.email"

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:I

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->printStackTrace()V

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->printStackTrace()V

    goto :goto_3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->setIsPGS(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->setOauthToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->handleAuthSuccess()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->setOauthToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->handleAuthSuccess()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/com2us/peppermint/socialextension/GetOauthTokenTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
