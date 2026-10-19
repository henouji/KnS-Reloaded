.class Lcom/com2us/module/push/ShowMsgActivity$8;
.super Ljava/lang/Object;
.source "ShowMsgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/push/ShowMsgActivity;->createDialog(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/push/ShowMsgActivity;


# direct methods
.method constructor <init>(Lcom/com2us/module/push/ShowMsgActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/push/ShowMsgActivity$8;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 242
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 243
    iget-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity$8;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    invoke-virtual {v0}, Lcom/com2us/module/push/ShowMsgActivity;->finish()V

    .line 244
    return-void
.end method
