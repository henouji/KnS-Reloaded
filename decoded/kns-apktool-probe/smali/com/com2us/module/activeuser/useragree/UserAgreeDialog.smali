.class public Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;
.super Landroid/app/Dialog;
.source "UserAgreeDialog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;,
        Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$WebViewType;
    }
.end annotation


# static fields
.field static final DIMENSIONS_DIFF_LANDSCAPE:[F

.field static final DIMENSIONS_DIFF_PORTRAIT:[F


# instance fields
.field private closeBitmap:Landroid/graphics/Bitmap;

.field private volatile destroyed:Z

.field private logger:Lcom/com2us/module/util/Logger;

.field private logoBitmap:Landroid/graphics/Bitmap;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mainLayout:Landroid/widget/LinearLayout;

.field private scale:F

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 43
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 44
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    return-void

    .line 43
    :array_0
    .array-data 4
        0x41c80000    # 25.0f
        0x41c80000    # 25.0f
    .end array-data

    .line 44
    :array_1
    .array-data 4
        0x41c80000    # 25.0f
        0x41c80000    # 25.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->destroyed:Z

    .line 64
    const-string v0, "ActiveUser"

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->logger:Lcom/com2us/module/util/Logger;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Lcom/com2us/module/util/Logger;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->logger:Lcom/com2us/module/util/Logger;

    return-object v0
.end method

.method static synthetic access$1(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->destroyed:Z

    return v0
.end method

.method private createTitle()V
    .locals 8

    .prologue
    const/4 v6, -0x2

    .line 157
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->requestWindowFeature(I)Z

    .line 159
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 162
    .local v2, "layout":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 163
    .local v4, "titleView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->logoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, "closeView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->closeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v5, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$2;

    invoke-direct {v5, p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$2;-><init>(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    .local v3, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 189
    .local v0, "closeParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 192
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    const/16 v5, 0xa7

    const/16 v6, 0xa9

    const/16 v7, 0xab

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 202
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    return-void
.end method

.method private createWebView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 230
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, "layout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 232
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->webView:Landroid/webkit/WebView;

    .line 234
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->webView:Landroid/webkit/WebView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;-><init>(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 236
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 245
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    return-void
.end method

.method private createWebViewForKindle()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 212
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, "layout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->webView:Landroid/webkit/WebView;

    .line 216
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->webView:Landroid/webkit/WebView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;-><init>(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$UserAgreeWebViewClient;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 218
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 220
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->destroyed:Z

    .line 149
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->dismiss()V

    .line 154
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 256
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->destroy()V

    .line 257
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x400

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 70
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 77
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 79
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 78
    iput v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->scale:F

    .line 81
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    .line 83
    .local v3, "orientation":I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 84
    sget-object v0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 86
    .local v0, "dimensions":[F
    :goto_0
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 87
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v10}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 88
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mSpinner:Landroid/app/ProgressDialog;

    const-string v6, "Loading..."

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mSpinner:Landroid/app/ProgressDialog;

    new-instance v6, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$1;

    invoke-direct {v6, p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$1;-><init>(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)V

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 101
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 104
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mainLayout:Landroid/widget/LinearLayout;

    .line 105
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 108
    invoke-direct {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->createTitle()V

    .line 110
    invoke-virtual {p0, v8}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->setCanceledOnTouchOutside(Z)V

    .line 116
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Kindle Fire"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->createWebViewForKindle()V

    .line 118
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mainLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :goto_1
    return-void

    .line 84
    .end local v0    # "dimensions":[F
    :cond_0
    sget-object v0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    goto :goto_0

    .line 121
    .restart local v0    # "dimensions":[F
    :cond_1
    invoke-direct {p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->createWebView()V

    .line 123
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 125
    .local v4, "point":Landroid/graphics/Point;
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_2
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->mainLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    iget v7, v4, Landroid/graphics/Point;->x:I

    aget v8, v0, v8

    iget v9, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->scale:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v11

    float-to-int v8, v8

    sub-int/2addr v7, v8

    .line 133
    iget v8, v4, Landroid/graphics/Point;->y:I

    aget v9, v0, v10

    iget v10, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->scale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    sub-int/2addr v8, v9

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    invoke-virtual {p0, v5, v6}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "ignore":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 128
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 262
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 268
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "logo"    # Landroid/graphics/Bitmap;
    .param p2, "button"    # Landroid/graphics/Bitmap;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->logoBitmap:Landroid/graphics/Bitmap;

    .line 144
    iput-object p2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->closeBitmap:Landroid/graphics/Bitmap;

    .line 145
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->url:Ljava/lang/String;

    .line 140
    return-void
.end method
