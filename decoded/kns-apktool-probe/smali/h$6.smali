.class Lh$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->a(Z)V
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

    iput-object p1, p0, Lh$6;->b:Lh;

    iput-boolean p2, p0, Lh$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lh$6;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    and-int/lit16 v0, v2, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lh$6;->a:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lh$6;->b:Lh;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lh;->f(I)V

    iget-object v0, p0, Lh$6;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lh$6;->b:Lh;

    invoke-static {v1}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lh$6;->a:Z

    if-nez v3, :cond_0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh$6;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    and-int/lit16 v1, v2, -0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1
.end method
