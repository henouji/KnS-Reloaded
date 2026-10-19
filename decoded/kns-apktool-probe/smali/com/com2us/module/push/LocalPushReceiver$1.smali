.class Lcom/com2us/module/push/LocalPushReceiver$1;
.super Ljava/lang/Object;
.source "LocalPushReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/push/LocalPushReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/push/LocalPushReceiver;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/com2us/module/push/LocalPushReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/push/LocalPushReceiver$1;->this$0:Lcom/com2us/module/push/LocalPushReceiver;

    iput-object p2, p0, Lcom/com2us/module/push/LocalPushReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/com2us/module/push/LocalPushReceiver$1;->val$context:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 30
    iget-object v2, p0, Lcom/com2us/module/push/LocalPushReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 32
    .local v1, "pushIntent":Landroid/content/Intent;
    const-string v2, "isGCMPush"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/com2us/module/push/LocalPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/com2us/module/push/PushConfig;->setReceiveData(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 36
    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v2, "isOperation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const-string v2, "bScreenLock"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    const-string v2, "startPushWakeLock"

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/com2us/module/push/LocalPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/com2us/module/push/PushConfig;->startPushWakeLock(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    :goto_1
    const-string v2, "broadcastAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    const-string v2, "start broadcasting"

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v2, "broadcastAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "broadcastIntent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "context.getPackageName() : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/com2us/module/push/LocalPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/com2us/module/push/LocalPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 47
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    :cond_2
    const-string v2, "setPushType"

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/com2us/module/push/LocalPushReceiver$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/com2us/module/push/LocalPushReceiver$1;->this$0:Lcom/com2us/module/push/LocalPushReceiver;

    iget-object v3, v3, Lcom/com2us/module/push/LocalPushReceiver;->handler:Landroid/os/Handler;

    invoke-static {v2, v1, v3}, Lcom/com2us/module/push/PushConfig;->setPushType(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    goto :goto_1
.end method
