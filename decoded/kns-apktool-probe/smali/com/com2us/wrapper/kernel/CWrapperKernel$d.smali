.class Lcom/com2us/wrapper/kernel/CWrapperKernel$d;
.super Ld$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/wrapper/kernel/CWrapperKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Ld$b;->k:Ld$b;

    invoke-direct {p0, v0}, Ld$a;-><init>(Ld$b;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperData;->getInstance()Lcom/com2us/wrapper/kernel/CWrapperData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getUseSGL()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getSystemVersionCode()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1;-><init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$d;)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1;->start()V

    return-void

    :cond_1
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperData;->getInstance()Lcom/com2us/wrapper/kernel/CWrapperData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getUseSelfTextureCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->n()Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->onResume()V

    goto :goto_0
.end method
