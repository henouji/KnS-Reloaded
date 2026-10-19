.class public Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;
.super Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;
.source "ActiveUserNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/ActiveUserNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceivedAgreementData"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    return-object v0
.end method
