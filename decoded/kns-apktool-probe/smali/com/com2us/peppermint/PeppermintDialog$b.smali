.class Lcom/com2us/peppermint/PeppermintDialog$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/peppermint/PeppermintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/PeppermintDialog;


# direct methods
.method private constructor <init>(Lcom/com2us/peppermint/PeppermintDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/PeppermintDialog$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/PeppermintDialog$b;-><init>(Lcom/com2us/peppermint/PeppermintDialog;)V

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/PeppermintDialog$b;)Lcom/com2us/peppermint/PeppermintDialog;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PeppermintWebViewClient onPageFinished url="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v0}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v0}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v0}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)V

    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-array v0, v1, [Ljava/lang/String;

    move v0, v1

    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v0}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/com2us/peppermint/LocalStorage;->setHashValueWithKey(Landroid/content/Context;Ljava/util/HashMap;)Z

    goto :goto_0

    :cond_2
    aget-object v4, v2, v0

    const-string v5, "="

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v1

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onPageFinished parts[0] starts with spaceBar and its value is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    :cond_3
    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PeppermintWebViewClient onPageStarted url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v0}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError errorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v0}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/com2us/peppermint/x;

    invoke-direct {v1, p0, p3}, Lcom/com2us/peppermint/x;-><init>(Lcom/com2us/peppermint/PeppermintDialog$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v0}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PeppermintWebViewClient shouldOverrideUrlLoading url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/com2us/peppermint/Dictionary;->queryDictionary(Ljava/lang/String;)Lcom/com2us/peppermint/Dictionary;

    move-result-object v2

    const-string v3, "c2shub://launchapp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    :goto_0
    return v0

    :cond_0
    const-string v3, "c2shub://login"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->b(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v3, "c2shub://sendsms"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->c(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto :goto_0

    :cond_2
    const-string v3, "c2shub://guest/candidate_uid"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->d(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto :goto_0

    :cond_3
    const-string v3, "c2shub://guest/bind"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->e(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto :goto_0

    :cond_4
    const-string v3, "c2shub://logout"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->f(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto :goto_0

    :cond_5
    const-string v3, "c2shub://close"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->g(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto :goto_0

    :cond_6
    const-string v3, "c2shub://getpicture"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->h(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto :goto_0

    :cond_7
    const-string v3, "c2shub://openbrowser"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->i(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto :goto_0

    :cond_8
    const-string v3, "c2shub://getaddressbook"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->j(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "c2shub://getphonenumber"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->k(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "c2shub://social/request_user_profile"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->l(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "c2shub://social/request_user_token"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->m(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "c2shub://social/request_friends"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->n(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto/16 :goto_0

    :cond_d
    const-string v3, "c2shub://social/is_authorized"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->o(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto/16 :goto_0

    :cond_e
    const-string v3, "c2shub://social/logout"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3, v2}, Lcom/com2us/peppermint/PeppermintDialog;->p(Lcom/com2us/peppermint/PeppermintDialog;Lcom/com2us/peppermint/Dictionary;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "https"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_10
    const-string v2, "link/download?url="

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "m.com2us.com/r?c="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "m.withhive.com/link/s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "m.com2us.com/b?"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v6, :cond_11

    if-ne v4, v6, :cond_11

    if-ne v5, v6, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PeppermintWebViewClient shouldOverrideUrlLoading downloadURL="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v2}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    iget-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v2}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/com2us/peppermint/u;

    invoke-direct {v3, p0}, Lcom/com2us/peppermint/u;-><init>(Lcom/com2us/peppermint/PeppermintDialog$b;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_11
    const-string v2, "play.google.com/store/apps"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, ".apk"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-ne v2, v6, :cond_12

    if-eq v3, v6, :cond_13

    :cond_12
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :try_start_4
    iget-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v2}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/com2us/peppermint/v;

    invoke-direct {v3, p0}, Lcom/com2us/peppermint/v;-><init>(Lcom/com2us/peppermint/PeppermintDialog$b;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v2}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Lcom/com2us/peppermint/PeppermintDialog$a;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/com2us/peppermint/PeppermintDialog$a;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const-string v2, "about:blank"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v2

    if-eqz v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_15
    :try_start_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v3}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_3
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    iget-object v2, p0, Lcom/com2us/peppermint/PeppermintDialog$b;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v2}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/com2us/peppermint/w;

    invoke-direct {v3, p0}, Lcom/com2us/peppermint/w;-><init>(Lcom/com2us/peppermint/PeppermintDialog$b;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method
