.class Lcom/com2us/module/mercury/MercuryDialog$2;
.super Ljava/lang/Object;
.source "MercuryDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/MercuryDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/mercury/MercuryDialog;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/MercuryDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$2;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$2;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    new-instance v1, Landroid/app/ProgressDialog;

    sget-object v2, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog;->access$19(Lcom/com2us/module/mercury/MercuryDialog;Landroid/app/ProgressDialog;)V

    .line 1012
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$2;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog;->access$2(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 1013
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$2;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog;->access$2(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {}, Lcom/com2us/module/mercury/MercuryData;->getProgressDialogText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1050
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$2;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$2;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog;->access$20(Lcom/com2us/module/mercury/MercuryDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$2;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$21(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/com2us/module/mercury/MercuryDialog;->setContentView(Landroid/view/View;)V

    .line 1052
    return-void
.end method
