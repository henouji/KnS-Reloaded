.class public Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;
.super Ljava/lang/Object;
.source "SessionCheck.java"

# interfaces
.implements Lcom/com2us/module/activeuser/ActiveUserModule;


# instance fields
.field private activity:Landroid/app/Activity;

.field private isExecuted:Z

.field private lastSendTime:J

.field private lastSession:Lorg/json/JSONObject;

.field private lastStopTime:J

.field private logger:Lcom/com2us/module/util/Logger;

.field private session_max_num:I

.field private session_max_time:I

.field private sessions:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/com2us/module/util/Logger;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "logger"    # Lcom/com2us/module/util/Logger;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->activity:Landroid/app/Activity;

    .line 28
    iput-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    .line 29
    iput-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    .line 30
    iput-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    .line 31
    iput-wide v4, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastStopTime:J

    .line 32
    iput-wide v4, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSendTime:J

    .line 33
    iput v3, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_num:I

    .line 34
    iput v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_time:I

    .line 36
    iput-boolean v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->isExecuted:Z

    .line 45
    iput-object p1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->activity:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    .line 49
    :try_start_0
    const-string v1, "session_limit_num"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_num:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    :try_start_1
    const-string v1, "session_limit_time"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_time:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    :goto_1
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "SessionCheck initialize"

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 61
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    iput v3, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_num:I

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 57
    .restart local v0    # "e":Ljava/lang/Exception;
    iput v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_time:I

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;)Lcom/com2us/module/util/Logger;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    return-object v0
.end method

.method static synthetic access$1(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    return-void
.end method

.method static synthetic access$2(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;J)V
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSendTime:J

    return-void
.end method

.method static synthetic access$3(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_num:I

    return-void
.end method

.method static synthetic access$4(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_time:I

    return-void
.end method

.method static synthetic access$5(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSendTime:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method protected static getCurrentTime()J
    .locals 4

    .prologue
    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private lastSendSessionTimeCheck()Z
    .locals 6

    .prologue
    .line 64
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "lastSendSessionTimeCheck"

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    .line 69
    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastStopTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 70
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "after one session limit time (10sec)"

    invoke-direct {p0, v3}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->toastShow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 72
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    const-string v3, "start"

    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    const-string v3, "length"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastStopTime:J

    .line 80
    const-string v2, "sessions_data"

    iget-object v3, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "sessions_last_session"

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->removeProperty(Ljava/lang/String;)V

    .line 82
    const-string v2, "sessions_last_stop_time"

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->removeProperty(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 91
    :cond_0
    :goto_1
    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSendTime:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_time:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 92
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "after interval time ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sec)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->toastShow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x1

    .line 96
    :goto_2
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    iget v3, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_num:I

    if-lt v2, v3, :cond_4

    .line 97
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sessions over : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_num:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->toastShow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x1

    .line 101
    :goto_3
    const-string v2, "did_data"

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "DID is Empty"

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x0

    .line 106
    :cond_1
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "before one session limit time (10sec)"

    invoke-direct {p0, v3}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->toastShow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 94
    :cond_3
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "before interval time ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sec)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->toastShow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :cond_4
    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sessions not over : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->session_max_num:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->toastShow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private loadSessions()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    .line 143
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "loadSessions"

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 146
    :try_start_0
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    if-nez v6, :cond_0

    .line 147
    const-string v6, "sessions_data"

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "session_data":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 149
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iput-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    .line 154
    .end local v2    # "session_data":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "loaded Sessions : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->toastShow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    if-nez v6, :cond_1

    .line 163
    const-string v6, "sessions_last_session"

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "session_lastSession":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 165
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iput-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    .line 166
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    const-string v7, "start"

    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 167
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    const-string v7, "length"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    .end local v4    # "session_lastSession":Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "loaded lastSession : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :goto_3
    :try_start_2
    iget-wide v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastStopTime:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_2

    .line 187
    const-string v6, "sessions_last_stop_time"

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "session_lastStopTime":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 189
    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastStopTime:J

    .line 190
    const-string v6, "sessions_last_stop_time"

    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 196
    .end local v5    # "session_lastStopTime":Ljava/lang/String;
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "loaded lastStopTime : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastStopTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 205
    :goto_5
    :try_start_3
    iget-wide v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSendTime:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_3

    .line 206
    const-string v6, "sessions_last_send_time"

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "session_lastSendTime":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 208
    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSendTime:J

    .line 209
    const-string v6, "sessions_last_send_time"

    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 215
    .end local v3    # "session_lastSendTime":Ljava/lang/String;
    :cond_3
    :goto_6
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "loaded lastSendTime : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSendTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 222
    :goto_7
    return-void

    .line 151
    .restart local v2    # "session_data":Ljava/lang/String;
    :cond_4
    :try_start_4
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 155
    .end local v2    # "session_data":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 157
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "load Sessions failed"

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 158
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iput-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "session_lastSession":Ljava/lang/String;
    :cond_5
    :try_start_5
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 173
    .end local v4    # "session_lastSession":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 175
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "load lastSession create"

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 176
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iput-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    .line 177
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    const-string v7, "start"

    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 178
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    const-string v7, "length"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 179
    :catch_2
    move-exception v1

    .line 180
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "load lastSession failed"

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v5    # "session_lastStopTime":Ljava/lang/String;
    :cond_6
    :try_start_7
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastStopTime:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_4

    .line 197
    .end local v5    # "session_lastStopTime":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 198
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "load lastStopTime failed : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastStopTime:J

    .line 200
    const-string v6, "sessions_last_stop_time"

    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    goto/16 :goto_5

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "session_lastSendTime":Ljava/lang/String;
    :cond_7
    :try_start_8
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSendTime:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_6

    .line 216
    .end local v3    # "session_lastSendTime":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "load lastSendTime failed : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSendTime:J

    .line 219
    const-string v6, "sessions_last_send_time"

    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v6, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    goto/16 :goto_7
.end method

.method private saveSessions()V
    .locals 8

    .prologue
    .line 225
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "saveSessions"

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastStopTime:J

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    const-string v2, "length"

    iget-wide v4, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastStopTime:J

    iget-object v3, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    const-string v6, "start"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saved last session : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 235
    const-string v1, "sessions_last_session"

    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSession:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "sessions_last_stop_time"

    iget-wide v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastStopTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save Sessions failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendSessions()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "sendSessions"

    invoke-direct {p0, v1}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->toastShow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sessions:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "non-exist session data"

    invoke-direct {p0, v1}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->toastShow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;

    invoke-direct {v0, p0}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;-><init>(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;)V

    .line 139
    invoke-virtual {v0}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;->start()V

    goto :goto_0
.end method

.method private toastShow(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 295
    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "SessionCheck destroy"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public isExecutable()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->isExecuted:Z

    .line 267
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->onActivityStarted()V

    .line 268
    return v0
.end method

.method public onActivityStarted()V
    .locals 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->isExecuted:Z

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "SessionCheck Started"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->loadSessions()V

    .line 249
    invoke-direct {p0}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->lastSendSessionTimeCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sendSessions()V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "SessionCheck not Started : isExecuted false"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityStoped()V
    .locals 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->isExecuted:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "SessionCheck Stoped"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->saveSessions()V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "SessionCheck not Stoped : isExecuted false"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public responseNetwork(Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;)V
    .locals 0
    .param p1, "data"    # Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;

    .prologue
    .line 273
    return-void
.end method
