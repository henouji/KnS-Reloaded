.class Lcom/com2us/module/offerwall/OfferwallDialog$3;
.super Ljava/lang/Object;
.source "OfferwallDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/offerwall/OfferwallDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/offerwall/OfferwallDialog;


# direct methods
.method constructor <init>(Lcom/com2us/module/offerwall/OfferwallDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/offerwall/OfferwallDialog$3;)Lcom/com2us/module/offerwall/OfferwallDialog;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x14

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 129
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    new-instance v5, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$5(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/widget/FrameLayout;)V

    .line 130
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$6(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/FrameLayout;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$6(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 133
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    new-instance v5, Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$7(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/webkit/WebView;)V

    .line 134
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$0(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/webkit/WebView;

    move-result-object v4

    new-instance v5, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallWebViewClient;

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-direct {v5, v6}, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallWebViewClient;-><init>(Lcom/com2us/module/offerwall/OfferwallDialog;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 135
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$0(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/webkit/WebView;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$0(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 137
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$0(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$0(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 139
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$0(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/webkit/WebView;

    move-result-object v4

    new-instance v5, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallBridge;

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    iget-object v7, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v7}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallBridge;-><init>(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/app/Activity;)V

    const-string v6, "OfferwallListFilterManager"

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$0(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 142
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-virtual {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->loadURL()V

    .line 144
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-virtual {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->getInch()D

    move-result-wide v2

    .line 146
    .local v2, "inch":D
    const-wide/high16 v4, 0x401a000000000000L    # 6.5

    cmpg-double v4, v4, v2

    if-gez v4, :cond_0

    .line 148
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    const/high16 v5, 0x41c00000    # 24.0f

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v10, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$8(Lcom/com2us/module/offerwall/OfferwallDialog;I)V

    .line 149
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    const/high16 v5, 0x41c00000    # 24.0f

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v10, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$9(Lcom/com2us/module/offerwall/OfferwallDialog;I)V

    .line 150
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    iget-object v5, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$10(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$11(Lcom/com2us/module/offerwall/OfferwallDialog;)I

    move-result v6

    iget-object v7, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v7}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$12(Lcom/com2us/module/offerwall/OfferwallDialog;)I

    move-result v7

    invoke-static {v5, v6, v7, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$13(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/graphics/Bitmap;)V

    .line 159
    :goto_0
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$15(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/widget/ImageView;)V

    .line 160
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$16(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$17(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$16(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 162
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$16(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/ImageView;

    move-result-object v4

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 163
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$16(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 164
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$16(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-virtual {v5, v13}, Lcom/com2us/module/offerwall/OfferwallDialog;->DPFromPixel(I)I

    move-result v5

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-virtual {v6, v13}, Lcom/com2us/module/offerwall/OfferwallDialog;->DPFromPixel(I)I

    move-result v6

    iget-object v7, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-virtual {v7, v13}, Lcom/com2us/module/offerwall/OfferwallDialog;->DPFromPixel(I)I

    move-result v7

    iget-object v8, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-virtual {v8, v13}, Lcom/com2us/module/offerwall/OfferwallDialog;->DPFromPixel(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 165
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$16(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Lcom/com2us/module/offerwall/OfferwallDialog$3$1;

    invoke-direct {v5, p0}, Lcom/com2us/module/offerwall/OfferwallDialog$3$1;-><init>(Lcom/com2us/module/offerwall/OfferwallDialog$3;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$16(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "closeLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v12, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    .local v1, "closeLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x35

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 178
    const-wide/high16 v4, 0x401a000000000000L    # 6.5

    cmpg-double v4, v4, v2

    if-gez v4, :cond_1

    .line 180
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->DPFromPixel(I)I

    move-result v4

    iget-object v5, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-virtual {v5, v13}, Lcom/com2us/module/offerwall/OfferwallDialog;->DPFromPixel(I)I

    move-result v5

    invoke-virtual {v1, v9, v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 187
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$16(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$6(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$0(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 191
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$6(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    new-instance v5, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$18(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/app/ProgressDialog;)V

    .line 194
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$3(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 195
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$3(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/ProgressDialog;

    move-result-object v4

    const-string v5, "Loading..."

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-direct {v5, v11, v11, v6, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$19(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/view/animation/Animation;)V

    .line 198
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$20(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/view/animation/Animation;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 200
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-direct {v5, v11, v11, v11, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$21(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/view/animation/Animation;)V

    .line 201
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$22(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/view/animation/Animation;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 202
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v4}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$22(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/view/animation/Animation;

    move-result-object v4

    new-instance v5, Lcom/com2us/module/offerwall/OfferwallDialog$3$2;

    invoke-direct {v5, p0}, Lcom/com2us/module/offerwall/OfferwallDialog$3$2;-><init>(Lcom/com2us/module/offerwall/OfferwallDialog$3;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 220
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    iget-object v5, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$6(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->setContentView(Landroid/view/View;)V

    .line 222
    return-void

    .line 154
    .end local v0    # "closeLayout":Landroid/widget/LinearLayout;
    .end local v1    # "closeLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    const/high16 v5, 0x41980000    # 19.0f

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v10, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$8(Lcom/com2us/module/offerwall/OfferwallDialog;I)V

    .line 155
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    const/high16 v5, 0x41980000    # 19.0f

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$1(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v10, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$9(Lcom/com2us/module/offerwall/OfferwallDialog;I)V

    .line 156
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    iget-object v5, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$14(Lcom/com2us/module/offerwall/OfferwallDialog;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$11(Lcom/com2us/module/offerwall/OfferwallDialog;)I

    move-result v6

    iget-object v7, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    invoke-static {v7}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$12(Lcom/com2us/module/offerwall/OfferwallDialog;)I

    move-result v7

    invoke-static {v5, v6, v7, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$13(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 184
    .restart local v0    # "closeLayout":Landroid/widget/LinearLayout;
    .restart local v1    # "closeLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/com2us/module/offerwall/OfferwallDialog;->DPFromPixel(I)I

    move-result v4

    iget-object v5, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/com2us/module/offerwall/OfferwallDialog;->DPFromPixel(I)I

    move-result v5

    invoke-virtual {v1, v9, v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1
.end method
