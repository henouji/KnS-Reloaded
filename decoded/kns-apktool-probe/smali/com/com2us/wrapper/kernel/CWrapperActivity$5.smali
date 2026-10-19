.class Lcom/com2us/wrapper/kernel/CWrapperActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$5;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$5;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->b(Lcom/com2us/wrapper/kernel/CWrapperActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
