.class final enum Lcom/com2us/wrapper/kernel/CWrapperTimer$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/wrapper/kernel/CWrapperTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/com2us/wrapper/kernel/CWrapperTimer$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

.field public static final enum b:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

.field public static final enum c:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

.field public static final enum d:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

.field private static final synthetic e:[Lcom/com2us/wrapper/kernel/CWrapperTimer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v2}, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    const-string v1, "WAIT_START"

    invoke-direct {v0, v1, v3}, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->b:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->c:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    const-string v1, "EXIT"

    invoke-direct {v0, v1, v5}, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->d:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    sget-object v1, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->b:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->c:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->d:Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->e:[Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/com2us/wrapper/kernel/CWrapperTimer$a;
    .locals 1

    const-class v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    return-object v0
.end method

.method public static values()[Lcom/com2us/wrapper/kernel/CWrapperTimer$a;
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->e:[Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    invoke-virtual {v0}, [Lcom/com2us/wrapper/kernel/CWrapperTimer$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/com2us/wrapper/kernel/CWrapperTimer$a;

    return-object v0
.end method
