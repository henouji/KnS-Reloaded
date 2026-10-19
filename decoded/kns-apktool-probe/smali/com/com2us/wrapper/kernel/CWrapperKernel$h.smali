.class Lcom/com2us/wrapper/kernel/CWrapperKernel$h;
.super Ld$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/wrapper/kernel/CWrapperKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Ld$b;->h:Ld$b;

    invoke-direct {p0, v0}, Ld$a;-><init>(Ld$b;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->x()V

    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->z:Lcom/com2us/wrapper/kernel/CWrapperKernel$r;

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->a(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V

    sget-object v0, Ld$b;->i:Ld$b;

    invoke-static {v0}, Ld;->a(Ld$b;)V

    return-void
.end method
