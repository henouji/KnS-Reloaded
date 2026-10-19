.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;
.super Landroid/widget/RelativeLayout;
.source "AgreementUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AgreementBtn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;
    }
.end annotation


# static fields
.field public static final NEGATIVE_BTN:I = 0x1

.field public static final POSITIVE_BTN:I


# instance fields
.field public index:I

.field public negativeBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

.field public positiveBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

.field public superChecked:Z

.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;


# direct methods
.method public constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p4, "positiveText"    # Ljava/lang/String;
    .param p5, "negativeText"    # Ljava/lang/String;
    .param p6, "index"    # I

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    .line 1382
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1372
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->superChecked:Z

    .line 1374
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->positiveBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    .line 1375
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->negativeBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    .line 1384
    move/from16 v0, p6

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->index:I

    .line 1385
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->setId(I)V

    .line 1387
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1388
    .local v7, "linear":Landroid/widget/LinearLayout;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v8, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1389
    .local v8, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1390
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1391
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1392
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1394
    new-instance v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    const/4 v4, 0x0

    add-int/lit8 v5, p6, 0xa

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;Landroid/content/Context;IILjava/lang/String;)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->positiveBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    .line 1396
    if-eqz p3, :cond_0

    .line 1397
    new-instance v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    const/4 v4, 0x1

    add-int/lit8 v5, p6, 0x14

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;Landroid/content/Context;IILjava/lang/String;)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->negativeBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    .line 1399
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1400
    .local v11, "positiveInnerLinear":Landroid/widget/LinearLayout;
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v12, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1401
    .local v12, "positiveInnerLinearParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1402
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1403
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$10(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1404
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->positiveBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1406
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1407
    .local v9, "negativeInnerLinear":Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v10, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1408
    .local v10, "negativeInnerLinearParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1409
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1410
    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$10(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1411
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->negativeBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1413
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1414
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1419
    .end local v9    # "negativeInnerLinear":Landroid/widget/LinearLayout;
    .end local v10    # "negativeInnerLinearParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "positiveInnerLinear":Landroid/widget/LinearLayout;
    .end local v12    # "positiveInnerLinearParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    invoke-virtual {p0, v7}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->addView(Landroid/view/View;)V

    .line 1420
    return-void

    .line 1417
    :cond_0
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->positiveBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    return-object v0
.end method


# virtual methods
.method public superClicked(IZ)V
    .locals 4
    .param p1, "buttonType"    # I
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1556
    if-eqz p2, :cond_2

    .line 1557
    packed-switch p1, :pswitch_data_0

    .line 1563
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->positiveBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->positiveBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    iget-boolean v1, v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->isChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->positiveBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    invoke-virtual {v1, v3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->clicked(Z)V

    .line 1567
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->superChecked:Z

    .line 1569
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->index:I

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$40(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)Lorg/json/JSONArray;

    move-result-object v0

    .line 1570
    .local v0, "agreementCheckList":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 1571
    const-string v1, "agreement_checked_list"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 1574
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    iput-boolean v3, v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->destroyParentActivity:Z

    .line 1575
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$5(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeAgreementUI(I)V

    .line 1581
    .end local v0    # "agreementCheckList":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    return-void

    .line 1559
    :pswitch_0
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->negativeBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->negativeBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    iget-boolean v1, v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->isChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->negativeBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    invoke-virtual {v1, v3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->clicked(Z)V

    goto :goto_0

    .line 1579
    :cond_2
    iput-boolean v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->superChecked:Z

    goto :goto_1

    .line 1557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
