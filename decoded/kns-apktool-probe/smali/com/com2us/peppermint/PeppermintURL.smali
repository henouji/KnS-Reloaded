.class public Lcom/com2us/peppermint/PeppermintURL;
.super Ljava/lang/Object;


# static fields
.field public static final PEPPERMINT_AUTH_PATH:Ljava/lang/String; = "auth"

.field public static final PEPPERMINT_CLOSE_URI:Ljava/lang/String; = "c2shub://close"

.field public static final PEPPERMINT_COOKIE_URL:Ljava/lang/String;

.field public static final PEPPERMINT_DEVELOPMENT_API_BASE_URL:Ljava/lang/String; = "http://dev.api.com2us.com/"

.field public static final PEPPERMINT_DEVELOPMENT_WEB_BASE_URL:Ljava/lang/String; = "http://dev.hub.com2us.com/"

.field public static final PEPPERMINT_GET_ADDRESSBOOK_URI:Ljava/lang/String; = "c2shub://getaddressbook"

.field public static final PEPPERMINT_GET_PHONENUMBER_URI:Ljava/lang/String; = "c2shub://getphonenumber"

.field public static final PEPPERMINT_GET_PICTURE_URI:Ljava/lang/String; = "c2shub://getpicture"

.field public static final PEPPERMINT_GUEST_ACQUIRE_UID_PATH:Ljava/lang/String; = "guest"

.field public static final PEPPERMINT_GUEST_ACQUIRE_UID_URI:Ljava/lang/String; = "c2shub://guest/candidate_uid"

.field public static final PEPPERMINT_GUEST_BIND_PATH:Ljava/lang/String; = "guest/bind"

.field public static final PEPPERMINT_GUEST_BIND_URI:Ljava/lang/String; = "c2shub://guest/bind"

.field public static final PEPPERMINT_LAUNCH_APP_URI:Ljava/lang/String; = "c2shub://launchapp"

.field public static final PEPPERMINT_LOGIN_URI:Ljava/lang/String; = "c2shub://login"

.field public static final PEPPERMINT_LOGOUT_PATH:Ljava/lang/String; = "auth/logout_proc"

.field public static final PEPPERMINT_LOGOUT_URI:Ljava/lang/String; = "c2shub://logout"

.field public static final PEPPERMINT_OPEN_BROWSER_URI:Ljava/lang/String; = "c2shub://openbrowser"

.field public static final PEPPERMINT_PRODUCTION_API_BASE_URL:Ljava/lang/String; = "http://api.com2us.com/"

.field public static final PEPPERMINT_PRODUCTION_WEB_BASE_URL:Ljava/lang/String; = "http://hub.com2us.com/"

.field public static final PEPPERMINT_SCHEME:Ljava/lang/String; = "c2shub"

.field public static final PEPPERMINT_SEND_SMS_URI:Ljava/lang/String; = "c2shub://sendsms"

.field public static final PEPPERMINT_SOCIAL_IS_AUTHORIZED:Ljava/lang/String; = "c2shub://social/is_authorized"

.field public static final PEPPERMINT_SOCIAL_LOGOUT:Ljava/lang/String; = "c2shub://social/logout"

.field public static final PEPPERMINT_SOCIAL_REQUEST_FRIENDS:Ljava/lang/String; = "c2shub://social/request_friends"

.field public static final PEPPERMINT_SOCIAL_REQUEST_USER_PROFILE:Ljava/lang/String; = "c2shub://social/request_user_profile"

.field public static final PEPPERMINT_SOCIAL_REQUEST_USER_TOKEN:Ljava/lang/String; = "c2shub://social/request_user_token"

.field public static final PEPPERMINT_STAGING_API_BASE_URL:Ljava/lang/String; = "http://test.api.com2us.com/"

.field public static final PEPPERMINT_STAGING_WEB_BASE_URL:Ljava/lang/String; = "http://test.hub.com2us.com/"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const-string v0, "com2us.com"

    :goto_0
    sput-object v0, Lcom/com2us/peppermint/PeppermintURL;->PEPPERMINT_COOKIE_URL:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, ".com2us.com"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
