.class public Lcom/com2us/peppermint/PeppermintDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/peppermint/PeppermintDialog$a;,
        Lcom/com2us/peppermint/PeppermintDialog$b;
    }
.end annotation


# static fields
.field static final a:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/net/Uri;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/ProgressBar;

.field private a:Lcom/com2us/peppermint/Dictionary;

.field private a:Lcom/com2us/peppermint/PeppermintAuthToken;

.field private a:Lcom/com2us/peppermint/PeppermintCallback;

.field private a:Lcom/com2us/peppermint/PeppermintDialog$a;

.field private a:Lcom/com2us/peppermint/PeppermintDialogCallback;

.field private a:Ljava/lang/Object;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Landroid/net/Uri;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/com2us/peppermint/Peppermint;Ljava/lang/String;Ljava/lang/String;ZLcom/com2us/peppermint/PeppermintCallback;Lcom/com2us/peppermint/PeppermintDialogCallback;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1030009

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintAuthToken;

    iput-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/net/Uri;

    iput-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog;->b:Landroid/net/Uri;

    iput-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PeppermintDialog serverBaseURL="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isViewInvisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/com2us/peppermint/PeppermintDialog;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintCallback;

    iput-object p6, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialogCallback;

    iput-boolean p4, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Z

    iput-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->initSubViews()V

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/peppermint/PeppermintDialog;)Lcom/com2us/peppermint/PeppermintDialog$a;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->b:Ljava/lang/String;

    const-string v1, "auth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "auth"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->b:Ljava/lang/String;

    const-string v1, "auth/logout_proc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "logout"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->b:Ljava/lang/String;

    const-string v1, "guest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "guest/acquire_uid"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->b:Ljava/lang/String;

    const-string v1, "guest/bind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "guest/bind"

    goto :goto_0

    :cond_3
    const-string v0, "dialog"

    goto :goto_0
.end method

.method static synthetic a(Lcom/com2us/peppermint/PeppermintDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "runCloseCallback"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintCallback;

    if-nez v0, :cond_0

    const-string v0, "runCloseCallback closeCallback is null"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/Dictionary;

    if-eqz v0, :cond_1

    const-string v0, "runCloseCallback closeCallback with params"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/com2us/peppermint/PeppermintCallbackJSON;

    invoke-direct {v0}, Lcom/com2us/peppermint/PeppermintCallbackJSON;-><init>()V

    invoke-direct {p0}, Lcom/com2us/peppermint/PeppermintDialog;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/Dictionary;

    invoke-virtual {v0, v1, v2}, Lcom/com2us/peppermint/PeppermintCallbackJSON;->getJSON(Ljava/lang/String;Lcom/com2us/peppermint/Dictionary;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    :goto_1
    iput-object v4, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintCallback;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v0, "runCloseCallback closeCallback with error"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/com2us/peppermint/PeppermintCallbackJSON;

    invoke-direct {v0}, Lcom/com2us/peppermint/PeppermintCallbackJSON;-><init>()V

    invoke-direct {p0}, Lcom/com2us/peppermint/PeppermintDialog;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d0

    const-string v3, "system error"

    invoke-virtual {v0, v1, v2, v3}, Lcom/com2us/peppermint/PeppermintCallbackJSON;->getJSON(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v0, "runCloseCallback closeCallback Dialog closed"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/com2us/peppermint/PeppermintCallbackJSON;

    invoke-direct {v0}, Lcom/com2us/peppermint/PeppermintCallbackJSON;-><init>()V

    invoke-direct {p0}, Lcom/com2us/peppermint/PeppermintDialog;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d1

    const-string v3, "Dialog closed."

    invoke-virtual {v0, v1, v2, v3}, Lcom/com2us/peppermint/PeppermintCallbackJSON;->getJSON(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method private a(Lcom/com2us/peppermint/Dictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleLaunchAppScheme params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "appid"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "appid"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "://"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "downloadurl"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "downloadurl"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/peppermint/n;

    invoke-direct {v1, p0}, Lcom/com2us/peppermint/n;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/com2us/peppermint/PeppermintDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/com2us/peppermint/PeppermintDialog;->b()V

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/PeppermintDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Z

    return v0
.end method

.method private b()V
    .locals 2

    const-string v0, "showWebView"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private b(Lcom/com2us/peppermint/Dictionary;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSendSMSScheme params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const-string v1, ""

    if-eqz p1, :cond_0

    const-string v0, "body"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "sms_body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/peppermint/o;

    invoke-direct {v1, p0}, Lcom/com2us/peppermint/o;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->c(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load serverURL"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/com2us/peppermint/PeppermintDialog;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/com2us/peppermint/PeppermintDialog;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "guest/acquire_uid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    const-string v0, "com.com2us.peppermint.socialextension.PeppermintSocialPluginPGSHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->get_instance()Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->getIsPGS()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->getUid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&uid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&logouthistory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->getLogoutHistory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&gaccountnum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->getAccountNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    iget-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog;->c:Ljava/lang/String;

    const-string v3, "BASE64"

    invoke-static {v0, v3}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/com2us/peppermint/PeppermintDialog$a;->postUrl(Ljava/lang/String;[B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load postData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/PeppermintDialog$a;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Lcom/com2us/peppermint/Dictionary;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleLoginScheme params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/com2us/peppermint/PeppermintAuthToken;->authTokenWithDictionary(Lcom/com2us/peppermint/Dictionary;)Lcom/com2us/peppermint/PeppermintAuthToken;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintAuthToken;

    iput-object p1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/Dictionary;

    if-eqz p1, :cond_0

    const-string v0, "servertoast"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "servertoast"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/peppermint/p;

    invoke-direct {v1, p0}, Lcom/com2us/peppermint/p;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "redirect_uri"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "redirect_uri"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->dismiss()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->b(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private d(Lcom/com2us/peppermint/Dictionary;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleLogoutScheme params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->isOnlyCookieClear()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->sharedInstance()Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->getPlugins()Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "facebook"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

    const-string v3, "googleplus"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->disconnect()V

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->disconnect()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintAuthToken;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    sget-object v0, Lcom/com2us/peppermint/PeppermintURL;->PEPPERMINT_COOKIE_URL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->get_instance()Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->get_instance()Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->disconnectEx()V

    goto :goto_0

    :cond_3
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_2
    if-lt v0, v4, :cond_4

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->setOnlycookieclear(Z)V

    iput-object p1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/Dictionary;

    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->dismiss()V

    goto :goto_1

    :cond_4
    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-lez v6, :cond_5

    aget-object v6, v5, v2

    const-string v7, "peppermint"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v5, v5, v2

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

    sget-object v6, Lcom/com2us/peppermint/PeppermintURL;->PEPPERMINT_COOKIE_URL:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static synthetic d(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->o(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private e(Lcom/com2us/peppermint/Dictionary;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleCloseScheme params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/Dictionary;

    const-string v0, "servertoast"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "servertoast"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/peppermint/q;

    invoke-direct {v1, p0}, Lcom/com2us/peppermint/q;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->dismiss()V

    return-void
.end method

.method static synthetic e(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->p(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private f(Lcom/com2us/peppermint/Dictionary;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleGetPictureScheme params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const-string v0, "gallery"

    if-eqz p1, :cond_1

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gallery"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    const-string v1, "camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tmp_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/net/Uri;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "output"

    iget-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    const v2, 0xca001

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    const v2, 0xa1b002

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->d(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private g(Lcom/com2us/peppermint/Dictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleGetAddressBookScheme params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/com2us/peppermint/r;

    invoke-direct {v2, p0, v0}, Lcom/com2us/peppermint/r;-><init>(Lcom/com2us/peppermint/PeppermintDialog;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    const-string v0, "phonenumber"

    goto :goto_0
.end method

.method static synthetic g(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->e(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private h(Lcom/com2us/peppermint/Dictionary;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleGetPhoneNumberScheme params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    const-string v1, ""

    :try_start_0
    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:window[\'native\'].getPhoneNumberCallback(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v1, v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->loadUrl(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->f(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private i(Lcom/com2us/peppermint/Dictionary;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleOpenBrowserScheme params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/peppermint/s;

    invoke-direct {v1, p0}, Lcom/com2us/peppermint/s;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic i(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->i(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private j(Lcom/com2us/peppermint/Dictionary;)V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleSocialRequestFriendsScheme params="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->pluginByName(Ljava/lang/String;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "service"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, -0x65

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/com2us/peppermint/PeppermintDialog;->receiveSocialFriends(Lorg/json/JSONObject;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_FRIENDS:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->actionWithType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;

    move-result-object v0

    new-instance v3, Lcom/com2us/peppermint/g;

    invoke-direct {v3, p0}, Lcom/com2us/peppermint/g;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->connectForAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)Z

    goto :goto_2
.end method

.method static synthetic j(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->g(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private k(Lcom/com2us/peppermint/Dictionary;)V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleSocialIsAuthorizedScheme params="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->pluginByName(Ljava/lang/String;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "service"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, -0x65

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/com2us/peppermint/PeppermintDialog;->receiveSocialLogout(Lorg/json/JSONObject;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_IS_AUTHORIZED:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->actionWithType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;

    move-result-object v0

    new-instance v3, Lcom/com2us/peppermint/h;

    invoke-direct {v3, p0}, Lcom/com2us/peppermint/h;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->connectForAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)Z

    goto :goto_2
.end method

.method static synthetic k(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->h(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private l(Lcom/com2us/peppermint/Dictionary;)V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleSocialLogoutScheme params="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->pluginByName(Ljava/lang/String;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "service"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, -0x65

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/com2us/peppermint/PeppermintDialog;->receiveSocialLogout(Lorg/json/JSONObject;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_LOGOUT:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->actionWithType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;

    move-result-object v0

    new-instance v3, Lcom/com2us/peppermint/i;

    invoke-direct {v3, p0}, Lcom/com2us/peppermint/i;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->connectForAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)Z

    goto :goto_2
.end method

.method static synthetic l(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->m(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private m(Lcom/com2us/peppermint/Dictionary;)V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleSocialRequestUserProfileScheme params="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->pluginByName(Ljava/lang/String;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "service"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, -0x65

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/com2us/peppermint/PeppermintDialog;->receiveSocialUserProfile(Lorg/json/JSONObject;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_ME:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->actionWithType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;

    move-result-object v0

    new-instance v3, Lcom/com2us/peppermint/j;

    invoke-direct {v3, p0}, Lcom/com2us/peppermint/j;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->connectForAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)Z

    goto :goto_2
.end method

.method static synthetic m(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->n(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private n(Lcom/com2us/peppermint/Dictionary;)V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleSocialRequestUserTokenScheme params="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->pluginByName(Ljava/lang/String;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "service"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, -0x65

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/com2us/peppermint/PeppermintDialog;->receiveSocialUserToken(Lorg/json/JSONObject;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;->PEPPERMINT_SOCIAL_ACTION_REQUEST_USER_TOKEN:Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;

    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;->actionWithType(Lcom/com2us/peppermint/socialextension/PeppermintSocialActionType;)Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;

    move-result-object v0

    new-instance v3, Lcom/com2us/peppermint/k;

    invoke-direct {v3, p0}, Lcom/com2us/peppermint/k;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->connectForAction(Lcom/com2us/peppermint/socialextension/PeppermintSocialAction;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)Z

    goto :goto_2
.end method

.method static synthetic n(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->j(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private o(Lcom/com2us/peppermint/Dictionary;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleGuestAquireUidScheme params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/Dictionary;

    if-eqz p1, :cond_0

    const-string v0, "redirect_uri"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "redirect_uri"

    invoke-virtual {p1, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->dismiss()V

    goto :goto_0
.end method

.method static synthetic o(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->k(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method

.method private p(Lcom/com2us/peppermint/Dictionary;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleGuestBindScheme params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/com2us/peppermint/PeppermintAuthToken;->authTokenWithDictionary(Lcom/com2us/peppermint/Dictionary;)Lcom/com2us/peppermint/PeppermintAuthToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintAuthToken;

    :cond_0
    iput-object p1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/Dictionary;

    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->dismiss()V

    return-void
.end method

.method static synthetic p(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->l(Lcom/com2us/peppermint/Dictionary;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dismiss isViewInvisible="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialogCallback;

    invoke-interface {v0}, Lcom/com2us/peppermint/PeppermintDialogCallback;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/com2us/peppermint/PeppermintDialog;->a()V

    return-void
.end method

.method public getAuthToken()Lcom/com2us/peppermint/PeppermintAuthToken;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintAuthToken;

    return-object v0
.end method

.method public getImageCaptureUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public getImageOutputUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    return-object v0
.end method

.method public initSubViews()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x1

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    const-string v2, "R.drawable.hub_btn_close"

    invoke-static {v1, v2}, Lcom/com2us/peppermint/util/PeppermintResource;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v0, 0x42580000    # 54.0f

    invoke-static {v5, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v1, v0

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v5, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v4, v3

    const/high16 v4, 0x44200000    # 640.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    invoke-static {v2, v1, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/com2us/peppermint/f;

    invoke-direct {v1, p0}, Lcom/com2us/peppermint/f;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x5

    invoke-direct {v1, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    const v2, 0x1010077

    invoke-direct {v0, v1, v9, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/com2us/peppermint/PeppermintDialog$a;

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/com2us/peppermint/PeppermintDialog$a;-><init>(Lcom/com2us/peppermint/PeppermintDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    sget-object v1, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/PeppermintDialog$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    new-instance v1, Lcom/com2us/peppermint/PeppermintDialog$b;

    invoke-direct {v1, p0, v9}, Lcom/com2us/peppermint/PeppermintDialog$b;-><init>(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/PeppermintDialog$b;)V

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/PeppermintDialog$a;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    new-instance v1, Lcom/com2us/peppermint/l;

    invoke-direct {v1, p0}, Lcom/com2us/peppermint/l;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/PeppermintDialog$a;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/PeppermintDialog$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v0, v5}, Lcom/com2us/peppermint/PeppermintDialog$a;->setVerticalScrollbarOverlay(Z)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v2, 0x400

    const/16 v4, 0x10

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/com2us/peppermint/m;

    invoke-direct {v2, p0}, Lcom/com2us/peppermint/m;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :goto_0
    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/com2us/peppermint/PeppermintDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v1}, Lcom/com2us/peppermint/PeppermintDialog$a;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v1}, Lcom/com2us/peppermint/PeppermintDialog$a;->goBack()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowFocusChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/com2us/peppermint/PeppermintDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected receiveSocialFriends(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiveSocialFriends json="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:window[\'native\'].putSocialFriendList(eval("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v1, v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected receiveSocialIsAuthorized(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiveIsAuthorized json="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:window[\'native\'].socialIsAuthorizedResult(eval("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v1, v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected receiveSocialLogout(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiveLogout json="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:window[\'native\'].socialLogoutResultCallback(eval("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v1, v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected receiveSocialUserProfile(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiveSocialUserProfile json="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:window[\'native\'].putSocialUserData(eval("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v1, v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected receiveSocialUserToken(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiveSocialUserToken json="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:window[\'native\'].putSocialUserToken(eval("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    invoke-virtual {v1, v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setImageCaptureUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Landroid/net/Uri;

    return-void
.end method

.method public setImageOutputUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/PeppermintDialog;->b:Landroid/net/Uri;

    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const-string v0, "show"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/com2us/peppermint/PeppermintDialog;->c()V

    iget-boolean v0, p0, Lcom/com2us/peppermint/PeppermintDialog;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/com2us/peppermint/PeppermintDialog;->b()V

    :cond_0
    return-void
.end method
