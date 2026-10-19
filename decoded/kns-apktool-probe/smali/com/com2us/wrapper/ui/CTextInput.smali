.class public Lcom/com2us/wrapper/ui/CTextInput;
.super Lcom/com2us/wrapper/kernel/CWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/ui/CTextInput$3;,
        Lcom/com2us/wrapper/ui/CTextInput$b;,
        Lcom/com2us/wrapper/ui/CTextInput$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/FrameLayout;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lh;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->a:I

    iput-object v1, p0, Lcom/com2us/wrapper/ui/CTextInput;->b:Landroid/widget/FrameLayout;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/com2us/wrapper/ui/CTextInput;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CTextInput;->b:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/com2us/wrapper/ui/CTextInput;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/com2us/wrapper/ui/CTextInput;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/wrapper/ui/CTextInput;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/com2us/wrapper/ui/CTextInput;->nativeCallback(II)V

    return-void
.end method

.method private native nativeCallback(II)V
.end method


# virtual methods
.method public create(IIIII)I
    .locals 10

    iget v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->a:I

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Point;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->convertOriginaltoDisplay([Landroid/graphics/Point;)[Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v5, v1, Landroid/graphics/Point;->x:I

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v6, v1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget v7, v1, Landroid/graphics/Point;->x:I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v8, v0, Landroid/graphics/Point;->y:I

    new-instance v0, Lh;

    iget v1, p0, Lcom/com2us/wrapper/ui/CTextInput;->a:I

    iget-object v2, p0, Lcom/com2us/wrapper/ui/CTextInput;->b:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/com2us/wrapper/ui/CTextInput$a;

    invoke-direct {v3, p0}, Lcom/com2us/wrapper/ui/CTextInput$a;-><init>(Lcom/com2us/wrapper/ui/CTextInput;)V

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v9, 0x0

    aput v5, v4, v9

    const/4 v5, 0x1

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v7, v4, v5

    const/4 v5, 0x3

    aput v8, v4, v5

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lh;-><init>(ILandroid/widget/FrameLayout;Lcom/com2us/wrapper/ui/CTextInput$b;[II)V

    iget-object v1, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    iget v2, p0, Lcom/com2us/wrapper/ui/CTextInput;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->a:I

    return v0
.end method

.method public destroy(I)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->a()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAutoCapitalizationType(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->p()I

    move-result v0

    goto :goto_0
.end method

.method public getPropertyBackColor(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->j()I

    move-result v0

    goto :goto_0
.end method

.method public getPropertyFocus(I)I
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->n()Z

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPropertyFrame(I)[I
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lh;->h()[I

    move-result-object v0

    new-array v1, v7, [Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    aget v3, v0, v5

    aget v4, v0, v6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Point;

    aget v3, v0, v7

    aget v4, v0, v8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/com2us/wrapper/function/CFunction;->convertDisplaytoOriginal([Landroid/graphics/Point;)[Landroid/graphics/Point;

    move-result-object v1

    aget-object v2, v1, v5

    iget v2, v2, Landroid/graphics/Point;->x:I

    aput v2, v0, v5

    aget-object v2, v1, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    aput v2, v0, v6

    aget-object v2, v1, v6

    iget v2, v2, Landroid/graphics/Point;->x:I

    aput v2, v0, v7

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, v0, v8

    goto :goto_0
.end method

.method public getPropertyKeyboardAlwaysShow(I)I
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->r()Z

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPropertyKeyboardType(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->k()I

    move-result v0

    goto :goto_0
.end method

.method public getPropertyMaxTextLength(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->e()I

    move-result v0

    goto :goto_0
.end method

.method public getPropertyPlaceHolder(I)[B
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lh;->q()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/com2us/wrapper/ui/CTextInput;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public getPropertyReturnKeyType(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->l()I

    move-result v0

    goto :goto_0
.end method

.method public getPropertySecure(I)I
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->m()Z

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPropertyText(I)[B
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lh;->b()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/com2us/wrapper/ui/CTextInput;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public getPropertyTextAlignmentHorizontal(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->f()I

    move-result v0

    goto :goto_0
.end method

.method public getPropertyTextAlignmentVertical(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->g()I

    move-result v0

    goto :goto_0
.end method

.method public getPropertyTextBytes(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->d()I

    move-result v0

    goto :goto_0
.end method

.method public getPropertyTextColor(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->i()I

    move-result v0

    goto :goto_0
.end method

.method public getPropertyTextLength(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->c()I

    move-result v0

    goto :goto_0
.end method

.method public getPropertyTextSize(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lh;->o()I

    move-result v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v1}, Lcom/com2us/wrapper/function/CFunction;->convertDisplaytoOriginal(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-lt v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getPropertyTextType(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->s()I

    move-result v0

    goto :goto_0
.end method

.method public onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapper;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V

    sget-object v0, Lcom/com2us/wrapper/ui/CTextInput$3;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/com2us/wrapper/ui/CTextInput$1;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/ui/CTextInput$1;-><init>(Lcom/com2us/wrapper/ui/CTextInput;)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/com2us/wrapper/ui/CTextInput$2;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/ui/CTextInput$2;-><init>(Lcom/com2us/wrapper/ui/CTextInput;)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public requestReturnEventForcedly(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh;->t()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPropertyAutoCapitalizationType(II)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lh;->i(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPropertyBackColor(II)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lh;->e(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPropertyFocus(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lh;->b(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPropertyFrame(I[I)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    new-array v3, v7, [Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    aget v5, p2, v1

    aget v6, p2, v2

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Point;

    aget v5, p2, v7

    aget v6, p2, v8

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/com2us/wrapper/function/CFunction;->convertOriginaltoDisplay([Landroid/graphics/Point;)[Landroid/graphics/Point;

    move-result-object v3

    aget-object v4, v3, v1

    iget v4, v4, Landroid/graphics/Point;->x:I

    aput v4, p2, v1

    aget-object v4, v3, v1

    iget v4, v4, Landroid/graphics/Point;->y:I

    aput v4, p2, v2

    aget-object v4, v3, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    aput v4, p2, v7

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    aput v3, p2, v8

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lh;->a([I)V

    move v0, v2

    goto :goto_0
.end method

.method public setPropertyKeyboardAlwaysShow(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lh;->c(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPropertyKeyboardType(II)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lh;->f(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPropertyMaxTextLength(II)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lh;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public setPropertyPlaceHolder(I[B)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/com2us/wrapper/ui/CTextInput;->d:Ljava/lang/String;

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lh;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public setPropertyReturnKeyType(II)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lh;->g(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPropertySecure(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lh;->a(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPropertyText(I[B)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/com2us/wrapper/ui/CTextInput;->d:Ljava/lang/String;

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lh;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public setPropertyTextAlignmentHorizontal(II)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lh;->b(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPropertyTextAlignmentVertical(II)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lh;->c(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPropertyTextColor(II)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lh;->d(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPropertyTextSize(II)Z
    .locals 3

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v1}, Lcom/com2us/wrapper/function/CFunction;->convertOriginaltoDisplay(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lh;->h(I)V

    const/4 v0, 0x1

    goto :goto_1
.end method
