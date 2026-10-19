.class Lcom/com2us/module/inapp/SelectTarget$3;
.super Ljava/lang/Object;
.source "SelectTarget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 340
    return-void
.end method
