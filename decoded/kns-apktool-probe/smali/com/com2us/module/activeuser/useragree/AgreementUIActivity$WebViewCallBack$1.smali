.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;
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


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 589
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$1(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    .line 591
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 592
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$2(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/activeuser/useragree/TermsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getLoadingText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 595
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 597
    :cond_1
    return-void
.end method
