.class public Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;
.super Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;
.source "ActiveUserNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/ActiveUserNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceivedConfigurationData"
.end annotation


# instance fields
.field public agreement_ex_show:I

.field public agreement_ex_url:Ljava/lang/String;

.field public agreement_review_url:Ljava/lang/String;

.field public agreement_show:I

.field public agreement_url:Ljava/lang/String;

.field public agreement_version:I

.field public notice_action:I

.field public notice_button:Ljava/lang/String;

.field public notice_message:Ljava/lang/String;

.field public notice_show:I

.field public notice_title:Ljava/lang/String;

.field public notice_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 379
    invoke-direct {p0}, Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;-><init>()V

    .line 380
    iput v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_show:I

    .line 381
    iput v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_version:I

    .line 382
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_url:Ljava/lang/String;

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_review_url:Ljava/lang/String;

    .line 385
    iput v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_ex_show:I

    .line 386
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_ex_url:Ljava/lang/String;

    .line 388
    iput v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_show:I

    .line 389
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_title:Ljava/lang/String;

    .line 390
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_message:Ljava/lang/String;

    .line 391
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_button:Ljava/lang/String;

    .line 392
    iput v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_action:I

    .line 393
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_url:Ljava/lang/String;

    .line 379
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 397
    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    const-string v1, ", agreement_show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_show:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 399
    const-string v1, ", agreement_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    const-string v1, ", agreement_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 401
    const-string v1, ", agreement_review_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_review_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    const-string v1, ", agreement_ex_show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_ex_show:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 404
    const-string v1, ", agreement_ex_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_ex_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 406
    const-string v1, ", notice_show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_show:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 407
    const-string v1, ", notice_title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 408
    const-string v1, ", notice_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    const-string v1, ", notice_button="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_button:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    const-string v1, ", notice_action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    const-string v1, ", notice_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    return-object v0
.end method
