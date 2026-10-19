.class Lcom/com2us/wrapper/kernel/CWrapperActivity$6;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperActivity;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/kernel/CWrapperActivity;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$6;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x190

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$6;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->c(Lcom/com2us/wrapper/kernel/CWrapperActivity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
