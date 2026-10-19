.class public abstract Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static synthetic a:[I


# instance fields
.field private a:Lcom/com2us/peppermint/PeppermintCallback;

.field private a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field private a:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/PeppermintCallback;

    return-void
.end method

.method private a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;Ljava/lang/Exception;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-static {p2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, 0x7d2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string v0, "error_msg"

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:[I

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
    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:[I

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

.method private b(Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;Ljava/lang/Exception;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-static {p2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, 0x7d4

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string v0, "error_msg"

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public abstract connect()V
.end method

.method public connectForAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectForAction action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " jObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-boolean v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this.action is null!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->getType()Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->isSupportedAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->exceptionConnectCheck(Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->getType()Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->performAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->getType()Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->connect()V

    goto :goto_1
.end method

.method public abstract disconnect()V
.end method

.method public doWork()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "doWork"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-virtual {p0, v0, v1, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->performAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    :cond_0
    iput-object v3, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    iput-object v3, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/PeppermintCallback;

    return-void
.end method

.method public exceptionConnectCheck(Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;)Z
    .locals 2

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->getType()Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

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
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public genderCodeFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "male"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "M"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "female"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "F"

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method protected handleAuthCancel(Ljava/lang/Exception;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "handleAuthCancel"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/PeppermintCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-direct {p0, p0, v0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->b(Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    :cond_1
    iput-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    iput-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/PeppermintCallback;

    goto :goto_0
.end method

.method protected handleAuthError(Ljava/lang/Exception;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "handleAuthError"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/PeppermintCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-direct {p0, p0, v0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    :cond_1
    iput-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    iput-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/PeppermintCallback;

    goto :goto_0
.end method

.method public abstract isAuthorized(Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isSupportedAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Z
.end method

.method public isWorking()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract logout(Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method protected pepperStringOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_1

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public performAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 2

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->requestUserMeWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->requestUserTokenWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->requestFriendsWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->requestInvitationListWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->shareAppActivityWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->sendAppMessageWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->sendAppInvitationWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->queryWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->sendBusinessModel(Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->requestInviteDialog(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->requestReceivedInvite(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->requestUserProfileImage(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->isAuthorized(Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->logout(Lcom/com2us/peppermint/PeppermintCallback;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public abstract queryWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method public abstract requestFriendsWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method public abstract requestInvitationListWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method public abstract requestInviteDialog(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method public abstract requestReceivedInvite(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method public abstract requestUserMeWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method public abstract requestUserProfileImage(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method public abstract requestUserTokenWithResponseCallback(Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method public abstract sendAppInvitationWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method public abstract sendAppMessageWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method public abstract sendBusinessModel(Lcom/com2us/peppermint/PeppermintCallback;)V
.end method

.method public abstract shareAppActivityWithParams(Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
.end method
