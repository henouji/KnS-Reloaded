.class Lcom/com2us/module/activeuser/ActiveUser$12;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUser;->sendAgreementLog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/ActiveUser;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/ActiveUser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser$12;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 716
    new-instance v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;

    invoke-direct {v0}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;-><init>()V

    .line 717
    .local v0, "recvAgreementData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;
    const-string v1, "agreement"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->processNetworkTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "recvAgreementData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;
    check-cast v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;

    .line 718
    .restart local v0    # "recvAgreementData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;
    if-eqz v0, :cond_0

    .line 719
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$12;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$0(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/util/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReceivedAgreementData : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 721
    iget v1, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;->errno:I

    if-nez v1, :cond_1

    .line 722
    const-string v1, "agreement_version_data"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->removeProperty(Ljava/lang/String;)V

    .line 723
    const-string v1, "agreement_ex_scheme_data"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->removeProperty(Ljava/lang/String;)V

    .line 724
    const-string v1, "agreement_log_property"

    const-string v2, "agreement_log_completed"

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$12;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$5(Lcom/com2us/module/activeuser/ActiveUser;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$12;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$0(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/util/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReceivedAgreementData error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;->error:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
