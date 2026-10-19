.class Lcom/com2us/wrapper/kernel/CWrapperKernel$b;
.super Ld$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/wrapper/kernel/CWrapperKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Ld$b;->s:Ld$b;

    invoke-direct {p0, v0}, Ld$a;-><init>(Ld$b;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->q()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperKernel$b$1;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$b$1;-><init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$b;)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$b$1;->start()V

    return-void
.end method
