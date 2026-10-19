.class Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "UserAgreeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserAgreeWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;


# direct methods
.method private constructor <init>(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;-><init>(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->access$0(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[UserAgreeDialog][onLoadResource]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 315
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->access$0(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[UserAgreeDialog][UserAgreeWebViewClient][onPageFinished]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->access$2(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->access$2(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->access$2(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 307
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 309
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->access$0(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[UserAgreeDialog][UserAgreeWebViewClient][onPageStarted]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 296
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 297
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->access$2(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->access$3(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->access$2(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 300
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->access$0(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[UserAgreeDialog][UserAgreeWebViewClient][ReceivedError]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->access$1(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->access$0(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[UserAgreeDialog][UserAgreeWebViewClient][shouldOverrideUrlLoading]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 283
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
