.class Le$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Le;

.field private b:Le$b;

.field private c:F


# direct methods
.method public constructor <init>(Le;Le$b;F)V
    .locals 0

    iput-object p1, p0, Le$a;->a:Le;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le$a;->b:Le$b;

    iput p3, p0, Le$a;->c:F

    return-void
.end method


# virtual methods
.method public a()Le$b;
    .locals 1

    iget-object v0, p0, Le$a;->b:Le$b;

    return-object v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Le$a;->c:F

    return v0
.end method
