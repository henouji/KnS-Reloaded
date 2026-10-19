.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;
.super Landroid/webkit/WebViewClient;
.source "AgreementUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewCallBack"
.end annotation


# instance fields
.field isProgressingScheme:Z

.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

.field webProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)V
    .locals 1

    .prologue
    .line 575
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->isProgressingScheme:Z

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    return-object v0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadResource url : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 683
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished url : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$6(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Z)V

    .line 692
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$7(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$7(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$7(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 694
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$8(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/app/AlertDialog;)V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 700
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 582
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPageStarted url : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 584
    new-instance v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;

    invoke-direct {v0, p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)V

    .line 599
    .local v0, "progressDialogRun":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$3(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x514

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 601
    new-instance v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;

    invoke-direct {v1, p0, p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;Landroid/webkit/WebView;)V

    .line 675
    .local v1, "run":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$3(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 677
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 678
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 13
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 705
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "shouldOverrideUrlLoading url : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 707
    if-eqz p2, :cond_9

    .line 710
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 713
    .local v8, "uri":Landroid/net/Uri;
    const-string v10, "c2s"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "activeuser"

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->isProgressingScheme:Z

    if-nez v10, :cond_8

    .line 714
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->isProgressingScheme:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 716
    const/4 v7, 0x0

    .line 719
    .local v7, "queryParameterName":Ljava/lang/String;
    :try_start_1
    const-string v10, "agreement"

    invoke-virtual {v8, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 720
    const-string v7, "agreement"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 730
    :goto_0
    :try_start_2
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "queryParameterName : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 746
    const-string v10, "agreement"

    invoke-static {v10, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 747
    const-string v10, "agreement_version"

    iget-object v11, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v11}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$4(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v10, "agreement_version_data"

    invoke-static {v10, p2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v10}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 751
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$9(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 752
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->destroyParentActivity:Z

    .line 753
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$5(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeAgreementUI(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 826
    .end local v7    # "queryParameterName":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :goto_1
    return v9

    .line 721
    .restart local v7    # "queryParameterName":Ljava/lang/String;
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_0
    :try_start_3
    const-string v10, "agreement_ex"

    invoke-virtual {v8, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 722
    const-string v7, "agreement_ex"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 723
    goto :goto_0

    .line 724
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 726
    :catch_0
    move-exception v5

    .line 727
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 820
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "queryParameterName":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v5

    .line 821
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 822
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v9

    goto :goto_1

    .line 757
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "queryParameterName":Ljava/lang/String;
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v10, 0x0

    :try_start_5
    iput-boolean v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->isProgressingScheme:Z

    .line 758
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$9(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 762
    :cond_3
    const-string v10, "agreement_ex"

    invoke-static {v10, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v10

    if-eqz v10, :cond_7

    .line 763
    const/4 v4, 0x0

    .line 764
    .local v4, "agreement_ex_param_string":Ljava/lang/String;
    const/4 v2, 0x0

    .line 766
    .local v2, "agreement_ex_param_json":Lorg/json/JSONObject;
    :try_start_6
    invoke-virtual {v8, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v4

    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, "agreement_ex_param_decodedData":Ljava/lang/String;
    :try_start_7
    new-instance v1, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v4, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v10, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 772
    .end local v0    # "agreement_ex_param_decodedData":Ljava/lang/String;
    .local v1, "agreement_ex_param_decodedData":Ljava/lang/String;
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .end local v2    # "agreement_ex_param_json":Lorg/json/JSONObject;
    .local v3, "agreement_ex_param_json":Lorg/json/JSONObject;
    move-object v2, v3

    .line 778
    .end local v1    # "agreement_ex_param_decodedData":Ljava/lang/String;
    .end local v3    # "agreement_ex_param_json":Lorg/json/JSONObject;
    .restart local v2    # "agreement_ex_param_json":Lorg/json/JSONObject;
    :goto_2
    if-eqz v2, :cond_6

    .line 779
    :try_start_9
    const-string v10, "sms"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 780
    .local v6, "isAgreeSMS":I
    const-string v11, "agreement_sms_property"

    if-ne v6, v9, :cond_4

    const-string v10, "1"

    :goto_3
    invoke-static {v11, v10}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v10, "agreement_ex_scheme_data"

    invoke-static {v10, p2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v10}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 800
    .end local v6    # "isAgreeSMS":I
    :goto_4
    :try_start_a
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->destroyParentActivity:Z

    .line 801
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$5(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeAgreementUI(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_1

    .line 773
    .restart local v0    # "agreement_ex_param_decodedData":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 774
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    const/4 v2, 0x0

    goto :goto_2

    .line 781
    .end local v0    # "agreement_ex_param_decodedData":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "isAgreeSMS":I
    :cond_4
    if-nez v6, :cond_5

    const-string v10, "0"

    goto :goto_3

    :cond_5
    const-string v10, "null"

    goto :goto_3

    .line 786
    .end local v6    # "isAgreeSMS":I
    :cond_6
    const/4 v4, 0x0

    .line 787
    const/4 v2, 0x0

    .line 788
    const-string v10, "agreement_sms_property"

    const-string v11, "null"

    invoke-static {v10, v11}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v10}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_4

    .line 792
    :catch_3
    move-exception v5

    .line 793
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 794
    const/4 v4, 0x0

    .line 795
    const/4 v2, 0x0

    .line 796
    const-string v10, "agreement_sms_property"

    const-string v11, "null"

    invoke-static {v10, v11}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v10}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    goto :goto_4

    .line 805
    .end local v2    # "agreement_ex_param_json":Lorg/json/JSONObject;
    .end local v4    # "agreement_ex_param_string":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_1

    .line 817
    .end local v7    # "queryParameterName":Ljava/lang/String;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-result v9

    goto/16 :goto_1

    .line 826
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_1

    .line 773
    .restart local v1    # "agreement_ex_param_decodedData":Ljava/lang/String;
    .restart local v2    # "agreement_ex_param_json":Lorg/json/JSONObject;
    .restart local v4    # "agreement_ex_param_string":Ljava/lang/String;
    .restart local v7    # "queryParameterName":Ljava/lang/String;
    .restart local v8    # "uri":Landroid/net/Uri;
    :catch_4
    move-exception v5

    move-object v0, v1

    .end local v1    # "agreement_ex_param_decodedData":Ljava/lang/String;
    .restart local v0    # "agreement_ex_param_decodedData":Ljava/lang/String;
    goto :goto_5
.end method
