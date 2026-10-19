.class Lcom/com2us/module/activeuser/ActiveUser$2;
.super Ljava/lang/Thread;
.source "ActiveUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUser;->start()V
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
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser$2;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    .line 175
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 177
    const-string v4, "referrer"

    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->processNetworkTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 180
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 181
    :try_start_0
    move-object v0, v3

    check-cast v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;

    move-object v1, v0

    .line 182
    .local v1, "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;
    iget v4, v1, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;->errno:I

    if-nez v4, :cond_0

    .line 183
    const-string v4, "send_referrer"

    const-string v5, "Y"

    invoke-static {v4, v5}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v4, p0, Lcom/com2us/module/activeuser/ActiveUser$2;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUser;->access$5(Lcom/com2us/module/activeuser/ActiveUser;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
