.class Lcom/com2us/module/inapp/SelectTarget$6;
.super Ljava/lang/Object;
.source "SelectTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/SelectTarget;->resultPostTarget(Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$state:I

.field private final synthetic val$target:I

.field private final synthetic val$targetCBRef:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/com2us/module/inapp/SelectTarget$6;->val$targetCBRef:I

    iput p2, p0, Lcom/com2us/module/inapp/SelectTarget$6;->val$state:I

    iput p3, p0, Lcom/com2us/module/inapp/SelectTarget$6;->val$target:I

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 405
    iget v0, p0, Lcom/com2us/module/inapp/SelectTarget$6;->val$targetCBRef:I

    iget v1, p0, Lcom/com2us/module/inapp/SelectTarget$6;->val$state:I

    iget v2, p0, Lcom/com2us/module/inapp/SelectTarget$6;->val$target:I

    invoke-static {v0, v1, v2}, Lcom/com2us/module/inapp/InApp;->resultPostTarget(III)V

    .line 406
    return-void
.end method
