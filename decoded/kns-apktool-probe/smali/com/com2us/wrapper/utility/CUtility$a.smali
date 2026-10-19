.class Lcom/com2us/wrapper/utility/CUtility$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/wrapper/utility/CUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Landroid/app/Activity;

.field final synthetic c:Lcom/com2us/wrapper/utility/CUtility;


# direct methods
.method public constructor <init>(Lcom/com2us/wrapper/utility/CUtility;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/com2us/wrapper/utility/CUtility$a;->c:Lcom/com2us/wrapper/utility/CUtility;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$a;->a:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$a;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/com2us/wrapper/utility/CUtility$a;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.google.android.youtube"

    invoke-virtual {p0, p1, p2, v0}, Lcom/com2us/wrapper/utility/CUtility$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1, p3}, Lcom/com2us/wrapper/utility/CUtility$a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$a;->a:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility$a;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$a;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$a;->a:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$a;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "javascript:var iframes = document.getElementsByTagName(\'iframe\');for (var i = 0, l = iframes.length; i < l; i++) {   var iframe = iframes[i],   a = document.createElement(\'a\');   a.setAttribute(\'href\', iframe.src);   d = document.createElement(\'div\');   d.style.width = iframe.offsetWidth + \'px\';   d.style.height = iframe.offsetHeight + \'px\';   d.style.top = iframe.offsetTop + \'px\';   d.style.left = iframe.offsetLeft + \'px\';   d.style.position = \'absolute\';   d.style.opacity = \'0\';   d.style.filter = \'alpha(opacity=0)\';   d.style.background = \'black\';   a.appendChild(d);   iframe.offsetParent.appendChild(a);}"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$a;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "vnd.youtube:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "?"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/com2us/wrapper/utility/CUtility$a;->b:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "http://www.youtube.com/watch?v=%s"

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "vnd.youtube:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "market:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility$a;->b:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "youtube.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility$a;->b:Landroid/app/Activity;

    invoke-virtual {p0, v1, p2}, Lcom/com2us/wrapper/utility/CUtility$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
