.class Lh$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lh;


# direct methods
.method constructor <init>(Lh;I)V
    .locals 0

    iput-object p1, p0, Lh$3;->b:Lh;

    iput p2, p0, Lh$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lh$3;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lh$3;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lh$3;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    return-void
.end method
