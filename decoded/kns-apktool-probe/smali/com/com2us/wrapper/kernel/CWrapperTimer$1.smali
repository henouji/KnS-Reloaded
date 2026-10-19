.class Lcom/com2us/wrapper/kernel/CWrapperTimer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/wrapper/kernel/CWrapperTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/kernel/CWrapperTimer;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer$1;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer$1;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer;

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a(Lcom/com2us/wrapper/kernel/CWrapperTimer;)Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    move-result-object v0

    sget-object v1, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->d:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->l()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer$1;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer;

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a(Lcom/com2us/wrapper/kernel/CWrapperTimer;)Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    move-result-object v0

    sget-object v1, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->b:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer$1;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer;

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperTimer;->b(Lcom/com2us/wrapper/kernel/CWrapperTimer;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer$1;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer;

    sget-object v2, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->c:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    invoke-static {v0, v2}, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a(Lcom/com2us/wrapper/kernel/CWrapperTimer;Lcom/com2us/wrapper/kernel/CWrapperTimer$a;)Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->k()V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer$1;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer;

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperTimer;->b(Lcom/com2us/wrapper/kernel/CWrapperTimer;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer$1;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer;

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperTimer;->c(Lcom/com2us/wrapper/kernel/CWrapperTimer;)Lc;

    move-result-object v0

    invoke-virtual {v0}, Lc;->a()Z

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer$1;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer;

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperTimer;->d(Lcom/com2us/wrapper/kernel/CWrapperTimer;)Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/com2us/wrapper/kernel/CWrapperTimer$1$1;

    invoke-direct {v1, p0}, Lcom/com2us/wrapper/kernel/CWrapperTimer$1$1;-><init>(Lcom/com2us/wrapper/kernel/CWrapperTimer$1;)V

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer$1;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer;

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperTimer;->c(Lcom/com2us/wrapper/kernel/CWrapperTimer;)Lc;

    move-result-object v0

    invoke-virtual {v0}, Lc;->b()Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
