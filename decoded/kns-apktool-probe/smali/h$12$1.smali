.class Lh$12$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lh$12$1;->a:Lh$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lh$12$1;->a:Lh$12;

    iget-object v0, v0, Lh$12;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lh$12$1;->a:Lh$12;

    iget-object v0, v0, Lh$12;->b:Lh;

    invoke-virtual {v0}, Lh;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh$12$1;->a:Lh$12;

    iget-object v0, v0, Lh$12;->b:Lh;

    invoke-static {v0, v1}, Lh;->a(Lh;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lh$12$1;->a:Lh$12;

    iget-object v0, v0, Lh$12;->b:Lh;

    invoke-static {v0}, Lh;->f(Lh;)Lcom/com2us/wrapper/ui/CTextInput$b;

    move-result-object v0

    iget-object v1, p0, Lh$12$1;->a:Lh$12;

    iget-object v1, v1, Lh$12;->b:Lh;

    invoke-static {v1}, Lh;->e(Lh;)I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/com2us/wrapper/ui/CTextInput$b;->a(II)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
