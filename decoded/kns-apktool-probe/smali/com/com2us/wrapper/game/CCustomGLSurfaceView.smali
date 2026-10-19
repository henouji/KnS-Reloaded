.class public Lcom/com2us/wrapper/game/CCustomGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;

# interfaces
.implements Lcom/com2us/wrapper/kernel/CWrapperKernel$s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/game/CCustomGLSurfaceView$1;
    }
.end annotation


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->a:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->b:Z

    invoke-static {p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->a(Lcom/com2us/wrapper/kernel/CWrapperKernel$s;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/com2us/wrapper/game/CCustomGLSurfaceView$1;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->b:Z

    goto :goto_0

    :pswitch_1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->b:Z

    iget-boolean v0, p0, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->b:Z

    if-ne v0, v2, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperData;->getInstance()Lcom/com2us/wrapper/kernel/CWrapperData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/com2us/wrapper/kernel/CWrapperData;->setScreenSize(II)V

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->j()V

    :cond_0
    return-void
.end method

.method public declared-synchronized queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
