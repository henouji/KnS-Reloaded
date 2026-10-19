.class final Lcom/com2us/wrapper/kernel/CWrapperKernel$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperKernel;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->s()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->t()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->t()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->t()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    if-eqz v0, :cond_0

    sget-object v0, Ld$b;->i:Ld$b;

    invoke-static {v0}, Ld;->a(Ld$b;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    sget-object v0, Ld$b;->n:Ld$b;

    invoke-static {v0}, Ld;->a(Ld$b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Ld$b;->n:Ld$b;

    invoke-static {v0}, Ld;->a(Ld$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
