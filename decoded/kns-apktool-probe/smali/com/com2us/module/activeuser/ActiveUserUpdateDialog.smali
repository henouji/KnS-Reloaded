.class public Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;
.super Landroid/app/Dialog;
.source "ActiveUserUpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;
    }
.end annotation


# instance fields
.field private height:I

.field private mlistener:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "recvConfigurationData"    # Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;

    .prologue
    const/16 v1, 0x2b2

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->mlistener:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;

    .line 34
    iput v1, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    .line 35
    iput v1, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0, v2}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->setCancelable(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 48
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->processSize(Landroid/app/Activity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->createUI(Landroid/app/Activity;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;Landroid/view/WindowManager$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->setContentView(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;)Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->mlistener:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;

    return-object v0
.end method

.method private createUI(Landroid/app/Activity;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;Landroid/view/WindowManager$LayoutParams;)Landroid/view/View;
    .locals 30
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "recvConfigurationData"    # Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;
    .param p3, "dialogParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 63
    new-instance v15, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    .local v15, "mainLayout":Landroid/widget/RelativeLayout;
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v16, "mainLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v17, "mainView":Landroid/widget/ImageView;
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v18, "mainViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v25, "titleTextView":Landroid/widget/TextView;
    new-instance v24, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v24, "titleParam":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v20, "msgTextView":Landroid/widget/TextView;
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v19, "msgParam":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v23, Landroid/widget/ScrollView;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v23, "scrollView":Landroid/widget/ScrollView;
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v22, "scrollParam":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    .local v7, "button":Landroid/widget/TextView;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v10, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v10, "buttonParam":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v9, "buttonShadow":Landroid/widget/TextView;
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v11, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v11, "buttonShadowParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    const/16 v4, 0x3e9

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 89
    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    const/16 v21, 0x14

    .line 94
    .local v21, "roundRadius":I
    const/high16 v13, -0x1000000

    .line 96
    .local v13, "fillColor":I
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 97
    .local v14, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v14, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 98
    move/from16 v0, v21

    int-to-float v4, v0

    invoke-virtual {v14, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 100
    const/16 v4, 0xb2

    invoke-virtual {v14, v4}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 102
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 103
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 112
    const/16 v4, 0xa

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    const/16 v4, 0xe

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    int-to-double v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0x3fa999999999999aL    # 0.05

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 116
    const/16 v4, 0x3ea

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setId(I)V

    .line 117
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_title:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    move-object/from16 v0, p0

    iget v4, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    int-to-double v4, v4

    const-wide v26, 0x3fb999999999999aL    # 0.1

    mul-double v4, v4, v26

    double-to-int v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    int-to-double v0, v6

    move-wide/from16 v26, v0

    const-wide v28, 0x3fb999999999999aL    # 0.1

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v6, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 120
    const/16 v4, 0xe8

    const/16 v5, 0xc4

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    int-to-double v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0x3fb47ae147ae147bL    # 0.08

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 122
    const/16 v4, 0x11

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 124
    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 125
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 127
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 131
    const/16 v4, 0xc

    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 132
    const/16 v4, 0xe

    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    move-object/from16 v0, p0

    iget v4, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    int-to-double v4, v4

    const-wide v26, 0x3fa47ae147ae147bL    # 0.04

    mul-double v4, v4, v26

    double-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    int-to-double v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0x3faeb851eb851eb8L    # 0.06

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    int-to-double v0, v6

    move-wide/from16 v26, v0

    const-wide v28, 0x3fa47ae147ae147bL    # 0.04

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3faeb851eb851eb8L    # 0.06

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v10, v4, v5, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 135
    const/16 v4, 0x3eb

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setId(I)V

    .line 136
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_button:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const/high16 v4, -0x1000000

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    int-to-double v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0x3fb47ae147ae147bL    # 0.08

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v5, v0

    int-to-float v5, v5

    invoke-virtual {v7, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 139
    const/16 v4, 0x11

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 140
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 141
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 142
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 145
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    move-object/from16 v0, p0

    iget v4, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    int-to-double v4, v4

    const-wide v26, 0x3fb999999999999aL    # 0.1

    mul-double v4, v4, v26

    double-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    int-to-double v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    int-to-double v0, v6

    move-wide/from16 v26, v0

    const-wide v28, 0x3fb999999999999aL    # 0.1

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v7, v4, v5, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 148
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 149
    .local v8, "button_gd":Landroid/graphics/drawable/GradientDrawable;
    const/16 v4, 0xe8

    const/16 v5, 0xc4

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 150
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 152
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    .line 153
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :goto_1
    new-instance v4, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;-><init>(Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;Landroid/app/Activity;Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/TextView;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    new-instance v4, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;-><init>(Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;Landroid/app/Activity;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    int-to-double v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0x3fb47ae147ae147bL    # 0.08

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v5, v0

    int-to-float v5, v5

    invoke-virtual {v9, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 241
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 242
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    const/16 v4, 0xc

    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 246
    move-object/from16 v0, p0

    iget v4, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    int-to-double v4, v4

    const-wide v26, 0x3fa47ae147ae147bL    # 0.04

    mul-double v4, v4, v26

    double-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    int-to-double v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0x3faeb851eb851eb8L    # 0.06

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    int-to-double v0, v6

    move-wide/from16 v26, v0

    const-wide v28, 0x3fa47ae147ae147bL    # 0.04

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fa47ae147ae147bL    # 0.04

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v11, v4, v5, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 247
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    move-object/from16 v0, p0

    iget v4, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    int-to-double v4, v4

    const-wide v26, 0x3fc3333333333333L    # 0.15

    mul-double v4, v4, v26

    double-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    int-to-double v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    int-to-double v0, v6

    move-wide/from16 v26, v0

    const-wide v28, 0x3fc3333333333333L    # 0.15

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v9, v4, v5, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 250
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 251
    .local v12, "buttonShadow_gd":Landroid/graphics/drawable/GradientDrawable;
    const/16 v4, 0x9d

    const/16 v5, 0x85

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 252
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 253
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 254
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 261
    :goto_2
    invoke-virtual {v15, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 265
    const/4 v4, 0x3

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getId()I

    move-result v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 266
    const/4 v4, 0x2

    invoke-virtual {v7}, Landroid/widget/TextView;->getId()I

    move-result v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 267
    const/16 v4, 0xe

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 268
    move-object/from16 v0, p0

    iget v4, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    int-to-double v4, v4

    const-wide v26, 0x3fb999999999999aL    # 0.1

    mul-double v4, v4, v26

    double-to-int v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    int-to-double v0, v6

    move-wide/from16 v26, v0

    const-wide v28, 0x3fb999999999999aL    # 0.1

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v6, v0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 270
    const/16 v4, 0x3ec

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setId(I)V

    .line 271
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 275
    const/16 v4, 0x3ed

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setId(I)V

    .line 276
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_message:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    int-to-double v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0x3faeb851eb851eb8L    # 0.06

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    const/4 v4, 0x7

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 281
    const/4 v4, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 284
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 286
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 289
    const/16 v4, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    return-object v15

    .line 105
    .end local v8    # "button_gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v12    # "buttonShadow_gd":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 155
    .restart local v8    # "button_gd":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 256
    .restart local v12    # "buttonShadow_gd":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method private processSize(Landroid/app/Activity;)Landroid/view/WindowManager$LayoutParams;
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v8, 0x2b2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    .line 298
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 300
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 301
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 303
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 304
    .local v3, "width":I
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 306
    .local v1, "height":I
    if-le v3, v8, :cond_0

    const/16 v3, 0x2b2

    .line 307
    :cond_0
    if-le v1, v8, :cond_1

    const/16 v1, 0x2b2

    .line 308
    :cond_1
    if-le v3, v1, :cond_2

    move v3, v1

    .line 311
    :goto_0
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 312
    int-to-double v4, v1

    const-wide v6, 0x3fe8f5c28f5c28f6L    # 0.78

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 314
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->width:I

    .line 315
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->height:I

    .line 317
    return-object v2

    .line 309
    :cond_2
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public setOnFinishListener(Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->mlistener:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;

    .line 57
    return-void
.end method
