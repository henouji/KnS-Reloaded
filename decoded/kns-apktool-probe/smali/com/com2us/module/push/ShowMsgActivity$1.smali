.class Lcom/com2us/module/push/ShowMsgActivity$1;
.super Ljava/lang/Object;
.source "ShowMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/push/ShowMsgActivity;->setDialog(Landroid/content/Context;Landroid/content/Intent;)V
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
    iput-object p1, p0, Lcom/com2us/module/push/ShowMsgActivity$1;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity$1;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    invoke-static {v0}, Lcom/com2us/module/push/ShowMsgActivity;->access$2(Lcom/com2us/module/push/ShowMsgActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 116
    return-void
.end method
