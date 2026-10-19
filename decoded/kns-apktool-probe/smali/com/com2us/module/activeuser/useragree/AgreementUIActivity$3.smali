.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;
.super Ljava/lang/Object;
.source "AgreementUIActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->createWebView()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

.field private final synthetic val$web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    iput-object p2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;->val$web:Landroid/webkit/WebView;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$42(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;->val$web:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$42(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 567
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$9(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;->val$web:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$9(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;->val$web:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$42(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
