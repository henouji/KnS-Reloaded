.class Lcom/com2us/wrapper/kernel/CWrapperKernel$m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperKernel$m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/kernel/CWrapperKernel$m;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$m;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperKernel$m$1;->a:Lcom/com2us/wrapper/kernel/CWrapperKernel$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperData;->getInstance()Lcom/com2us/wrapper/kernel/CWrapperData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getUseSGL()Z

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getSystemVersionCode()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_1
    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->p:Lcom/com2us/wrapper/kernel/CWrapperKernel$r;

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->a(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V

    invoke-static {v2}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->b(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperData;->getInstance()Lcom/com2us/wrapper/kernel/CWrapperData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getUseSelfTextureCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->n()Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->onPause()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
