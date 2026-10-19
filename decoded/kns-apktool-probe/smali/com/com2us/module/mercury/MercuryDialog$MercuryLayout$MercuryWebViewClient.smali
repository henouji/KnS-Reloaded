.class Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MercuryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MercuryWebViewClient"
.end annotation


# instance fields
.field private _syncRequest:Lcom/android/volley/SyncRequest;

.field final synthetic this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;


# direct methods
.method public constructor <init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V
    .locals 2

    .prologue
    .line 721
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    .line 720
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->_syncRequest:Lcom/android/volley/SyncRequest;

    .line 722
    invoke-static {p1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$0(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newSyncRequest(Landroid/content/Context;I)Lcom/android/volley/SyncRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->_syncRequest:Lcom/android/volley/SyncRequest;

    .line 723
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 858
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog;->access$2(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 860
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$7(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "full screen paged finished"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$8(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->removeView(Landroid/view/View;)V

    .line 864
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$9(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$10(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/widget/LinearLayout;)V

    .line 865
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$6(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->resizeWebview(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog;->access$3(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$4(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setCloseButton(IIIIII)Z

    .line 868
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0, v3}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$2(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V

    .line 871
    :cond_0
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Mercury"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " onPageFinished "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 851
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 852
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog;->access$2(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog;->access$2(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 854
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 879
    :try_start_0
    const-string v2, ".png"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 880
    const-string v2, ".jpeg"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".jpg"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 881
    const-string v2, ".bmp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".bmpx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 883
    :cond_0
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->_syncRequest:Lcom/android/volley/SyncRequest;

    invoke-virtual {v2, p2}, Lcom/android/volley/SyncRequest;->excute(Ljava/lang/String;)Lcom/android/volley/Response;

    move-result-object v1

    .line 884
    .local v1, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    if-eqz v1, :cond_1

    .line 886
    iget-object v2, v1, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    iget-object v2, v2, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    const-string v3, "Content-Type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 887
    .local v0, "mimeType":Ljava/lang/String;
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const/4 v3, 0x0

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, v1, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    iget-object v5, v5, Lcom/android/volley/Cache$Entry;->data:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v0, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    :goto_0
    return-object v2

    .line 890
    :catch_0
    move-exception v2

    .line 892
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 16
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "_url"    # Ljava/lang/String;

    .prologue
    .line 728
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 729
    .local v11, "url":Ljava/lang/String;
    sget-object v12, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "shouldOverrideUrlLoading="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 730
    const-string v12, "http"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "https"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 732
    :cond_0
    sget-object v12, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v13, "shouldOverrideUrlLoading : startsWith http or https"

    invoke-virtual {v12, v13}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 733
    const/4 v12, 0x0

    .line 840
    :goto_0
    return v12

    .line 738
    :cond_1
    move-object v7, v11

    .line 739
    .local v7, "linkUrl":Ljava/lang/String;
    const/4 v5, -0x1

    .line 741
    .local v5, "index":I
    :try_start_0
    const-string v12, "c2smercury"

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 743
    const-string v12, "?"

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 745
    .local v3, "dividedIndex":I
    const-string v12, "c2smercury"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v3, v12, :cond_8

    .line 747
    invoke-virtual {v7, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 748
    .local v2, "cmd":Ljava/lang/String;
    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 750
    .local v8, "params":Ljava/lang/String;
    const-string v12, "gobrowser"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 751
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 752
    .local v6, "intent":Landroid/content/Intent;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 753
    .local v10, "uri":Landroid/net/Uri;
    invoke-virtual {v6, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 754
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$0(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 840
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "dividedIndex":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "params":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    const/4 v12, 0x1

    goto :goto_0

    .line 756
    .restart local v2    # "cmd":Ljava/lang/String;
    .restart local v3    # "dividedIndex":I
    .restart local v8    # "params":Ljava/lang/String;
    :cond_3
    const-string v12, "offauto"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 758
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setWebViewScrollLock(Z)V

    .line 759
    sget-object v12, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v13, "Mercury"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "params : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v12, "\\|"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "arr":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v12

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog;->access$0(Lcom/com2us/module/mercury/MercuryDialog;)Lcom/com2us/module/mercury/Mercury;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v1, v13

    const/4 v14, 0x1

    aget-object v14, v1, v14

    invoke-virtual {v12, v13, v14}, Lcom/com2us/module/mercury/Mercury;->saveOffAutoParams(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 835
    .end local v1    # "arr":[Ljava/lang/String;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "dividedIndex":I
    .end local v8    # "params":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 836
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 764
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "cmd":Ljava/lang/String;
    .restart local v3    # "dividedIndex":I
    .restart local v8    # "params":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v12, "sendsms"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setWebViewScrollLock(Z)V

    .line 767
    sget-object v12, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v13, "Mercury"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "params : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v12

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog;->access$1(Lcom/com2us/module/mercury/MercuryDialog;)Lcom/com2us/module/mercury/MercuryBridge;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/com2us/module/mercury/MercuryBridge;->sendSMS(Ljava/lang/String;)V

    goto :goto_1

    .line 770
    :cond_5
    const-string v12, "sendemail"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 772
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setWebViewScrollLock(Z)V

    .line 773
    sget-object v12, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v13, "Mercury"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "params : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v12

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog;->access$1(Lcom/com2us/module/mercury/MercuryDialog;)Lcom/com2us/module/mercury/MercuryBridge;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/com2us/module/mercury/MercuryBridge;->sendEmail(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 776
    :cond_6
    const-string v12, "fullscreen"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 778
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$1(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 780
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setWebViewScrollLock(Z)V

    .line 781
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$2(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V

    .line 784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v12

    new-instance v13, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient$1;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;)V

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 805
    :goto_2
    sget-object v12, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v13, "Mercury"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "params : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12, v8}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$5(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Ljava/lang/String;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v13}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$6(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$2(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V

    .line 810
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setWebViewScrollLock(Z)V

    goto/16 :goto_1

    .line 793
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$4(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V

    .line 794
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setWebViewScrollLock(Z)V

    .line 795
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$2(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V

    .line 798
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v12

    new-instance v13, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient$2;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;)V

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 814
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v8    # "params":Ljava/lang/String;
    :cond_8
    const-string v12, "showOfferwall"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 815
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v12

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog;->access$0(Lcom/com2us/module/mercury/MercuryDialog;)Lcom/com2us/module/mercury/Mercury;

    move-result-object v12

    const-string v13, "com.com2us.module.offerwall.Offerwall"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v14}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$0(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/com2us/module/mercury/Mercury;->checkIfServiceAvailable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 816
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v12

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog;->access$0(Lcom/com2us/module/mercury/MercuryDialog;)Lcom/com2us/module/mercury/Mercury;

    move-result-object v12

    invoke-virtual {v12}, Lcom/com2us/module/mercury/Mercury;->hasOfferwallInstance()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 817
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/com2us/module/mercury/MercuryDialog;->closeDialogOnly()V

    .line 818
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v12

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog;->access$0(Lcom/com2us/module/mercury/MercuryDialog;)Lcom/com2us/module/mercury/Mercury;

    move-result-object v12

    invoke-virtual {v12}, Lcom/com2us/module/mercury/Mercury;->showOfferwall()V

    goto/16 :goto_1

    .line 821
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$0(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/app/Activity;

    move-result-object v12

    const-string v13, "Offerwall not initialized"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 822
    .local v9, "toast":Landroid/widget/Toast;
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 827
    .end local v9    # "toast":Landroid/widget/Toast;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v12}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$0(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/app/Activity;

    move-result-object v12

    const-string v13, "Offerwall not supported"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 828
    .restart local v9    # "toast":Landroid/widget/Toast;
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
