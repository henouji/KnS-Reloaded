.class final enum Lc$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lc$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc$a;

.field public static final enum b:Lc$a;

.field public static final enum c:Lc$a;

.field private static final synthetic d:[Lc$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lc$a;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc$a;->a:Lc$a;

    new-instance v0, Lc$a;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v3}, Lc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc$a;->b:Lc$a;

    new-instance v0, Lc$a;

    const-string v1, "JOIN"

    invoke-direct {v0, v1, v4}, Lc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc$a;->c:Lc$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lc$a;

    sget-object v1, Lc$a;->a:Lc$a;

    aput-object v1, v0, v2

    sget-object v1, Lc$a;->b:Lc$a;

    aput-object v1, v0, v3

    sget-object v1, Lc$a;->c:Lc$a;

    aput-object v1, v0, v4

    sput-object v0, Lc$a;->d:[Lc$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc$a;
    .locals 1

    const-class v0, Lc$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lc$a;

    return-object v0
.end method

.method public static values()[Lc$a;
    .locals 1

    sget-object v0, Lc$a;->d:[Lc$a;

    invoke-virtual {v0}, [Lc$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc$a;

    return-object v0
.end method
