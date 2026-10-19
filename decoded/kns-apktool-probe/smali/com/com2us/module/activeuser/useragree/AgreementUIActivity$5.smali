.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$5;
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


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$5;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    iput-object p2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$5;->val$progressDialog:Landroid/app/ProgressDialog;

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 866
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$5;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    const-string v1, "getRetryAgreementVersionDialog : quit"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$5;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$5;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$5(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeAgreementUI(I)V

    .line 872
    return-void
.end method
