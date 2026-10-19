.class final Lcom/com2us/wrapper/kernel/CWrapperKernel$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperKernel;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->n()Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/com2us/wrapper/kernel/CWrapperKernel$1$1;

    invoke-direct {v1, p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$1$1;-><init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$1;)V

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->a(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
