.class public Lb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/RectF;

.field private e:Lcom/com2us/wrapper/kernel/CEventHandler;


# direct methods
.method public constructor <init>(Lcom/com2us/wrapper/kernel/CEventHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xff00

    iput v0, p0, Lb;->a:I

    const/16 v0, 0x8

    iput v0, p0, Lb;->b:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb;->c:Ljava/util/HashSet;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lb;->d:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-object v0, p0, Lb;->e:Lcom/com2us/wrapper/kernel/CEventHandler;

    iput-object p1, p0, Lb;->e:Lcom/com2us/wrapper/kernel/CEventHandler;

    return-void
.end method

.method private a(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lb;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private a(IFFII)V
    .locals 6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    float-to-int v2, p2

    float-to-int v3, p3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->convertDisplaytoOriginal(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb;->e:Lcom/com2us/wrapper/kernel/CEventHandler;

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/wrapper/kernel/CEventHandler;->addEvent(IIIII)V

    return-void

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(FF)Z
    .locals 1

    iget-object v0, p0, Lb;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lb;->a(FF)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v1, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb;->a(IFFII)V

    goto :goto_0
.end method

.method private b(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lb;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lb;->a(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb;->c:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return v6

    :cond_0
    const/4 v1, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb;->a(IFFII)V

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v2, v3}, Lb;->a(FF)Z

    move-result v0

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lb;->c:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v7, :cond_2

    const/4 v1, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb;->a(IFFII)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb;->c:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb;->c:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lb;->a(F)F

    move-result v2

    invoke-direct {p0, v3}, Lb;->b(F)F

    move-result v3

    const/4 v1, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb;->a(IFFII)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb;->a(IFFII)V

    goto :goto_1

    :cond_3
    return v7
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperData;->getInstance()Lcom/com2us/wrapper/kernel/CWrapperData;

    move-result-object v0

    iget-object v1, p0, Lb;->d:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDisplayWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDisplayHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    invoke-direct {p0, p2}, Lb;->a(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lb;->b(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lb;->c(Landroid/view/MotionEvent;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
