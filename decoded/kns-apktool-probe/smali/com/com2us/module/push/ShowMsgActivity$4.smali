.class Lcom/com2us/module/push/ShowMsgActivity$4;
.super Ljava/lang/Object;
.source "ShowMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/com2us/module/push/ShowMsgActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/push/ShowMsgActivity$4;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    iput-object p2, p0, Lcom/com2us/module/push/ShowMsgActivity$4;->val$dialog:Landroid/app/Dialog;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 164
    iget-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity$4;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    invoke-virtual {v0}, Lcom/com2us/module/push/ShowMsgActivity;->finish()V

    .line 165
    return-void
.end method
