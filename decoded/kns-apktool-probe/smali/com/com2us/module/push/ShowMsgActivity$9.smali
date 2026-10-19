.class Lcom/com2us/module/push/ShowMsgActivity$9;
.super Ljava/lang/Object;
.source "ShowMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/push/ShowMsgActivity;->launchActive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/push/ShowMsgActivity;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/push/ShowMsgActivity$9;->this$0:Lcom/com2us/module/push/ShowMsgActivity;

    iput-object p2, p0, Lcom/com2us/module/push/ShowMsgActivity$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/com2us/module/push/ShowMsgActivity$9;->val$intent:Landroid/content/Intent;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity$9;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/com2us/module/push/ShowMsgActivity$9;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/com2us/module/push/PushConfig;->strPostDataBuilder(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->sendToServer(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    return-void
.end method
