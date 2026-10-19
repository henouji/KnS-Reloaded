.class Lcom/com2us/module/mercury/MercuryBridge$2;
.super Ljava/lang/Object;
.source "MercuryBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/MercuryBridge;->sendEmail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/mercury/MercuryBridge;

.field private final synthetic val$eventID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/MercuryBridge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    iput-object p2, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->val$eventID:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/mercury/MercuryBridge$2;)Lcom/com2us/module/mercury/MercuryBridge;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryBridge;->access$0(Lcom/com2us/module/mercury/MercuryBridge;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/com2us/module/mercury/MercuryBridge;->access$2(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/Activity;)V

    .line 127
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->val$eventID:Ljava/lang/String;

    sget-object v4, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->RECOMMEND_EMAIL:Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    new-instance v5, Lcom/com2us/module/mercury/MercuryBridge$2$1;

    invoke-direct {v5, p0}, Lcom/com2us/module/mercury/MercuryBridge$2$1;-><init>(Lcom/com2us/module/mercury/MercuryBridge$2;)V

    invoke-static {v2, v3, v4, v5}, Lcom/com2us/module/mercury/MercuryBridge;->access$5(Lcom/com2us/module/mercury/MercuryBridge;Ljava/lang/String;Lcom/com2us/module/mercury/MercuryBridge$RecommendType;Lcom/com2us/module/mercury/MercuryBridge$SendToServerListner;)Z

    move-result v0

    .line 152
    .local v0, "connectResult":Z
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryBridge;->access$3(Lcom/com2us/module/mercury/MercuryBridge;)Lcom/com2us/module/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendEmail (onResponse) connectResult : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryBridge;->access$0(Lcom/com2us/module/mercury/MercuryBridge;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/com2us/module/mercury/MercuryBridge;->access$1(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/Activity;)V

    .line 161
    .end local v0    # "connectResult":Z
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryBridge;->access$3(Lcom/com2us/module/mercury/MercuryBridge;)Lcom/com2us/module/util/Logger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    const/4 v3, -0x3

    invoke-static {v2, v3}, Lcom/com2us/module/mercury/MercuryBridge;->access$4(Lcom/com2us/module/mercury/MercuryBridge;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryBridge;->access$0(Lcom/com2us/module/mercury/MercuryBridge;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/com2us/module/mercury/MercuryBridge;->access$1(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/Activity;)V

    goto :goto_0

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 159
    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    iget-object v4, p0, Lcom/com2us/module/mercury/MercuryBridge$2;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    invoke-static {v4}, Lcom/com2us/module/mercury/MercuryBridge;->access$0(Lcom/com2us/module/mercury/MercuryBridge;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/com2us/module/mercury/MercuryBridge;->access$1(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/Activity;)V

    .line 160
    throw v2
.end method
