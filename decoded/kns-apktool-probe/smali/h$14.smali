.class Lh$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh;


# direct methods
.method constructor <init>(Lh;)V
    .locals 0

    iput-object p1, p0, Lh$14;->a:Lh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lh$14;->a:Lh;

    invoke-static {v0}, Lh;->h(Lh;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh$14;->a:Lh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh;->a(Lh;Z)Z

    iget-object v0, p0, Lh$14;->a:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    invoke-static {}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->getInstance()Lcom/com2us/wrapper/ui/CSoftKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->hideKeyboardForcedly()Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lh$14;->a:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lh$14;->a:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lh$14;->a:Lh;

    invoke-static {v1}, Lh;->g(Lh;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lh$14;->a:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lh$14;->a:Lh;

    invoke-static {v0}, Lh;->a(Lh;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lh$14;->a:Lh;

    invoke-static {v1}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lh$14;->a:Lh;

    invoke-static {v0}, Lh;->c(Lh;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lh$14;->a:Lh;

    invoke-static {v1}, Lh;->a(Lh;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
