.class Lcom/facebook/Session$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/Session;

.field private final synthetic val$exception:Ljava/lang/Exception;

.field private final synthetic val$newState:Lcom/facebook/SessionState;


# direct methods
.method constructor <init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    iput-object p2, p0, Lcom/facebook/Session$4;->val$newState:Lcom/facebook/SessionState;

    iput-object p3, p0, Lcom/facebook/Session$4;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/Session$4;)Lcom/facebook/Session;
    .locals 1

    iget-object v0, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    invoke-static {v0}, Lcom/facebook/Session;->access$12(Lcom/facebook/Session;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    invoke-static {v0}, Lcom/facebook/Session;->access$12(Lcom/facebook/Session;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Session$StatusCallback;

    new-instance v3, Lcom/facebook/Session$4$1;

    iget-object v4, p0, Lcom/facebook/Session$4;->val$newState:Lcom/facebook/SessionState;

    iget-object v5, p0, Lcom/facebook/Session$4;->val$exception:Ljava/lang/Exception;

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/facebook/Session$4$1;-><init>(Lcom/facebook/Session$4;Lcom/facebook/Session$StatusCallback;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    invoke-static {v0}, Lcom/facebook/Session;->access$13(Lcom/facebook/Session;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/Session;->access$14(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
