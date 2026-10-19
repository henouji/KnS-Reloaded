.class Lcom/com2us/module/push/Push$3;
.super Ljava/lang/Object;
.source "Push.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/push/Push;->sendCallback(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cbPushID:I

.field private final synthetic val$cbremainPushCallback:I

.field private final synthetic val$dummyIsGCMPush:Z


# direct methods
.method constructor <init>(ZII)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/com2us/module/push/Push$3;->val$dummyIsGCMPush:Z

    iput p2, p0, Lcom/com2us/module/push/Push$3;->val$cbPushID:I

    iput p3, p0, Lcom/com2us/module/push/Push$3;->val$cbremainPushCallback:I

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 676
    const-string v0, "send glView Callback"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 677
    iget-boolean v0, p0, Lcom/com2us/module/push/Push$3;->val$dummyIsGCMPush:Z

    if-eqz v0, :cond_0

    .line 678
    invoke-static {}, Lcom/com2us/module/push/Push;->access$3()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/com2us/module/push/Push$3;->val$cbPushID:I

    iget v3, p0, Lcom/com2us/module/push/Push$3;->val$cbremainPushCallback:I

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/push/Push;->access$4(IIII)V

    .line 682
    :goto_0
    return-void

    .line 680
    :cond_0
    invoke-static {}, Lcom/com2us/module/push/Push;->access$3()I

    move-result v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/com2us/module/push/Push$3;->val$cbPushID:I

    iget v3, p0, Lcom/com2us/module/push/Push$3;->val$cbremainPushCallback:I

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/push/Push;->access$4(IIII)V

    goto :goto_0
.end method
