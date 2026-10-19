.class Lcom/com2us/module/activeuser/ActiveUser$3;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUser;->startConfigurationThread()V
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
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser$3;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/ActiveUser$3;)Lcom/com2us/module/activeuser/ActiveUser;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$3;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 232
    const-string v1, "get_config"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->processNetworkTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;

    .line 233
    .local v0, "recvConfigurationData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;
    if-eqz v0, :cond_2

    .line 234
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$3;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$0(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/util/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReceivedAgreementVersionData : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 236
    iget v1, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->errno:I

    if-nez v1, :cond_1

    .line 238
    const-string v1, "agreement_review_url"

    iget-object v2, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_review_url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$3;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$5(Lcom/com2us/module/activeuser/ActiveUser;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 241
    iget v1, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_show:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$3;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$5(Lcom/com2us/module/activeuser/ActiveUser;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/com2us/module/activeuser/ActiveUser$3$1;

    invoke-direct {v2, p0, v0}, Lcom/com2us/module/activeuser/ActiveUser$3$1;-><init>(Lcom/com2us/module/activeuser/ActiveUser$3;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$3;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1, v0}, Lcom/com2us/module/activeuser/ActiveUser;->access$6(Lcom/com2us/module/activeuser/ActiveUser;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$3;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$7(Lcom/com2us/module/activeuser/ActiveUser;)V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$3;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$0(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/util/Logger;

    move-result-object v1

    const-string v2, "ReceivedAgreementVersionData is null"

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$3;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$7(Lcom/com2us/module/activeuser/ActiveUser;)V

    goto :goto_0
.end method
