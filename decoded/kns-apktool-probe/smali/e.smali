.class public abstract Le;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le$1;,
        Le$a;,
        Le$b;
    }
.end annotation


# instance fields
.field protected a:F

.field protected b:Z

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Le$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Le;->c:Ljava/util/Vector;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Le;->a:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Le;->b:Z

    return-void
.end method


# virtual methods
.method public a(Le$b;F)V
    .locals 2

    iget-object v0, p0, Le;->c:Ljava/util/Vector;

    new-instance v1, Le$a;

    invoke-direct {v1, p0, p1, p2}, Le$a;-><init>(Le;Le$b;F)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract a(I)Z
.end method

.method public abstract a(Z)Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()V
.end method

.method public abstract f()I
.end method

.method public abstract g()Z
.end method

.method public h()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Le;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le$a;

    sget-object v2, Le$1;->a:[I

    invoke-virtual {v0}, Le$a;->a()Le$b;

    move-result-object v3

    invoke-virtual {v3}, Le$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0}, Le$a;->b()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Le;->a(Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Le;->b()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Le;->c()Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Le;->d()Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Le;->e()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public i()V
    .locals 2

    :goto_0
    iget-object v0, p0, Le;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Le;->h()V

    goto :goto_0

    :cond_0
    return-void
.end method
