.class Lh$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->b(I)V
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

    iput-object p1, p0, Lh$17;->b:Lh;

    iput p2, p0, Lh$17;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lh$17;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lh$17;->b:Lh;

    invoke-static {v1}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, -0x8

    iget-object v2, p0, Lh$17;->b:Lh;

    invoke-static {v2}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v2

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
