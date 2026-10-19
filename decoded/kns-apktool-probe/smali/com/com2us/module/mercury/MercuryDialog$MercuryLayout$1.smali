.class Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;
.super Ljava/lang/Object;
.source "MercuryDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;)Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v4, 0x1

    const v13, 0x3ce66666    # 0.028125f

    const v12, 0x3c5844d0    # 0.0132f

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setPadding(IIII)V

    .line 221
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$0(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$11(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/webkit/WebView;)V

    .line 222
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;

    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-direct {v1, v2}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 223
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 225
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mq_webview="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$12(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, "postStr":Ljava/lang/String;
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Mercury"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "postStr : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$6(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v9, v2}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 237
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$1(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setWebViewScrollLock(Z)V

    .line 240
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1$1;

    invoke-direct {v1, p0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1$1;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$13(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$0(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$14(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/widget/LinearLayout;)V

    .line 249
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setBackgroundColor(I)V

    .line 250
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-virtual {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 252
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$15(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$16(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/widget/FrameLayout;)V

    .line 253
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 254
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$9(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$9(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$17(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/widget/LinearLayout;)V

    .line 256
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$9(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 257
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$9(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$9(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->addView(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-virtual {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setWebViewBorder()Z

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$1(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "set Layout isFullBanner"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$18(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$19(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3df9999a

    mul-float v8, v0, v1

    .line 274
    .local v8, "buttonWidth":F
    move v7, v8

    .line 276
    .local v7, "buttonHegith":F
    const/4 v11, 0x0

    .line 277
    .local v11, "topPadding":F
    const/4 v10, 0x0

    .line 279
    .local v10, "rightPadding":F
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$18(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$19(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$18(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)I

    move-result v0

    int-to-float v0, v0

    mul-float v11, v0, v13

    .line 282
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$19(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)I

    move-result v0

    int-to-float v0, v0

    mul-float v10, v0, v12

    .line 298
    .end local v7    # "buttonHegith":F
    .end local v8    # "buttonWidth":F
    .end local v10    # "rightPadding":F
    .end local v11    # "topPadding":F
    :goto_1
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 264
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->addView(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog;->access$3(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$4(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setCloseButton(IIIIII)Z

    goto :goto_0

    .line 286
    .restart local v7    # "buttonHegith":F
    .restart local v8    # "buttonWidth":F
    .restart local v10    # "rightPadding":F
    .restart local v11    # "topPadding":F
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$19(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)I

    move-result v0

    int-to-float v0, v0

    mul-float v11, v0, v13

    .line 287
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$18(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    .line 292
    goto :goto_1

    .line 295
    .end local v7    # "buttonHegith":F
    .end local v8    # "buttonWidth":F
    .end local v10    # "rightPadding":F
    .end local v11    # "topPadding":F
    :cond_2
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "set Layout not isFullBanner"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
