.class Lh$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->i(I)V
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

    iput-object p1, p0, Lh$9;->b:Lh;

    iput p2, p0, Lh$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lh$9;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lh$9;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lh$9;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->getInputType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :pswitch_1
    and-int/lit16 v0, v0, -0x7001

    iget-object v1, p0, Lh$9;->b:Lh;

    invoke-static {v1}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
