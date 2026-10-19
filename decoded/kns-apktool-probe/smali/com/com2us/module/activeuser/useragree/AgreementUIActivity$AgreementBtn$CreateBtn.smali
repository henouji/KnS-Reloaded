.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;
.super Landroid/widget/RelativeLayout;
.source "AgreementUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateBtn"
.end annotation


# instance fields
.field public buttonType:I

.field checkView:Landroid/widget/ImageView;

.field public isChecked:Z

.field leftView:Landroid/widget/ImageView;

.field middleView:Landroid/widget/ImageView;

.field rightView:Landroid/widget/ImageView;

.field textView:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

.field final synthetic this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;


# direct methods
.method public constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;Landroid/content/Context;IILjava/lang/String;)V
    .locals 14
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "buttonType"    # I
    .param p4, "index"    # I
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    .line 1435
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1424
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->isChecked:Z

    .line 1437
    move/from16 v0, p3

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->buttonType:I

    .line 1439
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1440
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1441
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->setId(I)V

    .line 1443
    new-instance v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1444
    .local v2, "layout":Landroid/widget/RelativeLayout;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1445
    .local v7, "sublayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v9

    const/16 v10, 0x16

    invoke-static {v9, v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$14(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v9

    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1446
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1449
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1450
    .local v4, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0x9

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1452
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->leftView:Landroid/widget/ImageView;

    .line 1453
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->leftView:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1454
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->leftView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$31(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1455
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->leftView:Landroid/widget/ImageView;

    add-int/lit8 v10, p4, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 1457
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->leftView:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1460
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1461
    .local v6, "rightParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xb

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1463
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->rightView:Landroid/widget/ImageView;

    .line 1464
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->rightView:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1465
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->rightView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$32(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1466
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->rightView:Landroid/widget/ImageView;

    add-int/lit8 v10, p4, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 1468
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->rightView:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1471
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1472
    .local v5, "middleParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->leftView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getId()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1473
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->rightView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getId()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1475
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->middleView:Landroid/widget/ImageView;

    .line 1476
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->middleView:Landroid/widget/ImageView;

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1477
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->middleView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$33(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1478
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->middleView:Landroid/widget/ImageView;

    add-int/lit8 v10, p4, 0x3

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 1479
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->middleView:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1481
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->middleView:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1484
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1485
    .local v8, "textViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1486
    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1488
    new-instance v9, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-direct {v9, v10, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->textView:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    .line 1489
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->textView:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    invoke-virtual {v9, v8}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1490
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->textView:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    const/4 v10, 0x1

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v11

    const/high16 v12, 0x41c80000    # 25.0f

    invoke-static {v11, v12}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$12(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;F)F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setTextSize(IF)V

    .line 1491
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->textView:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setMaxLines(I)V

    .line 1497
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->textView:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v10

    const/16 v11, 0x14

    invoke-static {v10, v11}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$10(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v12

    const/16 v13, 0x14

    invoke-static {v12, v13}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$10(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setPadding(IIII)V

    .line 1498
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->textView:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$33(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v12

    const/16 v13, 0x1e

    invoke-static {v12, v13}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$14(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setFitTextToBox(Ljava/lang/Boolean;I)V

    .line 1500
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->textView:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$34(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setTextColor(I)V

    .line 1501
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->textView:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1503
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->textView:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1506
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1507
    .local v1, "checkParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0x9

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1508
    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$10(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v9

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1509
    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v9

    const/16 v10, 0xf

    invoke-static {v9, v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$14(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v9

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1511
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->checkView:Landroid/widget/ImageView;

    .line 1512
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->checkView:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1513
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->checkView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$35(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1514
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->checkView:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1516
    invoke-virtual {p0, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->addView(Landroid/view/View;)V

    .line 1518
    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->checkView:Landroid/widget/ImageView;

    invoke-virtual {p0, v9}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->addView(Landroid/view/View;)V

    .line 1520
    new-instance v9, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn$1;

    invoke-direct {v9, p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn$1;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;)V

    invoke-virtual {p0, v9}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1528
    return-void
.end method


# virtual methods
.method public clicked(Z)V
    .locals 3
    .param p1, "isSendSuper"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1531
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->isChecked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->isChecked:Z

    .line 1533
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->isChecked:Z

    if-eqz v0, :cond_2

    .line 1534
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->leftView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$36(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1535
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->rightView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$37(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1536
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->middleView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$38(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1537
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->textView:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$39(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setTextColor(I)V

    .line 1538
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->checkView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1540
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    iget v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->buttonType:I

    iget-boolean v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->isChecked:Z

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->superClicked(IZ)V

    .line 1551
    :cond_0
    :goto_1
    return-void

    .line 1531
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1543
    :cond_2
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->leftView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$31(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1544
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->rightView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$32(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1545
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->middleView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$33(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1546
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->textView:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$34(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setTextColor(I)V

    .line 1547
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->checkView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1549
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    iget v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->buttonType:I

    iget-boolean v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->isChecked:Z

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->superClicked(IZ)V

    goto :goto_1
.end method
