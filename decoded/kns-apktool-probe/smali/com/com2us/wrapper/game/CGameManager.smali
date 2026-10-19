.class public Lcom/com2us/wrapper/game/CGameManager;
.super Lcom/com2us/wrapper/kernel/CWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/game/CGameManager$2;
    }
.end annotation


# instance fields
.field private a:Lcom/com2us/wrapper/kernel/CEventHandler;

.field private b:Lb;

.field private c:Landroid/app/Activity;

.field private d:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;Lcom/com2us/wrapper/kernel/CEventHandler;Lcom/com2us/wrapper/kernel/CWrapperData;)V
    .locals 9

    const/4 v3, 0x5

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->a:Lcom/com2us/wrapper/kernel/CEventHandler;

    iput-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->b:Lb;

    iput-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->c:Landroid/app/Activity;

    iput-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    iput-object p1, p0, Lcom/com2us/wrapper/game/CGameManager;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->c:Landroid/app/Activity;

    const-string v2, "R.id.GLViewLayout"

    invoke-static {v2}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p3, p0, Lcom/com2us/wrapper/game/CGameManager;->a:Lcom/com2us/wrapper/kernel/CEventHandler;

    new-instance v0, Lb;

    iget-object v2, p0, Lcom/com2us/wrapper/game/CGameManager;->a:Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-direct {v0, v2}, Lb;-><init>(Lcom/com2us/wrapper/kernel/CEventHandler;)V

    iput-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->b:Lb;

    invoke-virtual {p4}, Lcom/com2us/wrapper/kernel/CWrapperData;->getColorBufferFormat()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    new-instance v1, La;

    invoke-direct {v1}, La;-><init>()V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v6}, Landroid/opengl/GLSurfaceView;->setBackgroundColor(I)V

    invoke-virtual {p0, p4}, Lcom/com2us/wrapper/game/CGameManager;->initializeDisplay(Lcom/com2us/wrapper/kernel/CWrapperData;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    const/16 v5, 0x10

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    const/4 v4, 0x6

    const/16 v7, 0x10

    move v5, v3

    move v8, v6

    invoke-virtual/range {v2 .. v8}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/com2us/wrapper/game/CGameManager;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/com2us/wrapper/game/CGameManager;)Landroid/opengl/GLSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method


# virtual methods
.method public initializeDisplay(Lcom/com2us/wrapper/kernel/CWrapperData;)V
    .locals 12

    const/4 v7, 0x0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->c:Landroid/app/Activity;

    const-string v1, "R.id.DeviceLayout"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDefinedOriginalWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDefinedOriginalHeight()I

    move-result v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    move v2, v6

    move v1, v5

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getIsFullStretch()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    move v4, v6

    move v3, v5

    move v8, v7

    :goto_1
    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/com2us/wrapper/kernel/CWrapperData;->setScreenSize(IIIIII)V

    move-object v0, p0

    move v1, v8

    move v2, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/wrapper/game/CGameManager;->setDisplay(IIIILcom/com2us/wrapper/kernel/CWrapperData;)Z

    return-void

    :cond_2
    if-nez v1, :cond_3

    mul-int v1, v2, v5

    int-to-float v1, v1

    int-to-float v3, v6

    div-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_1

    mul-int v2, v1, v6

    int-to-float v2, v2

    int-to-float v3, v5

    div-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v8, v2

    div-float/2addr v4, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v3, v1

    mul-float/2addr v3, v4

    float-to-double v8, v3

    add-double/2addr v8, v10

    double-to-int v3, v8

    int-to-float v8, v2

    mul-float/2addr v4, v8

    float-to-double v8, v4

    add-double/2addr v8, v10

    double-to-int v4, v8

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getViewportAlignment()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    move v8, v7

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    move v8, v7

    move v7, v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    move v8, v7

    move v7, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapper;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V

    sget-object v0, Lcom/com2us/wrapper/game/CGameManager$2;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->a:Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CEventHandler;->removeEventAll()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->a:Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CEventHandler;->removeEventAll()V

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/com2us/wrapper/game/CGameManager;->b:Lb;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->b:Lb;

    invoke-virtual {v0}, Lb;->a()V

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->a:Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CEventHandler;->removeEventAll()V

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/com2us/wrapper/game/CGameManager;->b:Lb;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->c:Landroid/app/Activity;

    const-string v1, "R.id.GLViewLayout"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager;->d:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public setDisplay(IIIILcom/com2us/wrapper/kernel/CWrapperData;)Z
    .locals 6

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int v0, p1, p3

    invoke-virtual {p5}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDeviceWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    add-int v0, p2, p4

    invoke-virtual {p5}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDeviceHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p5, p3, p4}, Lcom/com2us/wrapper/kernel/CWrapperData;->setScreenSize(II)V

    new-instance v0, Lcom/com2us/wrapper/game/CGameManager$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/com2us/wrapper/game/CGameManager$1;-><init>(Lcom/com2us/wrapper/game/CGameManager;IIII)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/game/CGameManager$1;->start()V

    const/4 v0, 0x1

    goto :goto_0
.end method
