.class public Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;
.super Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static synthetic a:[I


# instance fields
.field private a:Lcom/com2us/peppermint/PeppermintCallback;

.field private a:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/gms/plus/model/people/PersonBuffer;)Lorg/json/JSONArray;
    .locals 4

    const-string v0, "friendUidsFromResult"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->getCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    throw v0
.end method

.method static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->values()[Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_BUSINESS_MODEL:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    :try_start_1
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_INVITE_DIALOG:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_2
    :try_start_2
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_IS_AUTHORIZED:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_3
    :try_start_3
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_LOGOUT:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_4
    :try_start_4
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_NONE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_5
    :try_start_5
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_QUERY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_6
    :try_start_6
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_RECEIVED_INVITE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_7
    :try_start_7
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_FRIENDS:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    :try_start_8
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_INVITATION_LIST:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_ME:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_a
    :try_start_a
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_TOKEN:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_b
    :try_start_b
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SEND_APP_INVITATION:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_c
    :try_start_c
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SEND_APP_MESSAGE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_d
    :try_start_d
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SHARE_APP_ACTIVITY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_e
    :try_start_e
    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_USER_PROFILE_IMAGE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_f
    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1
.end method

.method public static plugin()Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    invoke-direct {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;-><init>()V

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->initWithClientID()Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 1

    const-string v0, "connect"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 2

    const-string v0, "disconnect"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    const-string v0, "disconnect mGoogleApiClient is null!"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "use_pgs"

    invoke-static {v0, v1}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->get_instance()Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->get_instance()Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->disconnect()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->get_instance()Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->get_instance()Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->disconnectEx()V

    goto :goto_0
.end method

.method public friendsJsonForPlugin(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/plus/model/people/PersonBuffer;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "friendsJsonForPlugin"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_FRIENDS:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "friends"

    invoke-direct {p0, p2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a(Lcom/google/android/gms/plus/model/people/PersonBuffer;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "friendsJsonForPlugin json="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_1
    const-string v1, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "error_msg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConnectionResult error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "friends"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "getApiClient mGoogleApiClient is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getOauthToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "googleplus"

    return-object v0
.end method

.method public handleAuthSuccess()V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/plus/People;->getCurrentPerson(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/People;->getCurrentPerson(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->userMeFromResult(Lcom/google/android/gms/plus/model/people/Person;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleAuthSuccess json="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/com2us/peppermint/PeppermintCallback;

    return-void

    :cond_0
    :try_start_0
    const-string v1, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_ME:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "error_msg"

    const-string v2, "Can not get current Person."

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public initWithClientID()Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;
    .locals 3

    const-string v0, "initWithClientID"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "initWithClientID apiBuilder is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "use_pgs"

    invoke-static {v1, v2}, Lcom/com2us/peppermint/LocalStorage;->getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/com2us/peppermint/PeppermintCallback;

    return-object p0
.end method

.method public isAuthorized(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "is_authorized"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_IS_AUTHORIZED:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {p1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    :try_start_1
    const-string v1, "is_authorized"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isSupportedAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Z
    .locals 2

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->b()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public logout(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_LOGOUT:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {p1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->disconnect()V

    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->disconnect()V

    goto :goto_0

    :sswitch_0
    iput-boolean v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->b:Z

    if-ne p2, v3, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onActivityResult is null"

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
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

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

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->handleAuthCancel(Ljava/lang/Exception;)V

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

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->handleAuthError(Ljava/lang/Exception;)V

    goto :goto_0

    :sswitch_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/com2us/peppermint/PeppermintCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SHARE_APP_ACTIVITY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-ne p2, v3, :cond_4

    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "result"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v0, v1}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/com2us/peppermint/PeppermintCallback;

    goto/16 :goto_0

    :cond_4
    if-nez p2, :cond_5

    :try_start_3
    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "result"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_5
    :try_start_4
    const-string v0, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :sswitch_3
    if-ne p2, v3, :cond_6

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->handleAuthSuccess()V

    goto/16 :goto_0

    :cond_6
    if-nez p2, :cond_7

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Peppermint GooglePlus Oauthtoken Cancel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->handleAuthCancel(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Peppermint GooglePlus Oauthtoken Unknown Error "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->handleAuthError(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2328 -> :sswitch_0
        0x2329 -> :sswitch_1
        0x232a -> :sswitch_3
        0x238c -> :sswitch_2
    .end sparse-switch
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "onConnected"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->doWork()V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "onConnectionFailed"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->b:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->b:Z

    const/16 v0, 0x2328

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->b:Z

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    :cond_0
    if-eq v0, v3, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    const/16 v2, 0x2329

    new-instance v3, Lcom/com2us/peppermint/socialextension/z;

    invoke-direct {v3, p0, v0}, Lcom/com2us/peppermint/socialextension/z;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;I)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

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

    invoke-virtual {p0, v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->handleAuthError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method

.method public queryWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    return-void
.end method

.method public requestFriendsWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 3

    const-string v0, "requestFriendsWithResponseCallback"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/plus/People;->loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/com2us/peppermint/socialextension/y;

    invoke-direct {v1, p0, p1}, Lcom/com2us/peppermint/socialextension/y;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public requestInvitationListWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    return-void
.end method

.method public requestInviteDialog(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    return-void
.end method

.method public requestReceivedInvite(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    return-void
.end method

.method public requestUserMeWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 3

    const-string v0, "requestUserMeWithResponseCallback"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v0, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v2}, Lcom/google/android/gms/plus/People;->getCurrentPerson(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->handleAuthSuccess()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_ME:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const-string v2, "Can not get current Person."

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "requestUserMeWithResponseCallback json="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public requestUserProfileImage(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    return-void
.end method

.method public requestUserTokenWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "token"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->getOauthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p1, v1}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendAppInvitationWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    return-void
.end method

.method public sendAppMessageWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    return-void
.end method

.method public sendBusinessModel(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    return-void
.end method

.method public setOauthToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Ljava/lang/String;

    return-void
.end method

.method public shareAppActivityWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "shareAppActivityWithParams json="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/com2us/peppermint/PeppermintCallback;

    :try_start_0
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/google/android/gms/plus/PlusShare$Builder;

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/plus/PlusShare$Builder;-><init>(Landroid/app/Activity;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://m.com2us.com/link/store?appid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "/hub/deeplinkID/"

    invoke-virtual {v2, v0}, Lcom/google/android/gms/plus/PlusShare$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/gms/plus/PlusShare$Builder;

    const-string v0, "INVITE"

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/plus/PlusShare$Builder;->addCallToAction(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://m.com2us.com/link/store?appid="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/plus/PlusShare$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    const-string v0, "/hub/deeplinkID/"

    invoke-virtual {v2, v0, v1, v1, v1}, Lcom/google/android/gms/plus/PlusShare$Builder;->setContentDeepLinkId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/plus/PlusShare$Builder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x238c

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected userFromResult(Lcom/google/android/gms/plus/model/people/Person;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "uid"

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "name"

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "picture"

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "country"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected userMeFromResult(Lcom/google/android/gms/plus/model/people/Person;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "userMeFromResult"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_ME:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uid"

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v2}, Lcom/google/android/gms/plus/Account;->getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "email"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "birthday"

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getBirthday()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gender"

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getGender()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "country"

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getCurrentLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "language"

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "screen_name"

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "username"

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "second_email"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bio"

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getTagline()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "token"

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    return-object v1

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getBirthday()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getTagline()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
