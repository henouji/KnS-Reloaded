.class public final enum Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PEPPERMINT_SOCIAL_ACTION_BUSINESS_MODEL:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_INVITE_DIALOG:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_IS_AUTHORIZED:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_LOGOUT:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_NONE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_QUERY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_RECEIVED_INVITE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_REQUEST_FRIENDS:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_REQUEST_INVITATION_LIST:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_ME:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_TOKEN:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_SEND_APP_INVITATION:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_SEND_APP_MESSAGE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_SHARE_APP_ACTIVITY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field public static final enum PEPPERMINT_SOCIAL_ACTION_USER_PROFILE_IMAGE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

.field private static final synthetic a:[Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_NONE"

    invoke-direct {v0, v1, v3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_NONE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_ME"

    invoke-direct {v0, v1, v4}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_ME:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_REQUEST_FRIENDS"

    invoke-direct {v0, v1, v5}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_FRIENDS:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_REQUEST_INVITATION_LIST"

    invoke-direct {v0, v1, v6}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_INVITATION_LIST:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_SHARE_APP_ACTIVITY"

    invoke-direct {v0, v1, v7}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SHARE_APP_ACTIVITY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_SEND_APP_MESSAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SEND_APP_MESSAGE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_SEND_APP_INVITATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SEND_APP_INVITATION:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_QUERY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_QUERY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_BUSINESS_MODEL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_BUSINESS_MODEL:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_INVITE_DIALOG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_INVITE_DIALOG:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_RECEIVED_INVITE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_RECEIVED_INVITE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_USER_PROFILE_IMAGE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_USER_PROFILE_IMAGE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_TOKEN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_TOKEN:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_IS_AUTHORIZED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_IS_AUTHORIZED:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const-string v1, "PEPPERMINT_SOCIAL_ACTION_LOGOUT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_LOGOUT:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_NONE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_ME:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_FRIENDS:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_INVITATION_LIST:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SHARE_APP_ACTIVITY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SEND_APP_MESSAGE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_SEND_APP_INVITATION:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_QUERY:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_BUSINESS_MODEL:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_INVITE_DIALOG:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_RECEIVED_INVITE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_USER_PROFILE_IMAGE:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_TOKEN:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_IS_AUTHORIZED:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_LOGOUT:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->a:[Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;
    .locals 1

    const-class v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    return-object v0
.end method

.method public static values()[Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->a:[Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    array-length v1, v0

    new-array v2, v1, [Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
