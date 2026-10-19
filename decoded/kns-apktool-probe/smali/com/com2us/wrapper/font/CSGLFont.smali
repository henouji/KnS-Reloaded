.class public Lcom/com2us/wrapper/font/CSGLFont;
.super Lcom/com2us/wrapper/font/CFont;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/com2us/wrapper/font/CFont;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Character;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/16 v2, 0x2d

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz v1, :cond_2

    const/16 v2, 0x24f

    if-le v1, v2, :cond_5

    :cond_2
    const/16 v2, 0x1e00

    if-gt v2, v1, :cond_3

    const/16 v2, 0x1eff

    if-le v1, v2, :cond_5

    :cond_3
    const/16 v2, 0x2c60

    if-gt v2, v1, :cond_4

    const/16 v2, 0x2c7f

    if-le v1, v2, :cond_5

    :cond_4
    const v2, 0xa720

    if-gt v2, v1, :cond_0

    const v2, 0xa7ff

    if-gt v1, v2, :cond_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public drawTextInRect([BIIIII)I
    .locals 18

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/lit8 v8, p3, -0x5

    :try_start_0
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/wrapper/font/CSGLFont;->h:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v9, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v9, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    move/from16 v0, p2

    int-to-float v10, v0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    packed-switch p4, :pswitch_data_0

    move v10, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v16

    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v1

    move/from16 v17, v0

    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move-object/from16 v0, v16

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v8

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x2

    add-int v3, v17, v1

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_18

    add-int/lit8 v1, v1, 0x1

    move v15, v1

    :goto_2
    const/4 v8, 0x4

    packed-switch p6, :pswitch_data_1

    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/wrapper/font/CSGLFont;->a:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/wrapper/font/CSGLFont;->d:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v4, p5

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/wrapper/font/CSGLFont;->b:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x0

    :goto_4
    return v1

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_4

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x0

    move v10, v1

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    div-int/lit8 v1, p5, 0x2

    move v10, v1

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move/from16 v10, p5

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/wrapper/font/CSGLFont;->b:Landroid/graphics/Canvas;

    add-int v6, v5, v7

    int-to-float v7, v10

    move-object/from16 v0, v16

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v8, v12, v8

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    add-int/2addr v5, v1

    const/4 v6, 0x0

    add-int v8, v12, v15

    move v1, v13

    :goto_5
    if-ge v5, v11, :cond_0

    add-int v12, v8, v17

    move v3, v11

    move v13, v1

    move v7, v6

    move v1, v5

    :goto_6
    if-le v1, v3, :cond_3

    move/from16 v0, p5

    if-le v13, v0, :cond_7

    :cond_3
    if-le v1, v3, :cond_4

    move v1, v3

    :cond_4
    add-int v6, v1, v3

    shr-int/lit8 v8, v6, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    add-int v6, v5, v8

    if-le v6, v11, :cond_5

    move v6, v11

    :goto_7
    invoke-virtual {v9, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v13

    move/from16 v0, p5

    if-gt v13, v0, :cond_6

    add-int/lit8 v1, v8, 0x1

    move v7, v8

    goto :goto_6

    :cond_5
    add-int v6, v5, v8

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v8, -0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    add-int v1, v7, v5

    if-le v1, v11, :cond_9

    sub-int v1, v11, v5

    :goto_8
    if-ge v3, v1, :cond_8

    const/16 v6, 0xa

    add-int v8, v5, v3

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v6, v8, :cond_a

    :cond_8
    if-ge v3, v7, :cond_b

    add-int/lit8 v7, v3, 0x1

    move v1, v7

    move v7, v3

    :goto_9
    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/wrapper/font/CSGLFont;->b:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v4, 0x1

    int-to-float v5, v10

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v6, v12, v6

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move v8, v12

    goto/16 :goto_3

    :cond_9
    move v1, v7

    goto :goto_8

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_b
    move v1, v7

    goto :goto_9

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/wrapper/font/CSGLFont;->b:Landroid/graphics/Canvas;

    add-int v6, v5, v1

    int-to-float v7, v10

    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v1, v12, v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    add-int/2addr v5, v14

    const/4 v1, 0x0

    add-int v8, v12, v15

    move v3, v1

    move v1, v13

    :goto_a
    if-ge v5, v11, :cond_0

    add-int v12, v8, v17

    move v13, v1

    move v7, v3

    move v3, v11

    move v1, v5

    :goto_b
    if-le v1, v3, :cond_d

    move/from16 v0, p5

    if-le v13, v0, :cond_17

    :cond_d
    if-le v1, v3, :cond_e

    move v1, v3

    :cond_e
    add-int v6, v1, v3

    shr-int/lit8 v8, v6, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    add-int v6, v5, v8

    if-le v6, v11, :cond_f

    move v6, v11

    :goto_c
    invoke-virtual {v9, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v13

    move/from16 v0, p5

    if-gt v13, v0, :cond_10

    add-int/lit8 v1, v8, 0x1

    move v7, v8

    goto :goto_b

    :cond_f
    add-int v6, v5, v8

    goto :goto_c

    :cond_10
    add-int/lit8 v3, v8, -0x1

    goto :goto_b

    :goto_d
    const/4 v1, 0x1

    if-le v3, v1, :cond_11

    add-int v1, v5, v3

    if-ge v1, v11, :cond_11

    const/4 v1, 0x1

    add-int v6, v5, v3

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/com2us/wrapper/font/CSGLFont;->a(Ljava/lang/Character;)Z

    move-result v6

    if-ne v1, v6, :cond_11

    add-int v1, v5, v3

    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_11

    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    :cond_11
    add-int v1, v5, v3

    if-ge v1, v11, :cond_12

    const/4 v1, 0x1

    add-int v6, v5, v3

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-ne v1, v6, :cond_12

    add-int/lit8 v3, v3, 0x1

    :cond_12
    const/4 v6, 0x0

    add-int v1, v3, v5

    if-le v1, v11, :cond_14

    sub-int v1, v11, v5

    :goto_e
    if-ge v6, v1, :cond_13

    const/16 v7, 0xa

    add-int v8, v5, v6

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_15

    :cond_13
    if-ge v6, v3, :cond_16

    add-int/lit8 v3, v6, 0x1

    move v1, v6

    move v14, v3

    :goto_f
    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/com2us/wrapper/font/CSGLFont;->b:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v4, 0x1

    int-to-float v5, v10

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v6, v12, v6

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move v8, v12

    goto/16 :goto_3

    :cond_14
    move v1, v3

    goto :goto_e

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_16
    move v1, v3

    move v14, v3

    goto :goto_f

    :cond_17
    move v3, v7

    goto :goto_d

    :pswitch_3
    move v1, v5

    move v3, v6

    move v5, v7

    goto/16 :goto_a

    :pswitch_4
    move v1, v5

    move v5, v7

    goto/16 :goto_5

    :cond_18
    move v15, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getStringWidthHeightInRect([BIIII[I)I
    .locals 15

    :try_start_0
    new-instance v7, Ljava/lang/String;

    iget-object v1, p0, Lcom/com2us/wrapper/font/CSGLFont;->h:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    and-int/lit8 v7, p3, -0x5

    sget-object v8, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v8, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    iget-object v8, p0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    move/from16 v0, p2

    int-to-float v9, v0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v8, p0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object v1, p0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v7, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v11, v7

    iget v7, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v8, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, v8, v1

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x2

    add-int v7, v11, v1

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1b

    add-int/lit8 v1, v1, 0x1

    move v9, v1

    :goto_1
    const/4 v1, 0x4

    packed-switch p5, :pswitch_data_0

    :cond_0
    const/4 v2, 0x0

    aput v6, p6, v2

    const/4 v2, 0x1

    aput v1, p6, v2

    const/4 v1, 0x0

    aget v1, p6, v1

    :goto_2
    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    add-int v1, v5, v7

    if-le v1, v4, :cond_9

    sub-int v1, v4, v7

    :goto_3
    if-ge v2, v1, :cond_3

    const/16 v8, 0xa

    add-int v13, v7, v2

    invoke-interface {v10, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v8, v13, :cond_a

    :cond_3
    if-ge v2, v5, :cond_4

    add-int/lit8 v5, v2, 0x1

    :cond_4
    iget-object v2, p0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    add-int v1, v7, v3

    if-le v1, v4, :cond_b

    move v1, v4

    :goto_4
    invoke-virtual {v2, v10, v7, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-ge v6, v2, :cond_1a

    move v1, v2

    :goto_5
    add-int v6, v7, v5

    const/4 v5, 0x0

    add-int v3, v12, v9

    move v7, v6

    move v6, v1

    move v1, v3

    move v3, v5

    :goto_6
    if-ge v7, v4, :cond_0

    add-int v12, v1, v11

    const/4 v1, 0x0

    move v8, v2

    move v5, v3

    move v3, v1

    move v2, v4

    move v1, v7

    :goto_7
    if-le v1, v2, :cond_5

    move/from16 v0, p4

    if-le v8, v0, :cond_2

    :cond_5
    if-le v1, v2, :cond_6

    move v1, v2

    :cond_6
    add-int v3, v1, v2

    shr-int/lit8 v8, v3, 0x1

    iget-object v13, p0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    add-int v3, v7, v8

    if-le v3, v4, :cond_7

    move v3, v4

    :goto_8
    invoke-virtual {v13, v10, v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move/from16 v0, p4

    if-gt v3, v0, :cond_8

    add-int/lit8 v1, v8, 0x1

    move v5, v8

    move v14, v3

    move v3, v8

    move v8, v14

    goto :goto_7

    :cond_7
    add-int v3, v7, v8

    goto :goto_8

    :cond_8
    add-int/lit8 v2, v8, -0x1

    move v14, v8

    move v8, v3

    move v3, v14

    goto :goto_7

    :cond_9
    move v1, v5

    goto :goto_3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    add-int v1, v7, v3

    goto :goto_4

    :cond_c
    add-int v1, v5, v2

    if-ge v1, v4, :cond_d

    const/4 v1, 0x1

    add-int v3, v5, v2

    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-ne v1, v3, :cond_d

    add-int/lit8 v2, v2, 0x1

    :cond_d
    const/4 v3, 0x0

    add-int v1, v2, v5

    if-le v1, v4, :cond_15

    sub-int v1, v4, v5

    :goto_9
    if-ge v3, v1, :cond_e

    const/16 v7, 0xa

    add-int v13, v5, v3

    invoke-interface {v10, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v7, v13, :cond_16

    :cond_e
    if-ge v3, v2, :cond_f

    add-int/lit8 v2, v3, 0x1

    :cond_f
    iget-object v3, p0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    add-int v1, v5, v8

    if-le v1, v4, :cond_17

    move v1, v4

    :goto_a
    invoke-virtual {v3, v10, v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ge v6, v3, :cond_18

    move v1, v3

    :goto_b
    move/from16 v0, p4

    if-le v1, v0, :cond_10

    move/from16 v1, p4

    :cond_10
    add-int v6, v5, v2

    const/4 v5, 0x0

    add-int v2, v12, v9

    move v14, v2

    move v2, v3

    move v3, v5

    move v5, v6

    move v6, v1

    move v1, v14

    :pswitch_0
    if-ge v5, v4, :cond_0

    add-int v12, v1, v11

    const/4 v1, 0x0

    move v8, v1

    move v7, v3

    move v1, v5

    move v3, v2

    move v2, v4

    :goto_c
    if-le v1, v2, :cond_11

    move/from16 v0, p4

    if-le v3, v0, :cond_19

    :cond_11
    if-le v1, v2, :cond_12

    move v1, v2

    :cond_12
    add-int v3, v1, v2

    shr-int/lit8 v8, v3, 0x1

    iget-object v13, p0, Lcom/com2us/wrapper/font/CSGLFont;->c:Landroid/graphics/Paint;

    add-int v3, v5, v8

    if-le v3, v4, :cond_13

    move v3, v4

    :goto_d
    invoke-virtual {v13, v10, v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move/from16 v0, p4

    if-gt v3, v0, :cond_14

    add-int/lit8 v1, v8, 0x1

    move v7, v8

    goto :goto_c

    :cond_13
    add-int v3, v5, v8

    goto :goto_d

    :cond_14
    add-int/lit8 v2, v8, -0x1

    goto :goto_c

    :goto_e
    const/4 v1, 0x1

    if-le v2, v1, :cond_c

    add-int v1, v5, v2

    if-ge v1, v4, :cond_c

    const/4 v1, 0x1

    add-int v3, v5, v2

    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/com2us/wrapper/font/CSGLFont;->a(Ljava/lang/Character;)Z

    move-result v3

    if-ne v1, v3, :cond_c

    add-int v1, v5, v2

    invoke-interface {v10, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_c

    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_15
    move v1, v2

    goto/16 :goto_9

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    :cond_17
    add-int v1, v5, v8

    goto/16 :goto_a

    :cond_18
    move v1, v6

    goto :goto_b

    :cond_19
    move v2, v7

    goto :goto_e

    :cond_1a
    move v1, v6

    goto/16 :goto_5

    :pswitch_1
    move v7, v5

    goto/16 :goto_6

    :cond_1b
    move v9, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
