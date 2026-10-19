.class Lcom/com2us/wrapper/kernel/CEventHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CEventHandler;->addEvent(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/kernel/CEventHandler;

.field final synthetic b:Lcom/com2us/wrapper/kernel/CEventHandler;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CEventHandler;Lcom/com2us/wrapper/kernel/CEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CEventHandler$1;->b:Lcom/com2us/wrapper/kernel/CEventHandler;

    iput-object p2, p0, Lcom/com2us/wrapper/kernel/CEventHandler$1;->a:Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    :goto_0
    iget-object v8, p0, Lcom/com2us/wrapper/kernel/CEventHandler$1;->a:Lcom/com2us/wrapper/kernel/CEventHandler;

    monitor-enter v8

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/com2us/wrapper/kernel/CEventHandler$1;->b:Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-static {v2}, Lcom/com2us/wrapper/kernel/CEventHandler;->a(Lcom/com2us/wrapper/kernel/CEventHandler;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/com2us/wrapper/kernel/CEventHandler$1;->b:Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-static {v2}, Lcom/com2us/wrapper/kernel/CEventHandler;->a(Lcom/com2us/wrapper/kernel/CEventHandler;)Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/com2us/wrapper/kernel/CEventHandler$a;

    move-object v7, v0

    iget-object v2, p0, Lcom/com2us/wrapper/kernel/CEventHandler$1;->b:Lcom/com2us/wrapper/kernel/CEventHandler;

    iget-short v3, v7, Lcom/com2us/wrapper/kernel/CEventHandler$a;->a:S

    iget-short v4, v7, Lcom/com2us/wrapper/kernel/CEventHandler$a;->b:S

    iget-short v5, v7, Lcom/com2us/wrapper/kernel/CEventHandler$a;->c:S

    iget-byte v6, v7, Lcom/com2us/wrapper/kernel/CEventHandler$a;->d:B

    iget-byte v7, v7, Lcom/com2us/wrapper/kernel/CEventHandler$a;->e:B

    invoke-static/range {v2 .. v7}, Lcom/com2us/wrapper/kernel/CEventHandler;->a(Lcom/com2us/wrapper/kernel/CEventHandler;SSSBB)Z

    move-result v2

    if-ne v2, v9, :cond_0

    iget-object v2, p0, Lcom/com2us/wrapper/kernel/CEventHandler$1;->b:Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-static {v2}, Lcom/com2us/wrapper/kernel/CEventHandler;->a(Lcom/com2us/wrapper/kernel/CEventHandler;)Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/com2us/wrapper/kernel/CEventHandler$1;->b:Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-static {v2}, Lcom/com2us/wrapper/kernel/CEventHandler;->a(Lcom/com2us/wrapper/kernel/CEventHandler;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-ne v2, v9, :cond_1

    iget-object v2, p0, Lcom/com2us/wrapper/kernel/CEventHandler$1;->b:Lcom/com2us/wrapper/kernel/CEventHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/com2us/wrapper/kernel/CEventHandler;->a(Lcom/com2us/wrapper/kernel/CEventHandler;Z)Z

    monitor-exit v8

    return-void

    :cond_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0xa

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
