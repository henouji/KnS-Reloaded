.class Lcom/com2us/wrapper/kernel/CWrapperKernel$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperKernel$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/kernel/CWrapperKernel$1;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$1;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperKernel$1$1;->a:Lcom/com2us/wrapper/kernel/CWrapperKernel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Ld;->b()Ld$b;

    move-result-object v0

    sget-object v1, Ld$b;->a:Ld$b;

    if-ne v0, v1, :cond_0

    sget-object v0, Ld$b;->b:Ld$b;

    invoke-static {v0}, Ld;->a(Ld$b;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->m()V

    goto :goto_0
.end method
