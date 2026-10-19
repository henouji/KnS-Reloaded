.class Lcom/com2us/module/offerwall/OfferwallDialog$2;
.super Ljava/lang/Object;
.source "OfferwallDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/offerwall/OfferwallDialog;->loadURL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/offerwall/OfferwallDialog;


# direct methods
.method constructor <init>(Lcom/com2us/module/offerwall/OfferwallDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog$2;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog$2;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$0(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog$2;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v1}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$4(Lcom/com2us/module/offerwall/OfferwallDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 118
    return-void
.end method
