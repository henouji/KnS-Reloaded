.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;
.super Ljava/lang/Object;
.source "AgreementUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OuterTextBox"
.end annotation


# instance fields
.field agreebtnParams:Landroid/widget/RelativeLayout$LayoutParams;

.field agreementBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

.field innerTextBox:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;

.field innerTextBoxParams:Landroid/widget/RelativeLayout$LayoutParams;

.field layout:Landroid/widget/RelativeLayout;

.field layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field linkTV:Landroid/widget/TextView;

.field linkTVParams:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

.field titleTV:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

.field titleTVParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "positiveAgreementStr"    # Ljava/lang/String;
    .param p7, "negativeAgreementStr"    # Ljava/lang/String;
    .param p8, "detailStr"    # Ljava/lang/String;
    .param p9, "url"    # Ljava/lang/String;
    .param p10, "index"    # I

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layout:Landroid/widget/RelativeLayout;

    .line 1080
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1081
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layout:Landroid/widget/RelativeLayout;

    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1086
    new-instance v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    invoke-direct {v1, p1, p2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTV:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    .line 1087
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTV:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    add-int/lit8 v2, p10, 0x1

    invoke-virtual {v1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setId(I)V

    .line 1088
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTV:Landroid/widget/TextView;

    .line 1089
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTV:Landroid/widget/TextView;

    add-int/lit8 v2, p10, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 1091
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTVParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1092
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTVParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1093
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTVParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1094
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTVParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1095
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTVParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$10(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1097
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTV:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$11(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setTextColor(I)V

    .line 1098
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTV:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {p1, v3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$12(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;F)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setTextSize(IF)V

    .line 1099
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTV:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    invoke-virtual {v1, p4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTV:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTVParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1101
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTV:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setMaxLines(I)V

    .line 1102
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTV:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$13(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$14(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setFitTextToBox(Ljava/lang/Boolean;I)V

    .line 1104
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTV:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1107
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTVParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1108
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTVParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1109
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTVParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1110
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTVParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$14(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1111
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTVParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$10(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1114
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTV:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$15(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1115
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTV:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {p1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$12(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1116
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTV:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<u>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTVParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTV:Landroid/widget/TextView;

    new-instance v2, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox$1;

    move-object/from16 v0, p9

    invoke-direct {v2, p0, p4, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox$1;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->linkTV:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1129
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->agreebtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1131
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->agreebtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1132
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->agreebtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1134
    new-instance v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    add-int/lit8 v7, p10, 0x64

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->agreementBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    .line 1135
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->agreementBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->agreebtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1136
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->agreementBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1140
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->innerTextBoxParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1141
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->innerTextBoxParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->titleTV:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;

    invoke-virtual {v3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1142
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->innerTextBoxParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->agreementBtn:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    invoke-virtual {v3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1143
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->innerTextBoxParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x14

    invoke-static {p1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$14(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1145
    new-instance v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;

    move/from16 v0, p10

    add-int/lit16 v2, v0, 0xc8

    invoke-direct {v1, p1, p2, p5, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->innerTextBox:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;

    .line 1146
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->innerTextBox:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;

    invoke-virtual {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->innerTextBoxParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1148
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->innerTextBox:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;

    invoke-virtual {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1150
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    return-object v0
.end method


# virtual methods
.method public getLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public setOrientationChange(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, -0x1

    .line 1158
    packed-switch p1, :pswitch_data_0

    .line 1161
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1162
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$17(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1172
    :goto_0
    return-void

    .line 1166
    :pswitch_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$18(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1167
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1158
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
