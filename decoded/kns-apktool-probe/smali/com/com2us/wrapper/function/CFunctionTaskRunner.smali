.class public Lcom/com2us/wrapper/function/CFunctionTaskRunner;
.super Lcom/com2us/wrapper/kernel/CWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/function/CFunctionTaskRunner$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/com2us/wrapper/function/CFunctionTaskRunner;->a(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/com2us/wrapper/function/CFunction;->initialize(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V

    invoke-static {p1}, Lcom/com2us/wrapper/function/CResource;->initialize(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapper;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V

    sget-object v0, Lcom/com2us/wrapper/function/CFunctionTaskRunner$1;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperData;->getInstance()Lcom/com2us/wrapper/kernel/CWrapperData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getOriginalWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getOriginalHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDisplayWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDisplayHeight()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/com2us/wrapper/function/CFunction;->onSizeChanged(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public uninitialize()V
    .locals 0

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->uninitialize()V

    invoke-static {}, Lcom/com2us/wrapper/function/CResource;->uninitialize()V

    return-void
.end method
