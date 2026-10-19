.class public Lcom/com2us/module/mercury/MercuryDialog;
.super Landroid/app/Dialog;
.source "MercuryDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;
    }
.end annotation


# static fields
.field public static activity:Landroid/app/Activity;

.field public static logger:Lcom/com2us/module/util/Logger;


# instance fields
.field private bitmapClose:Landroid/graphics/Bitmap;

.field private bitmapWebViewBorder0o:Landroid/graphics/Bitmap;

.field private bitmapWebViewBorder1do:Landroid/graphics/Bitmap;

.field private bitmapWebViewBorder1so:Landroid/graphics/Bitmap;

.field private bitmapWebViewBorder2o:Landroid/graphics/Bitmap;

.field private closeButton:Landroid/widget/ImageView;

.field private closeHeight:I

.field private closeLayout:Landroid/widget/LinearLayout;

.field private closeWidth:I

.field private layoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;",
            ">;"
        }
    .end annotation
.end field

.field private layoutListCount:I

.field private mercury:Lcom/com2us/module/mercury/Mercury;

.field private mercuryBridge:Lcom/com2us/module/mercury/MercuryBridge;

.field private screenHeight:I

.field private screenWidth:I

.field private spinner:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    .line 58
    sput-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/com2us/module/mercury/Mercury;Landroid/app/Activity;)V
    .locals 3
    .param p1, "mercury"    # Lcom/com2us/module/mercury/Mercury;
    .param p2, "_activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    const v0, 0x1030011

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutList:Ljava/util/ArrayList;

    .line 60
    iput v2, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutListCount:I

    .line 62
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeButton:Landroid/widget/ImageView;

    .line 66
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->spinner:Landroid/app/ProgressDialog;

    .line 67
    iput v2, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeWidth:I

    .line 68
    iput v2, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeHeight:I

    .line 77
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapWebViewBorder0o:Landroid/graphics/Bitmap;

    .line 78
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapWebViewBorder1do:Landroid/graphics/Bitmap;

    .line 79
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapWebViewBorder1so:Landroid/graphics/Bitmap;

    .line 80
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapWebViewBorder2o:Landroid/graphics/Bitmap;

    .line 82
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapClose:Landroid/graphics/Bitmap;

    .line 83
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeLayout:Landroid/widget/LinearLayout;

    .line 87
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->mercuryBridge:Lcom/com2us/module/mercury/MercuryBridge;

    .line 90
    iput v2, p0, Lcom/com2us/module/mercury/MercuryDialog;->screenWidth:I

    .line 91
    iput v2, p0, Lcom/com2us/module/mercury/MercuryDialog;->screenHeight:I

    .line 100
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog;->mercury:Lcom/com2us/module/mercury/Mercury;

    .line 101
    sput-object p2, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    .line 102
    const-string v0, "Mercury"

    sget-object v1, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;Landroid/app/Activity;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    .line 104
    new-instance v0, Lcom/com2us/module/mercury/MercuryBridge;

    sget-object v1, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/com2us/module/mercury/MercuryBridge;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->mercuryBridge:Lcom/com2us/module/mercury/MercuryBridge;

    .line 106
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryProperties;->loadProperties(Landroid/content/Context;)V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/com2us/module/mercury/MercuryDialog;->setCancelable(Z)V

    .line 109
    new-instance v0, Lcom/com2us/module/mercury/MercuryDialog$1;

    invoke-direct {v0, p0}, Lcom/com2us/module/mercury/MercuryDialog$1;-><init>(Lcom/com2us/module/mercury/MercuryDialog;)V

    invoke-virtual {p0, v0}, Lcom/com2us/module/mercury/MercuryDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 122
    invoke-virtual {p0, v2}, Lcom/com2us/module/mercury/MercuryDialog;->setCanceledOnTouchOutside(Z)V

    .line 123
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/mercury/MercuryDialog;)Lcom/com2us/module/mercury/Mercury;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->mercury:Lcom/com2us/module/mercury/Mercury;

    return-object v0
.end method

.method static synthetic access$1(Lcom/com2us/module/mercury/MercuryDialog;)Lcom/com2us/module/mercury/MercuryBridge;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->mercuryBridge:Lcom/com2us/module/mercury/MercuryBridge;

    return-object v0
.end method

.method static synthetic access$10(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapClose:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$12(Lcom/com2us/module/mercury/MercuryDialog;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapClose:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$13(Lcom/com2us/module/mercury/MercuryDialog;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$14(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$15(Lcom/com2us/module/mercury/MercuryDialog;I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/com2us/module/mercury/MercuryDialog;->screenWidth:I

    return-void
.end method

.method static synthetic access$16(Lcom/com2us/module/mercury/MercuryDialog;I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/com2us/module/mercury/MercuryDialog;->screenHeight:I

    return-void
.end method

.method static synthetic access$17(Lcom/com2us/module/mercury/MercuryDialog;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->screenWidth:I

    return v0
.end method

.method static synthetic access$18(Lcom/com2us/module/mercury/MercuryDialog;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->screenHeight:I

    return v0
.end method

.method static synthetic access$19(Lcom/com2us/module/mercury/MercuryDialog;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog;->spinner:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->spinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$20(Lcom/com2us/module/mercury/MercuryDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$21(Lcom/com2us/module/mercury/MercuryDialog;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutListCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/com2us/module/mercury/MercuryDialog;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeWidth:I

    return v0
.end method

.method static synthetic access$4(Lcom/com2us/module/mercury/MercuryDialog;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeHeight:I

    return v0
.end method

.method static synthetic access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapWebViewBorder0o:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapWebViewBorder1do:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapWebViewBorder1so:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapWebViewBorder2o:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$9(Lcom/com2us/module/mercury/MercuryDialog;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeButton:Landroid/widget/ImageView;

    return-void
.end method

.method private close(Z)V
    .locals 4
    .param p1, "dialogOnly"    # Z

    .prologue
    .line 1112
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "close mercury dialog"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 1113
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Mercury"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "layoutListCount : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutListCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  , mercury.getWebViewCount() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryDialog;->mercury:Lcom/com2us/module/mercury/Mercury;

    invoke-virtual {v3}, Lcom/com2us/module/mercury/Mercury;->getWebViewCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutListCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutListCount:I

    .line 1116
    iget v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutListCount:I

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->mercury:Lcom/com2us/module/mercury/Mercury;

    invoke-virtual {v1}, Lcom/com2us/module/mercury/Mercury;->getWebViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutListCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/com2us/module/mercury/MercuryDialog;->setContentView(Landroid/view/View;)V

    .line 1119
    invoke-virtual {p0}, Lcom/com2us/module/mercury/MercuryDialog;->show()V

    .line 1130
    :goto_0
    return-void

    .line 1123
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutListCount:I

    .line 1124
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1125
    if-nez p1, :cond_1

    .line 1126
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->mercury:Lcom/com2us/module/mercury/Mercury;

    invoke-virtual {v0}, Lcom/com2us/module/mercury/Mercury;->close()V

    .line 1128
    :cond_1
    invoke-virtual {p0}, Lcom/com2us/module/mercury/MercuryDialog;->destroy()V

    goto :goto_0
.end method


# virtual methods
.method DPFromPixel(I)I
    .locals 3
    .param p1, "pixel"    # I

    .prologue
    .line 981
    sget-object v1, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 983
    .local v0, "scale":F
    int-to-float v1, p1

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method PixelFromDP(I)I
    .locals 3
    .param p1, "DP"    # I

    .prologue
    .line 988
    sget-object v1, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 990
    .local v0, "scale":F
    int-to-float v1, p1

    div-float/2addr v1, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public applyAnimation(Landroid/webkit/WebView;)Z
    .locals 17
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 901
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/mercury/MercuryDialog;->screenWidth:I

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/mercury/MercuryDialog;->screenHeight:I

    if-gtz v13, :cond_1

    .line 903
    :cond_0
    sget-object v13, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v14, "Mercury"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Error : ScreenSize is "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/module/mercury/MercuryDialog;->screenWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/module/mercury/MercuryDialog;->screenHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const/4 v13, 0x0

    .line 964
    :goto_0
    return v13

    .line 906
    :cond_1
    const-wide/16 v2, 0x12c

    .line 908
    .local v2, "animationDuration":J
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v13

    int-to-float v12, v13

    .line 909
    .local v12, "webViewWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v13

    int-to-float v9, v13

    .line 913
    .local v9, "webViewHeight":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/mercury/MercuryDialog;->screenWidth:I

    int-to-float v13, v13

    sub-float/2addr v13, v12

    float-to-int v13, v13

    div-int/lit8 v10, v13, 0x2

    .line 914
    .local v10, "webViewPosX":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/mercury/MercuryDialog;->screenHeight:I

    int-to-float v13, v13

    sub-float/2addr v13, v9

    float-to-int v13, v13

    div-int/lit8 v11, v13, 0x2

    .line 916
    .local v11, "webViewPosY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/mercury/MercuryDialog;->screenWidth:I

    int-to-float v13, v13

    div-float v6, v13, v12

    .line 917
    .local v6, "scaleToX":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/mercury/MercuryDialog;->screenHeight:I

    int-to-float v13, v13

    div-float v7, v13, v9

    .line 920
    .local v7, "scaleToY":F
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x1

    invoke-direct {v4, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 923
    .local v4, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v13, v6

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    div-float/2addr v15, v7

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-direct {v5, v13, v14, v15, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 924
    .local v5, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v14, 0x12c

    invoke-virtual {v5, v14, v15}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 925
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 928
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    int-to-float v13, v10

    const/4 v14, 0x0

    int-to-float v15, v11

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v8, v13, v14, v15, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 929
    .local v8, "transAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v14, 0x12c

    invoke-virtual {v8, v14, v15}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 930
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 932
    invoke-virtual {v4, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 936
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 937
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 964
    const/4 v13, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/com2us/module/mercury/MercuryDialog;->close(Z)V

    .line 1105
    return-void
.end method

.method public closeDialogOnly()V
    .locals 1

    .prologue
    .line 1108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/com2us/module/mercury/MercuryDialog;->close(Z)V

    .line 1109
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->spinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1090
    :cond_0
    invoke-virtual {p0}, Lcom/com2us/module/mercury/MercuryDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    invoke-virtual {p0}, Lcom/com2us/module/mercury/MercuryDialog;->dismiss()V

    .line 1092
    :cond_1
    return-void
.end method

.method getInch()D
    .locals 8

    .prologue
    .line 995
    sget-object v5, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 997
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v1, v5, v6

    .line 998
    .local v1, "x":F
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v4, v5, v6

    .line 999
    .local v4, "y":F
    mul-float v5, v1, v1

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 1001
    .local v2, "inch":D
    return-wide v2
.end method

.method public getLayoutListsize()I
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public initMercuryLayout(Lorg/json/JSONObject;I)V
    .locals 2
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "count"    # I

    .prologue
    .line 974
    new-instance v0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    sget-object v1, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;-><init>(Lcom/com2us/module/mercury/MercuryDialog;Landroid/app/Activity;)V

    .line 975
    .local v0, "layout":Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;
    invoke-virtual {v0, p1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->init(Lorg/json/JSONObject;)V

    .line 976
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->layoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 977
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1005
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1007
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/mercury/MercuryDialog$2;

    invoke-direct {v1, p0}, Lcom/com2us/module/mercury/MercuryDialog$2;-><init>(Lcom/com2us/module/mercury/MercuryDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1054
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x0

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "_bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "_bitmap1"    # Landroid/graphics/Bitmap;
    .param p3, "_bitmap2"    # Landroid/graphics/Bitmap;
    .param p4, "_bitmap3"    # Landroid/graphics/Bitmap;
    .param p5, "_bitmap4"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    .line 1064
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    sget-object v1, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeWidth:I

    .line 1065
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    sget-object v1, Lcom/com2us/module/mercury/MercuryDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeHeight:I

    .line 1066
    iget v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeWidth:I

    iget v1, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeHeight:I

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapClose:Landroid/graphics/Bitmap;

    .line 1068
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_bitmap.getWidth() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 1069
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeWidth : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 1070
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_bitmap.getHeight() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 1071
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeHeight : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/com2us/module/mercury/MercuryDialog;->closeHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 1078
    iput-object p2, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapWebViewBorder0o:Landroid/graphics/Bitmap;

    .line 1079
    iput-object p3, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapWebViewBorder1do:Landroid/graphics/Bitmap;

    .line 1080
    iput-object p4, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapWebViewBorder1so:Landroid/graphics/Bitmap;

    .line 1081
    iput-object p5, p0, Lcom/com2us/module/mercury/MercuryDialog;->bitmapWebViewBorder2o:Landroid/graphics/Bitmap;

    .line 1083
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1095
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "show mercury dialog"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 1096
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1101
    return-void
.end method
