.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;
.super Ljava/lang/Object;
.source "AgreementUIActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

.field private final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iput-object p2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->val$view:Landroid/webkit/WebView;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x3e8

    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 606
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$1(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "webViewTimeoutFlag : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$1(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 611
    const/4 v1, 0x0

    .line 613
    .local v1, "localVersion":I
    const/16 v2, 0x10

    :try_start_0
    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 618
    :goto_0
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "webViewTimeout runnable agreement_version : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$4(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 619
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "webViewTimeout runnable localVersion : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$4(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 630
    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 631
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v2

    const-string v3, "loading Local Data."

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 632
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->val$view:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file:///android_asset/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 673
    .end local v1    # "localVersion":I
    :cond_0
    :goto_1
    return-void

    .line 614
    .restart local v1    # "localVersion":I
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 636
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v2

    const-string v3, "Local Data is Empty."

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 638
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v2, v2, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v2, v2, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 639
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v2, v2, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 642
    :cond_2
    const-string v2, "0"

    const-string v3, "agreement_version"

    invoke-static {v3}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 643
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v2

    const-string v3, "AGREEMENT_VERSION_PROPERTY - ZERO, close Agreement UI"

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 644
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$5(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeAgreementUI(I)V

    goto :goto_1

    .line 647
    :cond_3
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v2

    const-string v3, "AGREEMENT_VERSION_PROPERTY - Exist, pass Agreement UI"

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 649
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    iput-boolean v5, v2, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->destroyParentActivity:Z

    .line 650
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$5(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeAgreementUI(I)V

    goto :goto_1

    .line 658
    :cond_4
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v2

    const-string v3, "agreement_version & localVersion are not equals, pass Agreement UI"

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 660
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v2, v2, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v2, v2, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 661
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v2, v2, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 664
    :cond_5
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    iput-boolean v5, v2, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->destroyParentActivity:Z

    .line 665
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$2;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$5(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeAgreementUI(I)V

    goto/16 :goto_1
.end method
