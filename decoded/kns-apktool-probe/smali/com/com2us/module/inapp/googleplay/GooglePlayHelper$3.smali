.class Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;
.super Ljava/lang/Object;
.source "GooglePlayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$multiListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;

.field private final synthetic val$purchases:Ljava/util/List;

.field private final synthetic val$singleListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;Ljava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iput-object p2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$singleListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$multiListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 972
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/com2us/module/inapp/googleplay/GooglePlayResult;>;"
    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 983
    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    invoke-virtual {v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->flagEndAsync()V

    .line 984
    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iget-boolean v3, v3, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mDisposed:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$singleListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;

    if-eqz v3, :cond_0

    .line 985
    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3$1;

    iget-object v5, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$singleListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;

    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$purchases:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3$1;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 991
    :cond_0
    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iget-boolean v3, v3, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->mDisposed:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$multiListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;

    if-eqz v3, :cond_1

    .line 992
    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3$2;

    iget-object v5, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$multiListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;

    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->val$purchases:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3$2;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 998
    :cond_1
    return-void

    .line 973
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/com2us/module/inapp/googleplay/Purchase;

    .line 975
    .local v1, "purchase":Lcom/com2us/module/inapp/googleplay/Purchase;
    :try_start_0
    iget-object v4, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$3;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    invoke-virtual {v4, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->consume(Lcom/com2us/module/inapp/googleplay/Purchase;)V

    .line 976
    new-instance v4, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Successful consume of sku "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/com2us/module/inapp/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/com2us/module/inapp/googleplay/GooglePlayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, "ex":Lcom/com2us/module/inapp/googleplay/GooglePlayException;
    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayException;->getResult()Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
