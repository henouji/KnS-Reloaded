.class Lcom/com2us/wrapper/kernel/CWrapperTimer$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperTimer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/kernel/CWrapperTimer$1;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperTimer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer$1$1;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->g()V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperTimer$1$1;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer$1;

    iget-object v0, v0, Lcom/com2us/wrapper/kernel/CWrapperTimer$1;->a:Lcom/com2us/wrapper/kernel/CWrapperTimer;

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperTimer;->c(Lcom/com2us/wrapper/kernel/CWrapperTimer;)Lc;

    move-result-object v0

    invoke-virtual {v0}, Lc;->c()Z

    return-void
.end method
