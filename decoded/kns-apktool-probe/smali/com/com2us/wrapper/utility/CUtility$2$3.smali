.class Lcom/com2us/wrapper/utility/CUtility$2$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/utility/CUtility$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/utility/CUtility$2;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/utility/CUtility$2;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/utility/CUtility$2$3;->a:Lcom/com2us/wrapper/utility/CUtility$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$2$3;->a:Lcom/com2us/wrapper/utility/CUtility$2;

    iget-object v0, v0, Lcom/com2us/wrapper/utility/CUtility$2;->d:Lcom/com2us/wrapper/utility/CUtility;

    invoke-static {v0}, Lcom/com2us/wrapper/utility/CUtility;->a(Lcom/com2us/wrapper/utility/CUtility;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "R.id.WebViewTouchLayout"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility$2$3;->a:Lcom/com2us/wrapper/utility/CUtility$2;

    iget-object v1, v1, Lcom/com2us/wrapper/utility/CUtility$2;->d:Lcom/com2us/wrapper/utility/CUtility;

    invoke-static {v1}, Lcom/com2us/wrapper/utility/CUtility;->a(Lcom/com2us/wrapper/utility/CUtility;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "R.id.webView"

    invoke-static {v2}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
