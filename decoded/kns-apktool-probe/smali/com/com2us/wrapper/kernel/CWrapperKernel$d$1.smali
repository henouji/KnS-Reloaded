.class Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperKernel$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/kernel/CWrapperKernel$d;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$d;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1;->a:Lcom/com2us/wrapper/kernel/CWrapperKernel$d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->c(Z)Z

    :goto_0
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->n()Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1$1;

    invoke-direct {v1, p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1$1;-><init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1;)V

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->n()Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1$2;

    invoke-direct {v1, p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1$2;-><init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1;)V

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->a(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
