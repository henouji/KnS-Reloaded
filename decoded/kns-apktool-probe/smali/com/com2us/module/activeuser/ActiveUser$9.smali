.class Lcom/com2us/module/activeuser/ActiveUser$9;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUser;->createRetryAgreementVersionDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/ActiveUser;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/ActiveUser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser$9;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$9;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUser;->access$0(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    const-string v1, "startAgreementVersionThread : quit"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$9;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUser;->access$5(Lcom/com2us/module/activeuser/ActiveUser;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 410
    return-void
.end method
