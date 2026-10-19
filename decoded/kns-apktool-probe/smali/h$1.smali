.class Lh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->a([II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lh;


# direct methods
.method constructor <init>(Lh;[I)V
    .locals 0

    iput-object p1, p0, Lh$1;->b:Lh;

    iput-object p2, p0, Lh$1;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lh$1;->b:Lh;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lh;->a(Lh;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v1, p0, Lh$1;->b:Lh;

    invoke-static {v1}, Lh;->a(Lh;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lh$1;->b:Lh;

    new-instance v2, Lcom/com2us/wrapper/ui/CCustomEditText;

    invoke-direct {v2, v0}, Lcom/com2us/wrapper/ui/CCustomEditText;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lh;->a(Lh;Landroid/widget/EditText;)Landroid/widget/EditText;

    iget-object v0, p0, Lh$1;->b:Lh;

    invoke-virtual {v0, v4}, Lh;->d(Z)V

    iget-object v0, p0, Lh$1;->b:Lh;

    invoke-static {v0}, Lh;->a(Lh;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lh$1;->b:Lh;

    invoke-static {v1}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lh$1;->b:Lh;

    invoke-static {v0}, Lh;->a(Lh;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lh$1;->b:Lh;

    invoke-static {v1}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lh$1;->a:[I

    aget v2, v2, v4

    iget-object v3, p0, Lh$1;->a:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lh$1;->a:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lh$1;->a:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/com2us/wrapper/function/CFunction;->setControlByPX(Landroid/view/View;Landroid/view/View;IIII)V

    iget-object v0, p0, Lh$1;->b:Lh;

    invoke-static {v0}, Lh;->c(Lh;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lh$1;->b:Lh;

    invoke-static {v1}, Lh;->a(Lh;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
