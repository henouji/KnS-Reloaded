.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;
.super Ljava/lang/Object;
.source "AgreementUIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->getRetryAgreementVersionDialog(Landroid/content/Context;Landroid/webkit/WebView;Landroid/app/ProgressDialog;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

.field private final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field private final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/webkit/WebView;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    iput-object p2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->val$progressDialog:Landroid/app/ProgressDialog;

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 843
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v1

    const-string v2, "getRetryAgreementVersionDialog : retry"

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 845
    new-instance v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->val$webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {v0, p0, v1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;Landroid/webkit/WebView;Landroid/app/ProgressDialog;)V

    .line 857
    .local v0, "run":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$3(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$3(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    .line 860
    return-void
.end method
