.class Lcom/com2us/wrapper/utility/CUtility$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    iput-object p1, p0, Lcom/com2us/wrapper/utility/CUtility$2$2;->a:Lcom/com2us/wrapper/utility/CUtility$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$2$2;->a:Lcom/com2us/wrapper/utility/CUtility$2;

    iget-object v0, v0, Lcom/com2us/wrapper/utility/CUtility$2;->d:Lcom/com2us/wrapper/utility/CUtility;

    invoke-static {v0}, Lcom/com2us/wrapper/utility/CUtility;->a(Lcom/com2us/wrapper/utility/CUtility;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "R.id.WebViewTouchLayout"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/com2us/wrapper/utility/CUtility;->nativeWebviewCB(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
