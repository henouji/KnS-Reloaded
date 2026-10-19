.class Lh$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->g(I)V
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

    iput-object p1, p0, Lh$5;->b:Lh;

    iput p2, p0, Lh$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lh$5;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x2

    :goto_1
    iget-object v1, p0, Lh$5;->b:Lh;

    invoke-static {v1}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getImeOptions()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    iget-object v2, p0, Lh$5;->b:Lh;

    invoke-static {v2}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v2

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
