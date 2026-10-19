.class public Lcom/com2us/module/push/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/com2us/module/push/GCMIntentService;->handler:Landroid/os/Handler;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/com2us/module/push/GCMIntentService;->handler:Landroid/os/Handler;

    .line 21
    return-void
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 95
    const-string v0, "Registration failed, should try again later."

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    .line 100
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 55
    const-string v3, "onMessage"

    invoke-static {v3}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 57
    const-string v3, "isGCMPush"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    .line 60
    const v2, 0x10c8e1

    .line 61
    .local v2, "gcmNoticeID":I
    :try_start_0
    const-string v3, "noticeID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const v4, 0xf4240

    add-int v2, v3, v4

    .line 62
    :goto_0
    const-string v3, "noticeID"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 64
    invoke-static {p1, p2}, Lcom/com2us/module/push/PushConfig;->setReceiveData(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 65
    if-nez p2, :cond_1

    .line 90
    :cond_0
    :goto_1
    return-void

    .line 61
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const v2, 0x10c8e1

    goto :goto_0

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "isGCMOperation"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    const-string v3, "bScreenLock"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    const-string v3, "startPushWakeLock"

    invoke-static {v3}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 74
    invoke-static {p1, p2}, Lcom/com2us/module/push/PushConfig;->startPushWakeLock(Landroid/content/Context;Landroid/content/Intent;)V

    .line 80
    :goto_2
    const-string v3, "broadcastAction"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    const-string v3, "start broadcasting"

    invoke-static {v3}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v3, "broadcastAction"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "broadcastIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "context.getPackageName() : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 76
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    :cond_2
    const-string v3, "setPushType"

    invoke-static {v3}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/com2us/module/push/GCMIntentService;->handler:Landroid/os/Handler;

    invoke-static {p1, p2, v3}, Lcom/com2us/module/push/PushConfig;->setPushType(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    goto :goto_2
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRegistered : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 28
    :try_start_0
    sget-object v1, Lcom/com2us/module/push/Push;->registerState:Lcom/com2us/module/push/Push$RegisterState;

    invoke-static {p1, v1, p2}, Lcom/com2us/module/push/Push;->sendToServer(Landroid/content/Context;Lcom/com2us/module/push/Push$RegisterState;Ljava/lang/String;)I

    .line 29
    const-string v1, "registration complete!!"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    sput-boolean v3, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    .line 35
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    sput-boolean v3, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    goto :goto_0

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 33
    sput-boolean v3, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    .line 34
    throw v1
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUnregistered : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 40
    const-string v1, "unregistration done, new messages from the authorized sender will be rejected"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 43
    :try_start_0
    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->UNREGISTER:Lcom/com2us/module/push/Push$RegisterState;

    invoke-static {p1, v1, p2}, Lcom/com2us/module/push/Push;->sendToServer(Landroid/content/Context;Lcom/com2us/module/push/Push$RegisterState;Ljava/lang/String;)I

    .line 44
    const-string v1, "unregistration complete!!"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sput-boolean v3, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    .line 51
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    sput-boolean v3, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 49
    sput-boolean v3, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    .line 50
    throw v1
.end method
