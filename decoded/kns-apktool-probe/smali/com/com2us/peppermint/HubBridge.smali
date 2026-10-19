.class public Lcom/com2us/peppermint/HubBridge;
.super Ljava/lang/Object;


# static fields
.field public static _glSurfaceView:Landroid/opengl/GLSurfaceView;

.field private static a:Lcom/com2us/peppermint/HubCallbackListener;

.field private static a:Lcom/com2us/peppermint/Peppermint;

.field public static mainActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    sput-object v0, Lcom/com2us/peppermint/HubBridge;->mainActivity:Landroid/app/Activity;

    sput-object v0, Lcom/com2us/peppermint/HubBridge;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v0, Lcom/com2us/peppermint/a;

    invoke-direct {v0}, Lcom/com2us/peppermint/a;-><init>()V

    sput-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/HubCallbackListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HubCallbackSetListener(Lcom/com2us/peppermint/HubCallbackListener;)V
    .locals 0

    sput-object p0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/HubCallbackListener;

    return-void
.end method

.method public static HubCallbackWithJSON(Lorg/json/JSONObject;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HubCallbackWithJSON json="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/HubCallbackListener;

    new-instance v1, Lcom/com2us/peppermint/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/com2us/peppermint/c;-><init>(Lorg/json/JSONObject;II)V

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/HubCallbackListener;->onCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(II)Lcom/com2us/peppermint/PeppermintCallback;
    .locals 1

    const-string v0, "getCallbackNative"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/com2us/peppermint/b;

    invoke-direct {v0, p0, p1}, Lcom/com2us/peppermint/b;-><init>(II)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/com2us/peppermint/HubBridge;->hubCallbackWithJSON(Ljava/lang/String;II)V

    return-void
.end method

.method public static asyncRequest(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "asyncRequest requestName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const-string v0, "guest/create"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :check_local_guest_auth

    const-string v0, "{\"error_code\":0,\"hub_did\":\"local-device\",\"hub_guest_uid\":\"local-guest-0001\"}"

    invoke-static {v0, p2, p3}, Lcom/com2us/peppermint/HubBridge;->hubCallbackWithJSON(Ljava/lang/String;II)V

    const/4 v0, 0x1

    return v0

    :check_local_guest_auth
    const-string v0, "guest/auth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :network_async_request

    const-string v0, "{\"error_code\":0,\"is_auth\":true}"

    invoke-static {v0, p2, p3}, Lcom/com2us/peppermint/HubBridge;->hubCallbackWithJSON(Ljava/lang/String;II)V

    const/4 v0, 0x1

    return v0

    :network_async_request

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    if-nez v0, :cond_0

    const/16 v0, -0x10

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    sget-object v1, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-static {p2, p3}, Lcom/com2us/peppermint/HubBridge;->a(II)Lcom/com2us/peppermint/PeppermintCallback;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/com2us/peppermint/Peppermint;->asyncRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v0, 0x4b1

    goto :goto_0
.end method

.method public static auth(II)I
    .locals 2

    const-string v0, "auth"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    if-nez v0, :cond_0

    const/16 v0, -0x10

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-static {p0, p1}, Lcom/com2us/peppermint/HubBridge;->a(II)Lcom/com2us/peppermint/PeppermintCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/Peppermint;->auth(Lcom/com2us/peppermint/PeppermintCallback;)I

    move-result v0

    goto :goto_0
.end method

.method private static native callCSHubInitialize()V
.end method

.method public static getIsPGS()I
    .locals 1

    const-string v0, "getIsPGS"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/com2us/peppermint/Peppermint;->getIsPGS()I

    move-result v0

    goto :goto_0
.end method

.method public static getPeppermint()Lcom/com2us/peppermint/Peppermint;
    .locals 1

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    return-object v0
.end method

.method public static guestAcquireUid(II)I
    .locals 2

    const-string v0, "guestAcquireUid"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    if-nez v0, :cond_0

    const/16 v0, -0x10

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-static {p0, p1}, Lcom/com2us/peppermint/HubBridge;->a(II)Lcom/com2us/peppermint/PeppermintCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/Peppermint;->guestAcquireUid(Lcom/com2us/peppermint/PeppermintCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public static guestBind(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "guestBind giestUid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " candidateUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    if-nez v0, :cond_0

    const/16 v0, -0x10

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-static {p2, p3}, Lcom/com2us/peppermint/HubBridge;->a(II)Lcom/com2us/peppermint/PeppermintCallback;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/com2us/peppermint/Peppermint;->guestBind(Ljava/lang/String;Ljava/lang/String;Lcom/com2us/peppermint/PeppermintCallback;)I

    move-result v0

    goto :goto_0
.end method

.method private static native hubCallbackWithJSON(Ljava/lang/String;II)V
.end method

.method public static hubInitializeJNI(Landroid/app/Activity;)V
    .locals 0

    sput-object p0, Lcom/com2us/peppermint/HubBridge;->mainActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/com2us/peppermint/HubBridge;->callCSHubInitialize()V

    return-void
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialize appId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gameIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "useTestSever"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/com2us/peppermint/Peppermint;

    sget-object v1, Lcom/com2us/peppermint/HubBridge;->mainActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/com2us/peppermint/Peppermint;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v0, p0, p1, p2}, Lcom/com2us/peppermint/Peppermint;->initialize(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0
.end method

.method public static logout(II)I
    .locals 2

    const-string v0, "logout"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    if-nez v0, :cond_0

    const/16 v0, -0x10

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-static {p0, p1}, Lcom/com2us/peppermint/HubBridge;->a(II)Lcom/com2us/peppermint/PeppermintCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/Peppermint;->logout(Lcom/com2us/peppermint/PeppermintCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public static pgsLoginProc(II)I
    .locals 2

    const-string v0, "pgsLoginProc"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    if-nez v0, :cond_0

    const/16 v0, -0x10

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-static {p0, p1}, Lcom/com2us/peppermint/HubBridge;->a(II)Lcom/com2us/peppermint/PeppermintCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/Peppermint;->pgsLoginProc(Lcom/com2us/peppermint/PeppermintCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public static setGLSurfaceViewForCallback(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    sput-object p0, Lcom/com2us/peppermint/HubBridge;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method public static setOption(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOption allowedKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    if-nez v0, :cond_0

    const/16 v0, -0x10

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v0, p0, p1}, Lcom/com2us/peppermint/Peppermint;->setOption(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static showDialog(Ljava/lang/String;II)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showDialog subPath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    if-nez v0, :cond_0

    const/16 v0, -0x10

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-static {p1, p2}, Lcom/com2us/peppermint/HubBridge;->a(II)Lcom/com2us/peppermint/PeppermintCallback;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/com2us/peppermint/Peppermint;->showDialog(Ljava/lang/String;Lcom/com2us/peppermint/PeppermintCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public static socialRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hubSocialAction service="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    if-nez v0, :cond_0

    const/16 v0, -0x10

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    sget-object v1, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-static {p3, p4}, Lcom/com2us/peppermint/HubBridge;->a(II)Lcom/com2us/peppermint/PeppermintCallback;

    move-result-object v2

    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/com2us/peppermint/Peppermint;->socialRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v0, 0x4b1

    goto :goto_0
.end method

.method public static uninitialize()I
    .locals 1

    const-string v0, "uninitialize"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/HubBridge;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->uninitialize()I

    move-result v0

    goto :goto_0
.end method
