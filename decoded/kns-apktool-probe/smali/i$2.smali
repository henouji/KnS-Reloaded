.class Li$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li;


# direct methods
.method constructor <init>(Li;)V
    .locals 0

    iput-object p1, p0, Li$2;->a:Li;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Li$2;->a:Li;

    invoke-static {v0}, Li;->b(Li;)Lcom/com2us/wrapper/ui/CUserInput$b;

    move-result-object v0

    iget-object v1, p0, Li$2;->a:Li;

    invoke-static {v1}, Li;->a(Li;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/com2us/wrapper/ui/CUserInput$b;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Li$2;->a:Li;

    invoke-static {v0}, Li;->b(Li;)Lcom/com2us/wrapper/ui/CUserInput$b;

    move-result-object v0

    iget-object v1, p0, Li$2;->a:Li;

    invoke-static {v1}, Li;->c(Li;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/com2us/wrapper/ui/CUserInput$b;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
