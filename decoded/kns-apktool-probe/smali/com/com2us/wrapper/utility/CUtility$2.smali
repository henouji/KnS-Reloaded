.class Lcom/com2us/wrapper/utility/CUtility$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/utility/CUtility;->makeWebView(Ljava/lang/String;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/com2us/wrapper/utility/CUtility;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/utility/CUtility;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/utility/CUtility$2;->d:Lcom/com2us/wrapper/utility/CUtility;

    iput p2, p0, Lcom/com2us/wrapper/utility/CUtility$2;->a:I

    iput p3, p0, Lcom/com2us/wrapper/utility/CUtility$2;->b:I

    iput-object p4, p0, Lcom/com2us/wrapper/utility/CUtility$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/16 v4, 0x60

    const/16 v5, 0x36

    const/16 v10, 0xd

    const/4 v7, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$2;->d:Lcom/com2us/wrapper/utility/CUtility;

    invoke-static {v0}, Lcom/com2us/wrapper/utility/CUtility;->a(Lcom/com2us/wrapper/utility/CUtility;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "R.id.WebViewTouchLayout"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility$2;->d:Lcom/com2us/wrapper/utility/CUtility;

    invoke-static {v1}, Lcom/com2us/wrapper/utility/CUtility;->a(Lcom/com2us/wrapper/utility/CUtility;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "R.id.WebViewLayout"

    invoke-static {v2}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/com2us/wrapper/utility/CUtility$2;->d:Lcom/com2us/wrapper/utility/CUtility;

    invoke-static {v2}, Lcom/com2us/wrapper/utility/CUtility;->a(Lcom/com2us/wrapper/utility/CUtility;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "R.id.webView"

    invoke-static {v3}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/com2us/wrapper/utility/CUtility$2;->d:Lcom/com2us/wrapper/utility/CUtility;

    invoke-static {v3}, Lcom/com2us/wrapper/utility/CUtility;->a(Lcom/com2us/wrapper/utility/CUtility;)Landroid/app/Activity;

    move-result-object v3

    const-string v6, "R.id.webViewCancel"

    invoke-static {v6}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const-string v0, "WRAPPER"

    const-string v1, "WebView Warning - Please merge to latest version \'res/layout/main.xml\' "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    new-instance v6, Lcom/com2us/wrapper/utility/CUtility$2$1;

    invoke-direct {v6, p0}, Lcom/com2us/wrapper/utility/CUtility$2$1;-><init>(Lcom/com2us/wrapper/utility/CUtility$2;)V

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-static {}, Lcom/com2us/wrapper/utility/CUtility;->a()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/com2us/wrapper/utility/CUtility$2$2;

    invoke-direct {v7, p0}, Lcom/com2us/wrapper/utility/CUtility$2$2;-><init>(Lcom/com2us/wrapper/utility/CUtility$2;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {v9}, Lcom/com2us/wrapper/utility/CUtility;->a(Z)Z

    :cond_2
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperData;->getInstance()Lcom/com2us/wrapper/kernel/CWrapperData;

    move-result-object v6

    iget v7, p0, Lcom/com2us/wrapper/utility/CUtility$2;->a:I

    invoke-virtual {v6}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDisplayWidth()I

    move-result v8

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/com2us/wrapper/utility/CUtility$2;->b:I

    invoke-virtual {v6}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDisplayHeight()I

    move-result v6

    if-ne v7, v6, :cond_5

    :cond_3
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/com2us/wrapper/utility/CUtility$2;->a:I

    iget v8, p0, Lcom/com2us/wrapper/utility/CUtility$2;->b:I

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v6, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/high16 v1, 0x2000000

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v6, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearFormData()V

    invoke-virtual {v2, v9}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setClickable(Z)V

    const-string v1, "R.drawable.webview_close_button"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "R.drawable.webview_close_button"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_4
    iget v1, p0, Lcom/com2us/wrapper/utility/CUtility$2;->a:I

    div-int/lit8 v1, v1, 0xa

    if-le v1, v4, :cond_6

    move v1, v4

    :goto_2
    iget v4, p0, Lcom/com2us/wrapper/utility/CUtility$2;->b:I

    div-int/lit8 v4, v4, 0xa

    if-le v4, v5, :cond_7

    move v4, v5

    :goto_3
    if-ge v1, v4, :cond_8

    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x4

    move v11, v4

    move v4, v1

    move v1, v11

    :goto_4
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v1, Lcom/com2us/wrapper/utility/CUtility$2$3;

    invoke-direct {v1, p0}, Lcom/com2us/wrapper/utility/CUtility$2$3;-><init>(Lcom/com2us/wrapper/utility/CUtility$2;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/com2us/wrapper/utility/CUtility$2;->c:Ljava/lang/String;

    const-string v4, "vnd.youtube:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/com2us/wrapper/utility/CUtility$2;->c:Ljava/lang/String;

    const-string v4, "market:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$2;->c:Ljava/lang/String;

    const-string v3, "(?i).*http://.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$2;->c:Ljava/lang/String;

    const-string v3, "(?i).*https://.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Lcom/com2us/wrapper/utility/CUtility$a;

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility$2;->d:Lcom/com2us/wrapper/utility/CUtility;

    iget-object v3, p0, Lcom/com2us/wrapper/utility/CUtility$2;->d:Lcom/com2us/wrapper/utility/CUtility;

    invoke-static {v3}, Lcom/com2us/wrapper/utility/CUtility;->a(Lcom/com2us/wrapper/utility/CUtility;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/com2us/wrapper/utility/CUtility$a;-><init>(Lcom/com2us/wrapper/utility/CUtility;Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto/16 :goto_0

    :cond_5
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/com2us/wrapper/utility/CUtility$2;->a:I

    add-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/com2us/wrapper/utility/CUtility$2;->b:I

    add-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_6
    iget v1, p0, Lcom/com2us/wrapper/utility/CUtility$2;->a:I

    div-int/lit8 v1, v1, 0xa

    goto/16 :goto_2

    :cond_7
    iget v4, p0, Lcom/com2us/wrapper/utility/CUtility$2;->b:I

    div-int/lit8 v4, v4, 0xa

    goto/16 :goto_3

    :cond_8
    mul-int/lit8 v1, v4, 0x4

    div-int/lit8 v1, v1, 0x3

    move v11, v4

    move v4, v1

    move v1, v11

    goto/16 :goto_4

    :cond_9
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_a
    move-object v0, v1

    goto :goto_5
.end method
