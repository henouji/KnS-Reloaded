.class public Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;
.super Ljava/lang/Object;


# static fields
.field private static synthetic a:[I


# instance fields
.field private a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->a:[I

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
    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->a:[I

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

.method public static actionTypeFromName(Ljava/lang/String;)Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;
    .locals 1

    const-string v0, "social/request_user_profile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_ME:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "social/request_user_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_TOKEN:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0

    :cond_1
    const-string v0, "social/request_friends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_FRIENDS:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0

    :cond_2
    const-string v0, "social/request_invitation_list"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_INVITATION_LIST:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0

    :cond_3
    const-string v0, "social/share_app_activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SHARE_APP_ACTIVITY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0

    :cond_4
    const-string v0, "social/send_app_message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SEND_APP_MESSAGE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0

    :cond_5
    const-string v0, "social/send_app_invitation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SEND_APP_INVITATION:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0

    :cond_6
    const-string v0, "social/query"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_QUERY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0

    :cond_7
    const-string v0, "social/business_model"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_BUSINESS_MODEL:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0

    :cond_8
    const-string v0, "social/invite_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_INVITE_DIALOG:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0

    :cond_9
    const-string v0, "social/received_invite"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_RECEIVED_INVITE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0

    :cond_a
    const-string v0, "social/user_profile_image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_USER_PROFILE_IMAGE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0

    :cond_b
    const-string v0, "social/is_authorized"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_IS_AUTHORIZED:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto/16 :goto_0

    :cond_c
    const-string v0, "social/logout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_LOGOUT:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_NONE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto/16 :goto_0
.end method

.method public static actionWithName(Ljava/lang/String;)Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "actionWithName name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->actionTypeFromName(Ljava/lang/String;)Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    move-result-object v1

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_NONE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;

    invoke-direct {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;-><init>()V

    iput-object p0, v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0
.end method

.method public static actionWithType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "actionWithType type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;

    invoke-direct {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;-><init>()V

    iput-object v1, v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->a:Ljava/lang/String;

    iput-object p0, v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    goto :goto_0
.end method

.method public static nameFromType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "social/request_user_profile"

    goto :goto_0

    :pswitch_1
    const-string v0, "social/request_user_token"

    goto :goto_0

    :pswitch_2
    const-string v0, "social/request_friends"

    goto :goto_0

    :pswitch_3
    const-string v0, "social/request_invitation_list"

    goto :goto_0

    :pswitch_4
    const-string v0, "social/share_app_activity"

    goto :goto_0

    :pswitch_5
    const-string v0, "social/send_app_message"

    goto :goto_0

    :pswitch_6
    const-string v0, "social/send_app_invitation"

    goto :goto_0

    :pswitch_7
    const-string v0, "social/query"

    goto :goto_0

    :pswitch_8
    const-string v0, "social/business_model"

    goto :goto_0

    :pswitch_9
    const-string v0, "social/invite_dialog"

    goto :goto_0

    :pswitch_a
    const-string v0, "social/received_invite"

    goto :goto_0

    :pswitch_b
    const-string v0, "social/user_profile_image"

    goto :goto_0

    :pswitch_c
    const-string v0, "social/is_authorized"

    goto :goto_0

    :pswitch_d
    const-string v0, "social/logout"

    goto :goto_0

    nop

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


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    return-object v0
.end method
