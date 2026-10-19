.class Lcom/com2us/common/CommonTaskRunner$2;
.super Ljava/lang/Thread;
.source "CommonTaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/common/CommonTaskRunner;->runTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$id:I

.field private final synthetic val$isStart:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/com2us/common/CommonTaskRunner$2;->val$id:I

    iput-boolean p2, p0, Lcom/com2us/common/CommonTaskRunner$2;->val$isStart:Z

    .line 83
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/com2us/common/CommonTaskRunner;->access$0()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/com2us/common/CommonTaskRunner$2;->val$id:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    invoke-static {}, Lcom/com2us/common/CommonTaskRunner;->access$0()Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_0
    invoke-static {}, Lcom/com2us/common/CommonTaskRunner;->access$0()Ljava/util/Vector;

    move-result-object v0

    iget v2, p0, Lcom/com2us/common/CommonTaskRunner$2;->val$id:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 92
    iget-boolean v0, p0, Lcom/com2us/common/CommonTaskRunner$2;->val$isStart:Z

    invoke-static {v0}, Lcom/com2us/common/CommonTaskRunner;->access$1(Z)V

    .line 89
    monitor-exit v1

    .line 94
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
