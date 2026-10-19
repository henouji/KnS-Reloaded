.class Lcom/com2us/module/push/ShowMsgActivity$2;
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

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/content/Intent;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/push/ShowMsgActivity$2;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    iput-object p2, p0, Lcom/com2us/module/push/ShowMsgActivity$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/com2us/module/push/ShowMsgActivity$2;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/com2us/module/push/ShowMsgActivity$2;->val$dialog:Landroid/app/Dialog;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity$2;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    iget-object v1, p0, Lcom/com2us/module/push/ShowMsgActivity$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/com2us/module/push/ShowMsgActivity$2;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/com2us/module/push/ShowMsgActivity;->access$1(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/content/Intent;)V

    .line 139
    iget-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 140
    iget-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity$2;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    invoke-virtual {v0}, Lcom/com2us/module/push/ShowMsgActivity;->finish()V

    .line 141
    return-void
.end method
