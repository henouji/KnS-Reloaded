.class public Lcom/com2us/wrapper/ui/CUserInput;
.super Lcom/com2us/wrapper/kernel/CWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/ui/CUserInput$5;,
        Lcom/com2us/wrapper/ui/CUserInput$b;,
        Lcom/com2us/wrapper/ui/CUserInput$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Ljava/lang/String;

.field private c:Li;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput;->a:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput;->c:Li;

    iput-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/com2us/wrapper/ui/CUserInput;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CUserInput;->a:Landroid/widget/FrameLayout;

    new-instance v0, Li;

    iget-object v1, p0, Lcom/com2us/wrapper/ui/CUserInput;->a:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/com2us/wrapper/ui/CUserInput$a;

    invoke-direct {v2, p0}, Lcom/com2us/wrapper/ui/CUserInput$a;-><init>(Lcom/com2us/wrapper/ui/CUserInput;)V

    invoke-direct {v0, v1, v2}, Li;-><init>(Landroid/widget/FrameLayout;Lcom/com2us/wrapper/ui/CUserInput$b;)V

    iput-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput;->c:Li;

    return-void
.end method

.method static synthetic a(Lcom/com2us/wrapper/ui/CUserInput;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/wrapper/ui/CUserInput;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/com2us/wrapper/ui/CUserInput;->nativeCallback([B)V

    return-void
.end method

.method static synthetic b(Lcom/com2us/wrapper/ui/CUserInput;)Li;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput;->c:Li;

    return-object v0
.end method

.method static synthetic c(Lcom/com2us/wrapper/ui/CUserInput;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/com2us/wrapper/ui/CUserInput;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput;->d:Ljava/lang/String;

    return-object v0
.end method

.method private native nativeCallback([B)V
.end method


# virtual methods
.method public createUserInput(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/com2us/wrapper/ui/CUserInput;->createUserInput(I[B)V

    return-void
.end method

.method public createUserInput(I[B)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/com2us/wrapper/ui/CUserInput;->d:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/com2us/wrapper/ui/CUserInput$1;

    invoke-direct {v0, p0, p1}, Lcom/com2us/wrapper/ui/CUserInput$1;-><init>(Lcom/com2us/wrapper/ui/CUserInput;I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public destroyUserInput()V
    .locals 1

    new-instance v0, Lcom/com2us/wrapper/ui/CUserInput$2;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/ui/CUserInput$2;-><init>(Lcom/com2us/wrapper/ui/CUserInput;)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapper;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V

    sget-object v0, Lcom/com2us/wrapper/ui/CUserInput$5;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/com2us/wrapper/ui/CUserInput$3;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/ui/CUserInput$3;-><init>(Lcom/com2us/wrapper/ui/CUserInput;)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/com2us/wrapper/ui/CUserInput$4;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/ui/CUserInput$4;-><init>(Lcom/com2us/wrapper/ui/CUserInput;)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput;->c:Li;

    invoke-virtual {v0}, Li;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
