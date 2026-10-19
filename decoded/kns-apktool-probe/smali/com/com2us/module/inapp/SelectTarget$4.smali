.class Lcom/com2us/module/inapp/SelectTarget$4;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/com2us/module/inapp/SelectTarget;->access$6()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 351
    return-void
.end method
