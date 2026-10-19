.class public Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;
.super Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;
.source "ActiveUserNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/ActiveUserNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceivedDownloadData"
.end annotation


# instance fields
.field public did:Ljava/lang/String;

.field public session_max_num:I

.field public session_max_time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;-><init>()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->did:Ljava/lang/String;

    .line 325
    const/4 v0, 0x1

    iput v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->session_max_num:I

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->session_max_time:I

    .line 323
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 331
    const-string v1, ", did="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->did:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 332
    const-string v1, ", session_max_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->session_max_num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    const-string v1, ", session_max_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->session_max_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    return-object v0
.end method
