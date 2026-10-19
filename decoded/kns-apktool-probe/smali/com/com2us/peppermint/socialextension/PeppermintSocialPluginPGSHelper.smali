.class public Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static a:Landroid/os/Handler;

.field private static a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

.field private static a:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private static b:Z

.field private static final c:I


# instance fields
.field private a:I

.field private a:Lcom/com2us/peppermint/PeppermintCallback;

.field private a:Ljava/lang/Boolean;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->d:Ljava/lang/String;

    const-string v0, "PeppermintSocialPluginPGSHelper"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->set_instance(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)V

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->CreatePGSHandler()V

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)I
    .locals 1

    iget v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    return v0
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)Lcom/com2us/peppermint/PeppermintCallback;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/PeppermintCallback;

    return-object v0
.end method

.method static synthetic a()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;Ljava/lang/Exception;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b(Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Exception;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "error_code"

    const/16 v2, 0x7d2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "error_msg"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "authFailJsonForPlugin json="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    const-string v0, "connect"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mGoogleApiClient is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->onConnected(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a()V

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/PeppermintCallback;

    return-void
.end method

.method static synthetic b(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/Exception;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "error_code"

    const/16 v2, 0x7d4

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "error_msg"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "authCancelJsonForPlugin json="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "resetPGS"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    iput v3, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    const-string v1, "retryPGS"

    iget v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/com2us/peppermint/LocalStorage;->setDataValueWithKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "pgsAccount"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/com2us/peppermint/LocalStorage;->removeDataValueWithKey(Landroid/content/Context;[Ljava/lang/String;)Z

    const-string v1, "logoutHistory"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/com2us/peppermint/LocalStorage;->setDataValueWithKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->d:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "handleAuthSuccessOK"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/Players;->getCurrentPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->d:Ljava/lang/String;

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->getCurrentAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "lastAccount"

    invoke-static {v1, v2}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleAuthSuccessOK lastEmail="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "currentEmail="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->c:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v5}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->setOnlycookieclear(Z)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    new-instance v2, Lcom/com2us/peppermint/socialextension/D;

    invoke-direct {v2, p0, v1}, Lcom/com2us/peppermint/socialextension/D;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/com2us/peppermint/Peppermint;->logout(Lcom/com2us/peppermint/PeppermintCallback;)I

    :goto_0
    const-string v0, "lastAccount"

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/com2us/peppermint/LocalStorage;->setDataValueWithKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->setIsPGS(Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/PeppermintCallback;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "playername"

    iget-object v4, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "playerid"

    iget-object v4, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "error_code"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "didLogout"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v0, v2}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/PeppermintCallback;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static get_instance()Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;
    .locals 1

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    return-object v0
.end method

.method public static isOnlyCookieClear()Z
    .locals 1

    sget-boolean v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b:Z

    return v0
.end method

.method public static setOnlycookieclear(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOnlycookieclear bOnlyCookieClear="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sput-boolean p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b:Z

    return-void
.end method

.method public static set_instance(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;)V
    .locals 0

    sput-object p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    return-void
.end method


# virtual methods
.method public CreatePGSHandler()V
    .locals 2

    const-string v0, "CreatePGSHandler"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/com2us/peppermint/socialextension/A;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/com2us/peppermint/socialextension/A;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Landroid/os/Handler;

    return-void
.end method

.method public PGSLoginProc(Lcom/com2us/peppermint/PeppermintCallback;)I
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PGSLoginProc logout_history="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "logoutHistory"

    invoke-static {v2, v1}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/PeppermintCallback;

    const-string v0, "retryPGS"

    invoke-static {v2, v0}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v5, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    :goto_0
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const-string v1, "0"

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v4, "com.google"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PGSLoginProc Account Number : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PGSLoginProc PGS retry Number : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const-string v2, "============================================================"

    invoke-static {v2}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "gameindex"

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/com2us/peppermint/Peppermint;->getGameIndex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appid"

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/com2us/peppermint/Peppermint;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mcc"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dcc"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "coutnry"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "accountnum"

    iget v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "retrypgs"

    iget v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, v3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->checkServerPGSOn(Lorg/json/JSONObject;)V

    return v5

    :cond_1
    const-string v0, "retryPGS"

    invoke-static {v2, v0}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public checkServerPGSOn(Lorg/json/JSONObject;)V
    .locals 4

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v1

    const-string v2, "device/use_pgs"

    new-instance v3, Lcom/com2us/peppermint/socialextension/C;

    invoke-direct {v3, p0, v0}, Lcom/com2us/peppermint/socialextension/C;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/com2us/peppermint/Peppermint;->asyncRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)I

    return-void
.end method

.method public disconnect()V
    .locals 2

    const-string v0, "disconnect"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "disconnect mGoogleApiClient is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b()V

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public disconnectEx()V
    .locals 2

    const-string v0, "disconnectEx"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "disconnectEx mGoogleApiClient is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    invoke-direct {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAccountNum()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b:I

    iget v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "getApiClient mGoogleApiClient is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPGS()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLogoutHistory()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "logoutHistory"

    invoke-static {v0, v1}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected handleAuthCancel(Ljava/lang/Exception;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "handleAuthCancel"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/PeppermintCallback;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->b(Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v2, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->setIsPGS(Ljava/lang/Boolean;)V

    :try_start_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "handleAuthCancel mGoogleApiClient is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/PeppermintCallback;

    const-string v0, "retryPGS"

    invoke-static {v1, v0}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "retryPGS"

    invoke-static {v1, v0}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-ne v0, v2, :cond_5

    :cond_2
    iput v3, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    :goto_1
    iget v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    const/16 v2, 0xff

    if-gt v0, v2, :cond_3

    iget v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    :cond_3
    const-string v0, "retryPGS"

    iget v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/com2us/peppermint/LocalStorage;->setDataValueWithKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleAuthCancel retury_count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-void

    :cond_4
    :try_start_1
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    const-string v0, "retryPGS"

    invoke-static {v1, v0}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:I

    goto :goto_1
.end method

.method protected handleAuthError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "handleAuthError"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/PeppermintCallback;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a(Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->setIsPGS(Ljava/lang/Boolean;)V

    :try_start_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handleAuthError mGoogleApiClient is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/com2us/peppermint/PeppermintCallback;

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public handleAuthSuccess()V
    .locals 1

    const-string v0, "handleAuthSuccess"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->c()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "resultCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->disconnectEx()V

    goto :goto_0

    :pswitch_1
    iput-boolean v4, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Z

    if-ne p2, v2, :cond_2

    :try_start_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mGoogleApiClient is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult resultCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->handleAuthCancel(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult resultCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->handleAuthError(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_2
    if-ne p2, v2, :cond_4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->setIsPGS(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->handleAuthSuccess()V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Oauthtoken Cancel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->handleAuthCancel(Ljava/lang/Exception;)V

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pgsAccount"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/com2us/peppermint/LocalStorage;->removeDataValueWithKey(Landroid/content/Context;[Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a38
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "onConnected"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->setIsPGS(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->handleAuthSuccess()V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 6

    const/16 v5, 0x4a38

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConnectionFailed mIntentInProgress="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result.hasResolution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Z

    const/16 v0, 0x4a38

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Z

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    :cond_0
    if-eq v0, v4, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    new-instance v2, Lcom/com2us/peppermint/socialextension/B;

    invoke-direct {v2, p0, v0}, Lcom/com2us/peppermint/socialextension/B;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;I)V

    invoke-static {v0, v1, v5, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConnectionResult error code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->handleAuthError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method

.method public setIsPGS(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public setOauthToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->a:Ljava/lang/String;

    return-void
.end method
