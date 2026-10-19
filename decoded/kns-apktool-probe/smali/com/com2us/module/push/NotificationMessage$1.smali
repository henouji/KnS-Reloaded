.class Lcom/com2us/module/push/NotificationMessage$1;
.super Ljava/lang/Object;
.source "NotificationMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/push/NotificationMessage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/push/NotificationMessage;

.field private final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/com2us/module/push/NotificationMessage;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/push/NotificationMessage$1;->this$0:Lcom/com2us/module/push/NotificationMessage;

    iput-object p2, p0, Lcom/com2us/module/push/NotificationMessage$1;->val$data:Landroid/os/Bundle;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/com2us/module/push/NotificationMessage$1;->val$data:Landroid/os/Bundle;

    const-string v1, "isGCMPush"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/com2us/module/push/NotificationMessage$1;->this$0:Lcom/com2us/module/push/NotificationMessage;

    iget-object v1, p0, Lcom/com2us/module/push/NotificationMessage$1;->val$data:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/com2us/module/push/PushConfig;->strPostDataBuilder(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->sendToServer(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method
