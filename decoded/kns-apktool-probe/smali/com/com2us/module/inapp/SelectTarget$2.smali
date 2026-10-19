.class Lcom/com2us/module/inapp/SelectTarget$2;
.super Ljava/lang/Object;
.source "SelectTarget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/SelectTarget;->showSelectTargetTypePopup(Landroid/app/Activity;ILorg/json/JSONObject;Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$RBTargetB:Landroid/widget/RadioButton;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$data:Lorg/json/JSONObject;

.field private final synthetic val$glView:Lcom/com2us/module/view/SurfaceViewWrapper;

.field private final synthetic val$targetCB:Lcom/com2us/module/inapp/SelectTargetCallback;

.field private final synthetic val$targetCBRef:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/RadioButton;Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;ILorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$RBTargetB:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$targetCB:Lcom/com2us/module/inapp/SelectTargetCallback;

    iput-object p4, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    iput p5, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$targetCBRef:I

    iput-object p6, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$data:Lorg/json/JSONObject;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v5, 0xc8

    const/16 v1, 0xf

    .line 291
    new-instance v0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;

    iget-object v2, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;-><init>(Landroid/content/Context;Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;)V

    .line 294
    .local v0, "propertyUtil":Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;
    iget-object v2, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$RBTargetB:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/com2us/module/inapp/InApp;->getClassName(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/SelectTarget;->access$3(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    .local v1, "targetNumber":I
    :goto_0
    iget-object v2, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$targetCB:Lcom/com2us/module/inapp/SelectTargetCallback;

    iget-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    iget v4, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$targetCBRef:I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/com2us/module/inapp/SelectTarget;->access$5(Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;III)V

    .line 309
    :goto_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/com2us/module/inapp/SelectTarget$2$1;

    iget-object v4, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$data:Lorg/json/JSONObject;

    invoke-direct {v3, p0, v4, v1}, Lcom/com2us/module/inapp/SelectTarget$2$1;-><init>(Lcom/com2us/module/inapp/SelectTarget$2;Lorg/json/JSONObject;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 323
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 325
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 326
    return-void

    .line 295
    .end local v1    # "targetNumber":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 302
    :cond_1
    const/16 v1, 0x8

    .line 306
    .restart local v1    # "targetNumber":I
    iget-object v2, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$targetCB:Lcom/com2us/module/inapp/SelectTargetCallback;

    iget-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    iget v4, p0, Lcom/com2us/module/inapp/SelectTarget$2;->val$targetCBRef:I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/com2us/module/inapp/SelectTarget;->access$5(Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;III)V

    goto :goto_1
.end method
