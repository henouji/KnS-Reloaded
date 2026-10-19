.class public Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;
.super Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;
.source "ActiveUserNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/ActiveUserNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceivedSessionData"
.end annotation


# instance fields
.field public session_max_num:I

.field public session_max_time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;-><init>()V

    .line 350
    const/4 v0, 0x1

    iput v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->session_max_num:I

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->session_max_time:I

    .line 349
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 355
    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 356
    const-string v1, ", session_max_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->session_max_num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    const-string v1, ", session_max_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->session_max_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    return-object v0
.end method
