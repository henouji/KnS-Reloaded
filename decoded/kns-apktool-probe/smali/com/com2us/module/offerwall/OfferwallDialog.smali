.class public Lcom/com2us/module/offerwall/OfferwallDialog;
.super Landroid/app/Dialog;
.source "OfferwallDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallBridge;,
        Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallWebViewClient;
    }
.end annotation


# static fields
.field public static logger:Lcom/com2us/module/util/Logger;


# instance fields
.field private activity:Landroid/app/Activity;

.field private bitmapClose:Landroid/graphics/Bitmap;

.field private bitmapPhone:Landroid/graphics/Bitmap;

.field private bitmapTablet:Landroid/graphics/Bitmap;

.field private closeAnimation:Landroid/view/animation/Animation;

.field private closeButton:Landroid/widget/ImageView;

.field private closeHeight:I

.field private closeWidth:I

.field private dialogLayout:Landroid/widget/FrameLayout;

.field private offerwall:Lcom/com2us/module/offerwall/Offerwall;

.field private openAnimation:Landroid/view/animation/Animation;

.field private spinner:Landroid/app/ProgressDialog;

.field private targetURL:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/module/offerwall/OfferwallDialog;->logger:Lcom/com2us/module/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/com2us/module/offerwall/Offerwall;Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "offerwall"    # Lcom/com2us/module/offerwall/Offerwall;
    .param p2, "_activity"    # Landroid/app/Activity;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "_bitmapPhone"    # Landroid/graphics/Bitmap;
    .param p5, "_bitmapTablet"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    const v0, 0x1030011

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    iput-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->activity:Landroid/app/Activity;

    .line 42
    iput-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->webView:Landroid/webkit/WebView;

    .line 43
    iput-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeButton:Landroid/widget/ImageView;

    .line 44
    iput-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->dialogLayout:Landroid/widget/FrameLayout;

    .line 45
    iput-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->openAnimation:Landroid/view/animation/Animation;

    .line 46
    iput-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeAnimation:Landroid/view/animation/Animation;

    .line 48
    iput-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->targetURL:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->spinner:Landroid/app/ProgressDialog;

    .line 50
    iput v2, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeWidth:I

    .line 51
    iput v2, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeHeight:I

    .line 53
    iput-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->bitmapClose:Landroid/graphics/Bitmap;

    .line 54
    iput-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->bitmapPhone:Landroid/graphics/Bitmap;

    .line 55
    iput-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->bitmapTablet:Landroid/graphics/Bitmap;

    .line 60
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->offerwall:Lcom/com2us/module/offerwall/Offerwall;

    .line 61
    iput-object p2, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->activity:Landroid/app/Activity;

    .line 62
    const-string v0, "Offerwall"

    iget-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;Landroid/app/Activity;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/offerwall/OfferwallDialog;->logger:Lcom/com2us/module/util/Logger;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/com2us/module/offerwall/OfferwallDialog;->setCancelable(Z)V

    .line 66
    new-instance v0, Lcom/com2us/module/offerwall/OfferwallDialog$1;

    invoke-direct {v0, p0}, Lcom/com2us/module/offerwall/OfferwallDialog$1;-><init>(Lcom/com2us/module/offerwall/OfferwallDialog;)V

    invoke-virtual {p0, v0}, Lcom/com2us/module/offerwall/OfferwallDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/com2us/module/offerwall/OfferwallDialog;->setCanceledOnTouchOutside(Z)V

    .line 81
    iput-object p3, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->targetURL:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->bitmapPhone:Landroid/graphics/Bitmap;

    .line 83
    iput-object p5, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->bitmapTablet:Landroid/graphics/Bitmap;

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$10(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->bitmapTablet:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$11(Lcom/com2us/module/offerwall/OfferwallDialog;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeWidth:I

    return v0
.end method

.method static synthetic access$12(Lcom/com2us/module/offerwall/OfferwallDialog;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeHeight:I

    return v0
.end method

.method static synthetic access$13(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->bitmapClose:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$14(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->bitmapPhone:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$15(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeButton:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$16(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->bitmapClose:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$18(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->spinner:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$19(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->openAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic access$2(Lcom/com2us/module/offerwall/OfferwallDialog;)Lcom/com2us/module/offerwall/Offerwall;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->offerwall:Lcom/com2us/module/offerwall/Offerwall;

    return-object v0
.end method

.method static synthetic access$20(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->openAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$21(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic access$22(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->spinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/com2us/module/offerwall/OfferwallDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->targetURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->dialogLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic access$6(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->dialogLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$8(Lcom/com2us/module/offerwall/OfferwallDialog;I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeWidth:I

    return-void
.end method

.method static synthetic access$9(Lcom/com2us/module/offerwall/OfferwallDialog;I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeHeight:I

    return-void
.end method


# virtual methods
.method DPFromPixel(I)I
    .locals 3
    .param p1, "pixel"    # I

    .prologue
    .line 88
    iget-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 90
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
    .line 95
    iget-object v1, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 97
    .local v0, "scale":F
    int-to-float v1, p1

    div-float/2addr v1, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "close offerwall dialog"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->closeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/offerwall/OfferwallDialog$5;

    invoke-direct {v1, p0}, Lcom/com2us/module/offerwall/OfferwallDialog$5;-><init>(Lcom/com2us/module/offerwall/OfferwallDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 267
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->spinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/com2us/module/offerwall/OfferwallDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/com2us/module/offerwall/OfferwallDialog;->dismiss()V

    .line 238
    :cond_1
    return-void
.end method

.method getInch()D
    .locals 8

    .prologue
    .line 102
    iget-object v5, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 104
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v1, v5, v6

    .line 105
    .local v1, "x":F
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v4, v5, v6

    .line 106
    .local v4, "y":F
    mul-float v5, v1, v1

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 108
    .local v2, "inch":D
    return-wide v2
.end method

.method public loadURL()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/offerwall/OfferwallDialog$2;

    invoke-direct {v1, p0}, Lcom/com2us/module/offerwall/OfferwallDialog$2;-><init>(Lcom/com2us/module/offerwall/OfferwallDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/offerwall/OfferwallDialog$3;

    invoke-direct {v1, p0}, Lcom/com2us/module/offerwall/OfferwallDialog$3;-><init>(Lcom/com2us/module/offerwall/OfferwallDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "show offerwall dialog"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 242
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 243
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->openAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/offerwall/OfferwallDialog$4;

    invoke-direct {v1, p0}, Lcom/com2us/module/offerwall/OfferwallDialog$4;-><init>(Lcom/com2us/module/offerwall/OfferwallDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    return-void
.end method
