.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;
.super Ljava/lang/Object;
.source "AgreementUIActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;

.field private final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field private final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;Landroid/webkit/WebView;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;

    iput-object p2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;->val$progressDialog:Landroid/app/ProgressDialog;

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 850
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$1(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;->val$webView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-static {v1, v2, v3, v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$43(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;Landroid/webkit/WebView;Landroid/app/ProgressDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$8(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/app/AlertDialog;)V

    .line 852
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$7(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 855
    :cond_0
    return-void
.end method
