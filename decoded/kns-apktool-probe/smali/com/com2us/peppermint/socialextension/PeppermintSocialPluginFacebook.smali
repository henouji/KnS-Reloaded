.class public Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;
.super Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;


# static fields
.field private static synthetic a:[I

.field private static final a:[Ljava/lang/String;

.field private static synthetic b:[I

.field private static final b:[Ljava/lang/String;


# instance fields
.field private a:Lcom/com2us/peppermint/PeppermintCallback;

.field private a:Lcom/facebook/Session$StatusCallback;

.field private a:Lorg/json/JSONObject;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "basic_info"

    aput-object v1, v0, v2

    const-string v1, "email"

    aput-object v1, v0, v3

    const-string v1, "user_birthday"

    aput-object v1, v0, v4

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "public_profile"

    aput-object v1, v0, v2

    const-string v1, "user_friends"

    aput-object v1, v0, v3

    const-string v1, "email"

    aput-object v1, v0, v4

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b:Z

    iput-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lcom/com2us/peppermint/PeppermintCallback;

    new-instance v0, Lcom/com2us/peppermint/socialextension/a;

    invoke-direct {v0, p0}, Lcom/com2us/peppermint/socialextension/a;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;)V

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lcom/facebook/Session$StatusCallback;

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;)Lcom/facebook/Session$StatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method private a(Lcom/facebook/Response;)Lorg/json/JSONArray;
    .locals 6

    const-string v0, "usersFromResult"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->userFromResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private a(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 5

    const-string v0, "friendUidsFromResult"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/facebook/Response;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Lcom/facebook/Response;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;ZLandroid/os/Bundle;Lcom/facebook/FacebookException;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(ZLandroid/os/Bundle;Lcom/facebook/FacebookException;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/Response;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "requestUserTokenWithResponseCallback"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    :try_start_1
    const-string v1, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_ME:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userMeJsonForPlugin json="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    :try_start_3
    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "uid"

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "email"

    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gender"

    const-string v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->genderCodeFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "language"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "country"

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    const-string v2, "screen_name"

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_5
    if-eqz v0, :cond_6

    const-string v2, "username"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "second_email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "@facebook.com"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_6
    const-string v2, "bio"

    const-string v0, "bio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "bio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_7
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "userMeFromResult json="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_1
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_3
    const-string v0, "language"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "country"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    :cond_4
    :try_start_2
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    const-string v0, "username"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "second_email"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_7
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7
.end method

.method private a(ZLandroid/os/Bundle;Lcom/facebook/FacebookException;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SHARE_APP_ACTIVITY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_0

    const-string v0, "error_code"

    const/16 v2, 0x7d4

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const-string v2, "user cancelled"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "shareAppAcitivityJsonForPlugin json="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_1
    const-string v0, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    invoke-virtual {p3}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "clearFacebookCookies"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const-string v0, "facebook.com"

    invoke-direct {p0, p1, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, ".facebook.com"

    invoke-direct {p0, p1, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "https://facebook.com"

    invoke-direct {p0, p1, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "https://.facebook.com"

    invoke-direct {p0, p1, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "clearCookiesForDomain domain="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_1

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    goto :goto_0

    :cond_1
    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-lez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p2, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 6

    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "/me/ids_for_business"

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/com2us/peppermint/socialextension/c;

    invoke-direct {v5, p0, p1}, Lcom/com2us/peppermint/socialextension/c;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    new-instance v1, Lcom/facebook/RequestAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/com2us/peppermint/socialextension/d;

    invoke-direct {v2, p0, v1}, Lcom/com2us/peppermint/socialextension/d;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/facebook/RequestAsyncTask;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v0, "runQueryWithParams"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const-string v0, "query"

    const-string v0, "method"

    const-string v0, "params"

    const-string v4, ""

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const-string v1, ""

    :try_start_0
    const-string v0, "query"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "query"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    :goto_0
    const-string v0, "method"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "method"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    const-string v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    move-object v6, v2

    move-object v2, v4

    :goto_3
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    :goto_4
    sget-object v0, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-virtual {v4, v0}, Lcom/facebook/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v7

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "runQueryWithParams isPostQuery="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    new-instance v5, Lcom/com2us/peppermint/socialextension/x;

    invoke-direct {v5, p0, v6, p2}, Lcom/com2us/peppermint/socialextension/x;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    new-instance v1, Lcom/facebook/RequestAsyncTask;

    new-array v2, v7, [Lcom/facebook/Request;

    aput-object v0, v2, v8

    invoke-direct {v1, v2}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/com2us/peppermint/socialextension/b;

    invoke-direct {v2, p0, v1}, Lcom/com2us/peppermint/socialextension/b;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/facebook/RequestAsyncTask;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    :try_start_2
    const-string v4, ""

    goto :goto_0

    :cond_1
    const-string v1, ""
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v9

    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    move-object v6, v1

    goto :goto_3

    :cond_3
    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    goto :goto_4

    :cond_4
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    goto :goto_4

    :cond_5
    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    goto :goto_4

    :cond_6
    move v0, v8

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v9

    goto :goto_6

    :cond_7
    move-object v0, v1

    move-object v6, v2

    move-object v2, v4

    goto/16 :goto_3
.end method

.method private a()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "publish_actions"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, ""

    :try_start_0
    const-string v0, "method"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "method"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/facebook/Response;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->d(Lcom/facebook/Response;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/Response;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_RECEIVED_INVITE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "receivedInviteJsonForPlugin json="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private b(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 3

    const-string v0, "requestPublishPermissionForSocialQueryWithParams"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_actions"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    sget-object v0, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v1, v0}, Lcom/facebook/Session$NewPermissionsRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$NewPermissionsRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v0

    const v1, 0xea0623

    invoke-virtual {v0, v1}, Lcom/facebook/Session$NewPermissionsRequest;->setRequestCode(I)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    return-void
.end method

.method static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/SessionState;->values()[Lcom/facebook/SessionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/facebook/Response;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->e(Lcom/facebook/Response;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/facebook/Response;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_USER_PROFILE_IMAGE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "userProfileImageForPlugin json="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "url"

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic c()[I
    .locals 3

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b:[I

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
    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b:[I

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

.method static synthetic d(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/facebook/Response;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b(Lcom/facebook/Response;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/facebook/Response;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_FRIENDS:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

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

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "friends"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "friendsJsonForPlugin json="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_1
    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "friends"

    invoke-direct {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/facebook/Response;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->c(Lcom/facebook/Response;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/facebook/Response;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_INVITATION_LIST:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invitationListJsonForPlugin json="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_1
    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Lcom/facebook/Response;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "users"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static plugin()Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;
    .locals 3

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "R.string.applicationId"

    invoke-static {v0, v2}, Lcom/com2us/peppermint/util/PeppermintResource;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    invoke-direct {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;-><init>()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 2

    const-string v0, "connect!"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/com2us/peppermint/socialextension/k;

    invoke-direct {v1, p0, v0}, Lcom/com2us/peppermint/socialextension/k;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    const-string v0, "disconnect!"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/facebook/Session$Builder;

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "disconnect close session error!!"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook"

    return-object v0
.end method

.method public handleFBSessionStateChangeWithSession(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleFBSessionStateChangeWithSession session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lcom/com2us/peppermint/PeppermintCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_QUERY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v0, v1}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    iput-boolean v4, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b:Z

    iput-object v3, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lcom/com2us/peppermint/PeppermintCallback;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->handleAuthCancel(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->handleAuthError(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    if-ne p2, v0, :cond_4

    invoke-direct {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0, v0, v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    :goto_2
    iput-boolean v4, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b:Z

    iput-object v3, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lcom/com2us/peppermint/PeppermintCallback;

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_QUERY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "params"

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const-string v2, "Permission denied."

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v0, v1}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->doWork()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public isAuthorized(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 3

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "is_authorized"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_IS_AUTHORIZED:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {p1, v1}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    return-void

    :cond_1
    :try_start_1
    const-string v0, "is_authorized"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public isConnected()Z
    .locals 1

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Z
    .locals 2

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->c()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public logout(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 3

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "result"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_LOGOUT:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {p1, v1}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->disconnect()V

    const-string v0, "result"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public queryWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 1

    const-string v0, "queryWithParams"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b:Z

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0, p1, p2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0
.end method

.method public requestFriendsWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 2

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/com2us/peppermint/socialextension/n;

    invoke-direct {v1, p0, p1}, Lcom/com2us/peppermint/socialextension/n;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestInvitationListWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 2

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/com2us/peppermint/socialextension/p;

    invoke-direct {v1, p0, p1}, Lcom/com2us/peppermint/socialextension/p;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestInviteDialog(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 4

    invoke-static {p1}, Lcom/com2us/peppermint/util/PeppermintUtil;->getBundleFrojObj(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "to"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "to"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    const-string v2, "filters"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "filters"

    const-string v3, "app_non_users"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lcom/com2us/peppermint/socialextension/e;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/com2us/peppermint/socialextension/e;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Landroid/app/Activity;Landroid/os/Bundle;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestReceivedInvite(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "limit"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "limit"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v0, :cond_0

    const-string v2, "limit"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    new-instance v2, Lcom/com2us/peppermint/socialextension/g;

    invoke-direct {v2, p0, v0, p2}, Lcom/com2us/peppermint/socialextension/g;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;ILcom/com2us/peppermint/PeppermintCallback;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public requestUserMeWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 2

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/com2us/peppermint/socialextension/l;

    invoke-direct {v1, p0, p1}, Lcom/com2us/peppermint/socialextension/l;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestUserProfileImage(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 5

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    :try_start_1
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type"

    sget-object v4, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_USER_PROFILE_IMAGE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v4}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "error_code"

    const/16 v4, 0x7d3

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "error_msg"

    const-string v4, "\'user_id\' field is null"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p2, v2}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :cond_1
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_2
    new-instance v2, Lcom/com2us/peppermint/socialextension/i;

    invoke-direct {v2, p0, v0, p2}, Lcom/com2us/peppermint/socialextension/i;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Ljava/lang/String;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public requestUserTokenWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "token"

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appid"

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "service"

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->getServiceName()Ljava/lang/String;

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
    .locals 3

    invoke-static {p1}, Lcom/com2us/peppermint/util/PeppermintUtil;->getBundleFrojObj(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/com2us/peppermint/socialextension/v;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/com2us/peppermint/socialextension/v;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Landroid/app/Activity;Landroid/os/Bundle;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendAppMessageWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 3

    invoke-static {p1}, Lcom/com2us/peppermint/util/PeppermintUtil;->getBundleFrojObj(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/com2us/peppermint/socialextension/t;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/com2us/peppermint/socialextension/t;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Landroid/app/Activity;Landroid/os/Bundle;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendBusinessModel(Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Lcom/com2us/peppermint/PeppermintCallback;)V

    return-void
.end method

.method public shareAppActivityWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 2

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/com2us/peppermint/socialextension/r;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/com2us/peppermint/socialextension/r;-><init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lorg/json/JSONObject;Landroid/app/Activity;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public userFromResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "uid"

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "id"

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "name"

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "picture"

    const-string v2, "picture"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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
