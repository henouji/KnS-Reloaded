.class public Lc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc$a;
    }
.end annotation


# instance fields
.field private a:Lc$a;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc$a;->c:Lc$a;

    iput-object v0, p0, Lc;->a:Lc$a;

    const/16 v0, 0xa

    iput v0, p0, Lc;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lc;->a:Lc$a;

    sget-object v1, Lc$a;->c:Lc$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lc$a;->a:Lc$a;

    iput-object v0, p0, Lc;->a:Lc$a;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lc;->a:Lc$a;

    sget-object v2, Lc$a;->c:Lc$a;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lc;->a:Lc$a;

    sget-object v2, Lc$a;->b:Lc$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v1, v2, :cond_1

    :try_start_1
    iget v1, p0, Lc;->b:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_3
    sget-object v1, Lc$a;->c:Lc$a;

    iput-object v1, p0, Lc;->a:Lc$a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lc;->a:Lc$a;

    sget-object v1, Lc$a;->a:Lc$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lc$a;->b:Lc$a;

    iput-object v0, p0, Lc;->a:Lc$a;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
