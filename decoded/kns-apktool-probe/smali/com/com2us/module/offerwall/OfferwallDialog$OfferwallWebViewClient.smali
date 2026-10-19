.class Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "OfferwallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/offerwall/OfferwallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OfferwallWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/offerwall/OfferwallDialog;


# direct methods
.method constructor <init>(Lcom/com2us/module/offerwall/OfferwallDialog;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallWebViewClient;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallWebViewClient;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$3(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 337
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 328
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 329
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallWebViewClient;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$3(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallWebViewClient;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$3(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 331
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "_url"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 275
    .local v8, "url":Ljava/lang/String;
    sget-object v9, Lcom/com2us/module/offerwall/OfferwallDialog;->logger:Lcom/com2us/module/util/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "shouldOverrideUrlLoading="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 276
    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 278
    :cond_0
    iget-object v9, p0, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallWebViewClient;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v9}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$0(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 322
    const/4 v9, 0x0

    :goto_0
    return v9

    .line 281
    :cond_1
    const/4 v6, 0x0

    .line 283
    .local v6, "params":Ljava/lang/String;
    move-object v5, v8

    .line 284
    .local v5, "linkUrl":Ljava/lang/String;
    const/4 v4, 0x1

    .line 285
    .local v4, "isCorrectUrl":Z
    const/4 v2, -0x1

    .line 287
    .local v2, "index":I
    :try_start_0
    const-string v9, "c2swall"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 289
    const-string v9, "?"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, "dividedIndex":I
    if-lez v0, :cond_2

    .line 292
    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "goBrowser"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 294
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 295
    move-object v5, v6

    .line 298
    if-eqz v4, :cond_2

    .line 300
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 302
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 303
    iget-object v9, p0, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallWebViewClient;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v9}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 318
    .end local v0    # "dividedIndex":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 307
    .restart local v0    # "dividedIndex":I
    :cond_3
    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "setRewardFlag"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 309
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 311
    iget-object v9, p0, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallWebViewClient;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v9}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$2(Lcom/com2us/module/offerwall/OfferwallDialog;)Lcom/com2us/module/offerwall/Offerwall;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/com2us/module/offerwall/Offerwall;->setRewardFlag(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 315
    .end local v0    # "dividedIndex":I
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
