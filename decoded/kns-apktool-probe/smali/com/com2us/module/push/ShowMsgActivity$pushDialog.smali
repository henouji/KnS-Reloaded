.class Lcom/com2us/module/push/ShowMsgActivity$pushDialog;
.super Landroid/app/Dialog;
.source "ShowMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/push/ShowMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "pushDialog"
.end annotation


# instance fields
.field dialogContext:Landroid/content/Context;

.field dialogIntent:Landroid/content/Intent;

.field isUseButton:Z

.field final synthetic this$0:Lcom/com2us/module/push/ShowMsgActivity;


# direct methods
.method public constructor <init>(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "existButton"    # Z

    .prologue
    const/4 v2, 0x0

    .line 256
    iput-object p1, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    .line 257
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 254
    iput-boolean v2, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->isUseButton:Z

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->requestWindowFeature(I)Z

    .line 259
    invoke-virtual {p0}, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    iput-object p2, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->dialogContext:Landroid/content/Context;

    .line 261
    iput-object p3, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->dialogIntent:Landroid/content/Intent;

    .line 262
    iput-boolean p4, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->isUseButton:Z

    .line 263
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 267
    iget-boolean v0, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->isUseButton:Z

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return v7

    .line 270
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 272
    iget-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    iget-object v1, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->dialogContext:Landroid/content/Context;

    .line 273
    iget-object v2, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->dialogContext:Landroid/content/Context;

    const-string v3, "pushdialog_root"

    const-string v4, "id"

    iget-object v5, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->dialogIntent:Landroid/content/Intent;

    const-string v6, "packageName"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 272
    invoke-static {v0, v1, v2, p1}, Lcom/com2us/module/push/ShowMsgActivity;->access$0(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 273
    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    iget-object v1, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->dialogContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->dialogIntent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/com2us/module/push/ShowMsgActivity;->access$1(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/content/Intent;)V

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->dismiss()V

    .line 278
    iget-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    invoke-virtual {v0}, Lcom/com2us/module/push/ShowMsgActivity;->finish()V

    goto :goto_0
.end method
