.class public Lcom/com2us/module/push/DeviceStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStatusReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Intent ACTION: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 23
    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/com2us/module/push/PushResourceHandler;->load(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 31
    .local v6, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/com2us/module/push/PushResource;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 42
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/com2us/module/push/PushResourceHandler;->save(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    .line 83
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/com2us/module/push/PushResource;>;"
    .end local v6    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    :cond_0
    :goto_1
    return-void

    .line 32
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/com2us/module/push/PushResource;>;"
    .restart local v6    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/com2us/module/push/PushResource;

    .line 33
    .local v9, "res":Lcom/com2us/module/push/PushResource;
    iget-wide v12, v9, Lcom/com2us/module/push/PushResource;->triggerAtTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-wide v0, v9, Lcom/com2us/module/push/PushResource;->savedCurrentTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    sub-long/2addr v12, v14

    iput-wide v12, v9, Lcom/com2us/module/push/PushResource;->triggerAtTime:J

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v9, Lcom/com2us/module/push/PushResource;->elapsedRealtime:J

    .line 35
    new-instance v4, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/com2us/module/push/LocalPushReceiver;

    invoke-direct {v4, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v4, "localpushIntent":Landroid/content/Intent;
    iget-object v12, v9, Lcom/com2us/module/push/PushResource;->noticeID:Ljava/lang/String;

    invoke-static {v4, v12, v6}, Lcom/com2us/module/push/PushResourceHandler;->putIntentExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;)Landroid/content/Intent;

    move-result-object v4

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v9, Lcom/com2us/module/push/PushResource;->noticeID:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v4, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 39
    .local v7, "operation":Landroid/app/PendingIntent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "alarm"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 40
    .local v5, "manager":Landroid/app/AlarmManager;
    const/4 v12, 0x2

    iget-wide v14, v9, Lcom/com2us/module/push/PushResource;->elapsedRealtime:J

    iget-wide v0, v9, Lcom/com2us/module/push/PushResource;->triggerAtTime:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-virtual {v5, v12, v14, v15, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 46
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/com2us/module/push/PushResource;>;"
    .end local v4    # "localpushIntent":Landroid/content/Intent;
    .end local v5    # "manager":Landroid/app/AlarmManager;
    .end local v6    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    .end local v7    # "operation":Landroid/app/PendingIntent;
    .end local v9    # "res":Lcom/com2us/module/push/PushResource;
    :cond_2
    const-string v12, "android.intent.action.TIME_SET"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/com2us/module/push/PushResourceHandler;->load(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 52
    .restart local v6    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/com2us/module/push/PushResource;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 57
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/com2us/module/push/PushResourceHandler;->save(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    .line 59
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getInstance(Landroid/content/Context;)Lcom/com2us/module/push/PushConfig$PropertyUtil;

    move-result-object v8

    .line 60
    .local v8, "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    invoke-virtual {v8}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->loadProperty()V

    .line 62
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-string v16, "savedDelayElapsedTime"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v14, v14, v16

    add-long v10, v12, v14

    .line 63
    .local v10, "savedDelayCurrentTime":J
    const-string v12, "savedDelayCurrentTime"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 65
    .end local v10    # "savedDelayCurrentTime":J
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const-string v12, "savedDelayCurrentTime"

    const-string v13, "0"

    invoke-virtual {v8, v12, v13}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 53
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/com2us/module/push/PushResource;

    .line 55
    .restart local v9    # "res":Lcom/com2us/module/push/PushResource;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-wide v0, v9, Lcom/com2us/module/push/PushResource;->elapsedRealtime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    add-long/2addr v12, v14

    iput-wide v12, v9, Lcom/com2us/module/push/PushResource;->savedCurrentTime:J

    goto :goto_2
.end method
