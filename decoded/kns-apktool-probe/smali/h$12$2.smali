.class Lh$12$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh$12;


# direct methods
.method constructor <init>(Lh$12;)V
    .locals 0

    iput-object p1, p0, Lh$12$2;->a:Lh$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lh$12$2;->a:Lh$12;

    iget-object v1, v1, Lh$12;->b:Lh;

    invoke-static {v1, p2}, Lh;->a(Lh;Z)Z

    iget-object v1, p0, Lh$12$2;->a:Lh$12;

    iget-object v1, v1, Lh$12;->b:Lh;

    invoke-static {v1}, Lh;->f(Lh;)Lcom/com2us/wrapper/ui/CTextInput$b;

    move-result-object v1

    iget-object v2, p0, Lh$12$2;->a:Lh$12;

    iget-object v2, v2, Lh$12;->b:Lh;

    invoke-static {v2}, Lh;->e(Lh;)I

    move-result v2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v1, v2, v0}, Lcom/com2us/wrapper/ui/CTextInput$b;->a(II)V

    return-void
.end method
