.class Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;
.super Ljava/lang/Thread;
.source "SessionCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->sendSessions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;->this$0:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    .line 118
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 120
    new-instance v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;

    invoke-direct {v0}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;-><init>()V

    .line 121
    .local v0, "recvSessionData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;
    const-string v1, "session_log"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->processNetworkTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "recvSessionData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;
    check-cast v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;

    .line 122
    .restart local v0    # "recvSessionData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;
    if-eqz v0, :cond_1

    .line 123
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;->this$0:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    invoke-static {v1}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->access$0(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;)Lcom/com2us/module/util/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReceivedSessionData : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 124
    iget v1, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->errno:I

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;->this$0:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->access$1(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;Lorg/json/JSONArray;)V

    .line 126
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;->this$0:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    invoke-static {}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->getCurrentTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->access$2(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;J)V

    .line 127
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;->this$0:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    iget v2, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->session_max_num:I

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->access$3(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;I)V

    .line 128
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;->this$0:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    iget v2, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->session_max_time:I

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->access$4(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;I)V

    .line 129
    const-string v1, "sessions_data"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->removeProperty(Ljava/lang/String;)V

    .line 130
    const-string v1, "sessions_last_send_time"

    iget-object v2, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;->this$0:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    invoke-static {v2}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->access$5(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "session_limit_num"

    iget v2, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->session_max_num:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "session_limit_time"

    iget v2, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->session_max_time:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;->this$0:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    invoke-static {v1}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->access$6(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck$1;->this$0:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    invoke-static {v1}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->access$0(Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;)Lcom/com2us/module/util/Logger;

    move-result-object v1

    const-string v2, "ReceivedSessionData is null"

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
