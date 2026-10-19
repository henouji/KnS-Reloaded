.class Lh$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->d(Z)V
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

    iput-object p1, p0, Lh$11;->b:Lh;

    iput-boolean p2, p0, Lh$11;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lh$11;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh$11;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh$11;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method
