.class Lcom/com2us/wrapper/kernel/CWrapperKernel$m;
.super Ld$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/wrapper/kernel/CWrapperKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Ld$b;->j:Ld$b;

    invoke-direct {p0, v0}, Ld$a;-><init>(Ld$b;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$m;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->q()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/com2us/wrapper/kernel/CWrapperKernel$m$1;

    invoke-direct {v1, p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$m$1;-><init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$m;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
