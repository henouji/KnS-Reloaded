.class Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;
.super Landroid/webkit/WebViewClient;
.source "LebiBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

.field webProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V
    .locals 1

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 1174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1179
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    .line 1180
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$1(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1181
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1182
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1184
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1185
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1189
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$WebViewCallBack;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1193
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$2()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1195
    :cond_0
    return-void
.end method
