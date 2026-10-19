.class Lh$19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->a([I)V
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

    iput-object p1, p0, Lh$19;->b:Lh;

    iput-object p2, p0, Lh$19;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lh$19;->b:Lh;

    invoke-static {v0}, Lh;->a(Lh;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lh$19;->b:Lh;

    invoke-static {v1}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lh$19;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lh$19;->a:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lh$19;->a:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lh$19;->a:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/com2us/wrapper/function/CFunction;->setControlByPX(Landroid/view/View;Landroid/view/View;IIII)V

    return-void
.end method
