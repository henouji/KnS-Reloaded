.class Lh$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lh;


# direct methods
.method constructor <init>(Lh;Z)V
    .locals 0

    iput-object p1, p0, Lh$7;->b:Lh;

    iput-boolean p2, p0, Lh$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lh$7;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh$7;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lh$7;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->getInstance()Lcom/com2us/wrapper/ui/CSoftKeyboard;

    move-result-object v0

    iget-object v1, p0, Lh$7;->b:Lh;

    invoke-static {v1}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->showKeyboard(Landroid/widget/TextView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lh$7;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lh$7;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh$7;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    invoke-static {}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->getInstance()Lcom/com2us/wrapper/ui/CSoftKeyboard;

    move-result-object v0

    iget-object v1, p0, Lh$7;->b:Lh;

    invoke-static {v1}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->hideKeyboard(Landroid/widget/TextView;)V

    goto :goto_0
.end method
