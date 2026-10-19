.class Lcom/com2us/wrapper/kernel/CEventHandler$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/wrapper/kernel/CEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:S

.field public b:S

.field public c:S

.field public d:B

.field public e:B

.field final synthetic f:Lcom/com2us/wrapper/kernel/CEventHandler;


# direct methods
.method public constructor <init>(Lcom/com2us/wrapper/kernel/CEventHandler;IIIII)V
    .locals 1

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CEventHandler$a;->f:Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short v0, p2

    iput-short v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler$a;->a:S

    int-to-short v0, p3

    iput-short v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler$a;->b:S

    int-to-short v0, p4

    iput-short v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler$a;->c:S

    int-to-byte v0, p5

    iput-byte v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler$a;->d:B

    int-to-byte v0, p6

    iput-byte v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler$a;->e:B

    return-void
.end method
