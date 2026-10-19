.class Lh$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->f(I)V
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

    iput-object p1, p0, Lh$4;->b:Lh;

    iput p2, p0, Lh$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lh$4;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    iget v1, p0, Lh$4;->a:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_1

    and-int/lit16 v1, v0, 0xff0

    if-eqz v1, :cond_0

    :goto_1
    and-int/lit16 v0, v0, -0xff1

    :goto_2
    iget-object v1, p0, Lh$4;->b:Lh;

    invoke-static {v1}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_2

    and-int/lit16 v1, v0, 0xff0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    :goto_3
    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_2
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_3

    and-int/lit16 v1, v0, 0xff0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    :goto_4
    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_3
    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_3
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, -0xff1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
