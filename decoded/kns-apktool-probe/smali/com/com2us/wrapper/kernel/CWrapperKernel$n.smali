.class Lcom/com2us/wrapper/kernel/CWrapperKernel$n;
.super Ld$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/wrapper/kernel/CWrapperKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Ld$b;->e:Ld$b;

    invoke-direct {p0, v0}, Ld$a;-><init>(Ld$b;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->b(Z)V

    return-void
.end method
