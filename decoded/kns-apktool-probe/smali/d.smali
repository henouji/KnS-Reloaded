.class public Ld;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld$a;,
        Ld$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ld$b;",
            "Ld$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ld$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ld;->a:Ljava/util/HashMap;

    sget-object v0, Ld$b;->a:Ld$b;

    sput-object v0, Ld;->b:Ld$b;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Ld;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static a(Ld$b;)V
    .locals 2

    sput-object p0, Ld;->b:Ld$b;

    sget-object v0, Ld;->a:Ljava/util/HashMap;

    sget-object v1, Ld;->b:Ld$b;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld$a;

    invoke-virtual {v0}, Ld$a;->a()V

    return-void
.end method

.method public static b()Ld$b;
    .locals 1

    sget-object v0, Ld;->b:Ld$b;

    return-object v0
.end method

.method static synthetic c()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Ld;->a:Ljava/util/HashMap;

    return-object v0
.end method
