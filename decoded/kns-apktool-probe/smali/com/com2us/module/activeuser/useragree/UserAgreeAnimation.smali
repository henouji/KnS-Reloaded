.class public Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;
.super Ljava/lang/Object;
.source "UserAgreeAnimation.java"


# instance fields
.field final boardDown:Landroid/widget/RelativeLayout;

.field final boardTop:Landroid/widget/RelativeLayout;

.field final bodyLayout:Landroid/widget/RelativeLayout;

.field closeBodyDuration:J

.field displayHeight:I

.field displayWidth:I

.field hideTitleDuration:J

.field isAnimation:Z

.field isOpened:Z

.field final mainLayout:Landroid/view/ViewGroup;

.field openBodyDuration:J

.field showTitleDuration:J

.field final thiz:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

.field final titleHeight:I

.field xDP:F

.field yDP:F


# direct methods
.method public constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/view/ViewGroup;FFIII)V
    .locals 6
    .param p1, "thiz"    # Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
    .param p2, "mainLayout"    # Landroid/view/ViewGroup;
    .param p3, "xDP"    # F
    .param p4, "yDP"    # F
    .param p5, "displayWidth"    # I
    .param p6, "displayHeight"    # I
    .param p7, "titleHeight"    # I

    .prologue
    const-wide/16 v4, 0x2ee

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide v4, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->showTitleDuration:J

    .line 30
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->openBodyDuration:J

    .line 31
    iput-wide v4, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeBodyDuration:J

    .line 32
    iput-wide v4, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->hideTitleDuration:J

    .line 34
    iput-boolean v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->isOpened:Z

    .line 35
    iput-boolean v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->isAnimation:Z

    .line 50
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->thiz:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    .line 51
    iput-object p2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->mainLayout:Landroid/view/ViewGroup;

    .line 52
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->bodyLayout:Landroid/widget/RelativeLayout;

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardTop:Landroid/widget/RelativeLayout;

    .line 54
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardDown:Landroid/widget/RelativeLayout;

    .line 55
    iput p3, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->xDP:F

    .line 56
    iput p4, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    .line 57
    iput p5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->displayWidth:I

    .line 58
    iput p6, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->displayHeight:I

    .line 59
    iput p7, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->titleHeight:I

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->openBodyAnimation()V

    return-void
.end method

.method static synthetic access$1(Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;I)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->hideTitleAnimation(I)V

    return-void
.end method

.method private closeBodyAnimation(I)V
    .locals 17
    .param p1, "msg"    # I

    .prologue
    .line 171
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    add-long v12, v4, v6

    .line 173
    .local v12, "time":J
    const/4 v2, 0x0

    .line 174
    .local v2, "transAni1":Landroid/view/animation/TranslateAnimation;
    const/4 v3, 0x0

    .line 176
    .local v3, "transAni2":Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "transAni1":Landroid/view/animation/TranslateAnimation;
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->displayHeight:I

    .end local v3    # "transAni2":Landroid/view/animation/TranslateAnimation;
    int-to-float v10, v10

    const/high16 v11, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    mul-float/2addr v11, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->titleHeight:I

    mul-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    add-float/2addr v11, v14

    const/high16 v14, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    mul-float/2addr v14, v15

    sub-float/2addr v11, v14

    sub-float/2addr v10, v11

    neg-float v10, v10

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 177
    .restart local v2    # "transAni1":Landroid/view/animation/TranslateAnimation;
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->displayHeight:I

    int-to-float v11, v11

    const/high16 v14, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->titleHeight:I

    mul-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    add-float/2addr v14, v15

    const/high16 v15, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    sub-float/2addr v11, v14

    neg-float v11, v11

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 178
    .restart local v3    # "transAni2":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeBodyDuration:J

    const-wide/16 v6, 0x32

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 179
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeBodyDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 180
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 181
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 182
    new-instance v4, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$3;-><init>(Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;I)V

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardDown:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->bodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 196
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 197
    invoke-virtual {v3, v12, v13}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardDown:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->bodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 203
    return-void
.end method

.method private hideTitleAnimation(I)V
    .locals 17
    .param p1, "msg"    # I

    .prologue
    .line 206
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xa

    add-long v14, v6, v8

    .line 208
    .local v14, "time":J
    const/4 v2, 0x0

    .line 209
    .local v2, "transAni0":Landroid/view/animation/TranslateAnimation;
    const/4 v3, 0x0

    .line 210
    .local v3, "transAni1":Landroid/view/animation/TranslateAnimation;
    const/4 v4, 0x0

    .line 212
    .local v4, "transAni2":Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "transAni0":Landroid/view/animation/TranslateAnimation;
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, -0x42333333    # -0.1f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 213
    .end local v3    # "transAni1":Landroid/view/animation/TranslateAnimation;
    .end local v4    # "transAni2":Landroid/view/animation/TranslateAnimation;
    .restart local v2    # "transAni0":Landroid/view/animation/TranslateAnimation;
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->titleHeight:I

    mul-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    neg-float v11, v11

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 214
    .restart local v3    # "transAni1":Landroid/view/animation/TranslateAnimation;
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->displayHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->titleHeight:I

    mul-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    const/high16 v12, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    sub-float/2addr v10, v11

    neg-float v10, v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->displayHeight:I

    int-to-float v12, v12

    const/high16 v13, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    move/from16 v16, v0

    mul-float v13, v13, v16

    add-float/2addr v12, v13

    neg-float v12, v12

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 216
    .restart local v4    # "transAni2":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->hideTitleDuration:J

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 217
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->hideTitleDuration:J

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 218
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->hideTitleDuration:J

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 219
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 220
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 221
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 222
    new-instance v5, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$4;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$4;-><init>(Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;I)V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->mainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->invalidate()V

    .line 238
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardDown:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 241
    invoke-virtual {v2, v14, v15}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 242
    invoke-virtual {v3, v14, v15}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 243
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 248
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->mainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardDown:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 251
    return-void
.end method

.method private openBodyAnimation()V
    .locals 13

    .prologue
    .line 138
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    add-long v10, v2, v4

    .line 140
    .local v10, "time":J
    const/4 v0, 0x0

    .line 141
    .local v0, "transAni1":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    .line 143
    .local v1, "transAni2":Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "transAni1":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->displayHeight:I

    .end local v1    # "transAni2":Landroid/view/animation/TranslateAnimation;
    int-to-float v6, v6

    const/high16 v7, 0x41a00000    # 20.0f

    iget v8, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->titleHeight:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/high16 v8, 0x41200000    # 10.0f

    iget v9, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    neg-float v6, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 144
    .restart local v0    # "transAni1":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->displayHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x41a00000    # 20.0f

    iget v9, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->titleHeight:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x41200000    # 10.0f

    iget v12, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    mul-float/2addr v9, v12

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    neg-float v7, v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 145
    .restart local v1    # "transAni2":Landroid/view/animation/TranslateAnimation;
    iget-wide v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->openBodyDuration:J

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 146
    iget-wide v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->openBodyDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 147
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 148
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 149
    new-instance v2, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$2;

    invoke-direct {v2, p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$2;-><init>(Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 160
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardDown:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 161
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->bodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 162
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 163
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 166
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardDown:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->bodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 168
    return-void
.end method

.method private showTitleAnimation()V
    .locals 18

    .prologue
    .line 93
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    add-long v14, v6, v8

    .line 95
    .local v14, "time":J
    const/4 v2, 0x0

    .line 96
    .local v2, "transAni0":Landroid/view/animation/TranslateAnimation;
    const/4 v3, 0x0

    .line 97
    .local v3, "transAni1":Landroid/view/animation/TranslateAnimation;
    const/4 v4, 0x0

    .line 99
    .local v4, "transAni2":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->bodyLayout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "transAni0":Landroid/view/animation/TranslateAnimation;
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, -0x42333333    # -0.1f

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 102
    .end local v3    # "transAni1":Landroid/view/animation/TranslateAnimation;
    .end local v4    # "transAni2":Landroid/view/animation/TranslateAnimation;
    .restart local v2    # "transAni0":Landroid/view/animation/TranslateAnimation;
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->titleHeight:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    neg-float v9, v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 103
    .restart local v3    # "transAni1":Landroid/view/animation/TranslateAnimation;
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->displayHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    neg-float v10, v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->displayHeight:I

    int-to-float v12, v12

    const/high16 v13, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    move/from16 v16, v0

    mul-float v13, v13, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->titleHeight:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v13, v13, v16

    const/high16 v16, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v13, v13, v16

    sub-float/2addr v12, v13

    neg-float v12, v12

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 105
    .restart local v4    # "transAni2":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->showTitleDuration:J

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 106
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->showTitleDuration:J

    const-wide/16 v8, 0x32

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 107
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->showTitleDuration:J

    const-wide/16 v8, 0x32

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 108
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 109
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 110
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 111
    new-instance v5, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$1;-><init>(Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->mainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->invalidate()V

    .line 123
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 124
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardDown:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 125
    invoke-virtual {v2, v14, v15}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 126
    invoke-virtual {v3, v14, v15}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 127
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 132
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->mainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->boardDown:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 135
    return-void
.end method


# virtual methods
.method public closeAgreementUI(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->isOpened:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->isAnimation:Z

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->isOpened:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeBodyAnimation(I)V

    goto :goto_0
.end method

.method public configurationChanged()V
    .locals 3

    .prologue
    .line 80
    iget v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->xDP:F

    .line 81
    .local v1, "tempDP":F
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->xDP:F

    .line 82
    iput v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->yDP:F

    .line 84
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->thiz:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-virtual {v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->displayWidth:I

    .line 88
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->displayHeight:I

    .line 89
    return-void
.end method

.method public openAgreementUI()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->isOpened:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->isAnimation:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->isOpened:Z

    .line 66
    invoke-direct {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->showTitleAnimation()V

    goto :goto_0
.end method
