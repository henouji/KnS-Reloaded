.class public abstract Lcom/com2us/wrapper/kernel/CWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/com2us/wrapper/kernel/CWrapperKernel$s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/kernel/CWrapper$1;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapper;->nativeSetClass()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapper;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/com2us/wrapper/kernel/CWrapper;->b:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/com2us/wrapper/kernel/CWrapper;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapper;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/wrapper/kernel/CWrapper;->b:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/com2us/wrapper/kernel/CWrapper;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapper;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/com2us/wrapper/kernel/CWrapper;->b:Z

    invoke-static {p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->a(Lcom/com2us/wrapper/kernel/CWrapperKernel$s;)V

    iget-boolean v0, p0, Lcom/com2us/wrapper/kernel/CWrapper;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapper;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapper;->nativeInitialize(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private native nativeFinalize(Ljava/lang/String;)V
.end method

.method private native nativeInitialize(Ljava/lang/String;)V
.end method

.method private static native nativeSetClass()V
.end method


# virtual methods
.method public onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 2

    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapper$1;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/com2us/wrapper/kernel/CWrapper;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapper;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapper;->nativeFinalize(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
