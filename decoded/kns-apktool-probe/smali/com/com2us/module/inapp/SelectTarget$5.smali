.class Lcom/com2us/module/inapp/SelectTarget$5;
.super Ljava/lang/Object;
.source "SelectTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/SelectTarget;->showSelectTargetTypePopup(Landroid/app/Activity;ILorg/json/JSONObject;Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$RBTargetA:Landroid/widget/RadioButton;

.field private final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Landroid/widget/RadioButton;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/SelectTarget$5;->val$RBTargetA:Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/com2us/module/inapp/SelectTarget$5;->val$builder:Landroid/app/AlertDialog$Builder;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/com2us/module/inapp/SelectTarget$5;->val$RBTargetA:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 364
    iget-object v0, p0, Lcom/com2us/module/inapp/SelectTarget$5;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/SelectTarget;->access$7(Landroid/app/Dialog;)V

    .line 365
    invoke-static {}, Lcom/com2us/module/inapp/SelectTarget;->access$6()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 366
    return-void
.end method
