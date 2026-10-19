.class public Lcom/com2us/wrapper/font/CFont;
.super Lcom/com2us/wrapper/kernel/CWrapper;


# instance fields
.field protected a:Landroid/graphics/Bitmap;

.field protected b:Landroid/graphics/Canvas;

.field protected c:Landroid/graphics/Paint;

.field protected d:[I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    iput-object v1, p0, Lcom/com2us/wrapper/font/CFont;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/com2us/wrapper/font/CFont;->b:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/com2us/wrapper/font/CFont;->d:[I

    iput v2, p0, Lcom/com2us/wrapper/font/CFont;->e:I

    iput v2, p0, Lcom/com2us/wrapper/font/CFont;->f:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/com2us/wrapper/font/CFont;->g:I

    iput-object v1, p0, Lcom/com2us/wrapper/font/CFont;->h:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/com2us/wrapper/font/CFont;->a(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/com2us/wrapper/kernel/CWrapperData;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    iput-object v2, p0, Lcom/com2us/wrapper/font/CFont;->a:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/com2us/wrapper/font/CFont;->b:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/com2us/wrapper/font/CFont;->d:[I

    iput v3, p0, Lcom/com2us/wrapper/font/CFont;->e:I

    iput v3, p0, Lcom/com2us/wrapper/font/CFont;->f:I

    iput v0, p0, Lcom/com2us/wrapper/font/CFont;->g:I

    iput-object v2, p0, Lcom/com2us/wrapper/font/CFont;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    const/4 v1, 0x2

    invoke-virtual {p3}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDefinedOriginalWidth()I

    move-result v3

    invoke-virtual {p3}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDefinedOriginalHeight()I

    move-result v4

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    const/16 v1, 0x200

    const/16 v2, 0x100

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/com2us/wrapper/font/CFont;->a(IIILjava/lang/String;)V

    return-void

    :cond_1
    if-ge v3, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;II)I
    .locals 3

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    and-int/lit8 v2, p3, -0x5

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(IIILjava/lang/String;)V
    .locals 4

    const/16 v3, 0xff

    iput-object p4, p0, Lcom/com2us/wrapper/font/CFont;->h:Ljava/lang/String;

    iput p1, p0, Lcom/com2us/wrapper/font/CFont;->e:I

    iput p2, p0, Lcom/com2us/wrapper/font/CFont;->f:I

    iput p3, p0, Lcom/com2us/wrapper/font/CFont;->g:I

    iget v0, p0, Lcom/com2us/wrapper/font/CFont;->e:I

    iget v1, p0, Lcom/com2us/wrapper/font/CFont;->f:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/wrapper/font/CFont;->a:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/com2us/wrapper/font/CFont;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/com2us/wrapper/font/CFont;->b:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->b:Landroid/graphics/Canvas;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLinearText(Z)V

    iget v0, p0, Lcom/com2us/wrapper/font/CFont;->e:I

    iget v1, p0, Lcom/com2us/wrapper/font/CFont;->f:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/com2us/wrapper/font/CFont;->d:[I

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->d:[I

    iget v1, p0, Lcom/com2us/wrapper/font/CFont;->e:I

    iget v2, p0, Lcom/com2us/wrapper/font/CFont;->f:I

    iget v3, p0, Lcom/com2us/wrapper/font/CFont;->g:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/com2us/wrapper/font/CFont;->nativeFontInitialize([IIII)V

    return-void
.end method

.method private native nativeFontInitialize([IIII)V
.end method


# virtual methods
.method public drawText([BII)I
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->h:Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v1, p2, p3}, Lcom/com2us/wrapper/font/CFont;->a(Ljava/lang/String;II)I

    move-result v3

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    int-to-float v4, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    and-int/lit8 v5, p3, -0x5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->b:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    int-to-float v5, p2

    iget-object v6, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/com2us/wrapper/font/CFont;->d:[I

    int-to-double v4, p2

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v4, v6

    double-to-int v7, v4

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->b:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v2

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public drawText([BII[I)I
    .locals 11

    const/4 v10, -0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v9, Ljava/lang/String;

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->h:Ljava/lang/String;

    invoke-direct {v9, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    aget v1, p4, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_4

    aput v10, p4, v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    aput v10, p4, v2

    goto :goto_0

    :goto_1
    if-gt v3, v1, :cond_1

    add-int v0, v3, v1

    shr-int/lit8 v0, v0, 0x1

    aget v4, p4, v2

    invoke-virtual {v9, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3}, Lcom/com2us/wrapper/font/CFont;->a(Ljava/lang/String;II)I

    move-result v4

    iget v5, p0, Lcom/com2us/wrapper/font/CFont;->e:I

    if-ge v4, v5, :cond_0

    add-int/lit8 v3, v0, 0x1

    move v8, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    aget v0, p4, v2

    invoke-virtual {v9, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/com2us/wrapper/font/CFont;->a(Ljava/lang/String;II)I

    move-result v3

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    int-to-float v4, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    and-int/lit8 v5, p3, -0x5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->b:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    int-to-float v5, p2

    iget-object v6, p0, Lcom/com2us/wrapper/font/CFont;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/com2us/wrapper/font/CFont;->d:[I

    int-to-double v4, p2

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v4, v6

    double-to-int v7, v4

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v0, p0, Lcom/com2us/wrapper/font/CFont;->b:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v8, v0, :cond_3

    aput v8, p4, v2

    :goto_3
    move v2, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    aput v10, p4, v2

    goto :goto_3

    :cond_4
    move v8, v2

    move v3, v1

    move v1, v0

    goto :goto_1
.end method

.method public drawTextInRect([BIIIII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStringWidth([BII)I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/com2us/wrapper/font/CFont;->h:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/com2us/wrapper/font/CFont;->a(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStringWidthHeightInRect([BIIII[I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
