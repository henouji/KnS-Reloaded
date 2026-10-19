.class public Lcom/com2us/wrapper/kernel/CWrapperTimer;
.super Lcom/com2us/wrapper/kernel/CWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/kernel/CWrapperTimer$2;,
        Lcom/com2us/wrapper/kernel/CWrapperTimer$a;
    }
.end annotation


# instance fields
.field private a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

.field private b:Lc;

.field private c:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

.field private d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/com2us/wrapper/game/CCustomGLSurfaceView;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>(Z)V

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    new-instance v0, Lc;

    invoke-direct {v0}, Lc;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->b:Lc;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->c:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/wrapper/kernel/CWrapperTimer$1;

    invoke-direct {v1, p0}, Lcom/com2us/wrapper/kernel/CWrapperTimer$1;-><init>(Lcom/com2us/wrapper/kernel/CWrapperTimer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->d:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->c:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    return-void
.end method

.method static synthetic a(Lcom/com2us/wrapper/kernel/CWrapperTimer;)Lcom/com2us/wrapper/kernel/CWrapperTimer$a;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/wrapper/kernel/CWrapperTimer;Lcom/com2us/wrapper/kernel/CWrapperTimer$a;)Lcom/com2us/wrapper/kernel/CWrapperTimer$a;
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    return-object p1
.end method

.method static synthetic b(Lcom/com2us/wrapper/kernel/CWrapperTimer;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->d:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic c(Lcom/com2us/wrapper/kernel/CWrapperTimer;)Lc;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->b:Lc;

    return-object v0
.end method

.method static synthetic d(Lcom/com2us/wrapper/kernel/CWrapperTimer;)Lcom/com2us/wrapper/game/CCustomGLSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->c:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapper;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V

    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$2;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    sget-object v1, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->b:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    goto :goto_0

    :goto_1
    :pswitch_2
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    sget-object v1, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->c:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v0, v1, :cond_1

    const-wide/16 v0, 0x64

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->d:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :pswitch_3
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->l()V

    :cond_2
    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->d:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
