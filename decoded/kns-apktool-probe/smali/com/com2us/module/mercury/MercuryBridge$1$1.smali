.class Lcom/com2us/module/mercury/MercuryBridge$1$1;
.super Ljava/lang/Object;
.source "MercuryBridge.java"

# interfaces
.implements Lcom/com2us/module/mercury/MercuryBridge$SendToServerListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/MercuryBridge$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/mercury/MercuryBridge$1;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/MercuryBridge$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryBridge$1$1;->this$1:Lcom/com2us/module/mercury/MercuryBridge$1;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # I
    .param p2, "errormsg"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryBridge$1$1;->this$1:Lcom/com2us/module/mercury/MercuryBridge$1;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryBridge$1;->access$0(Lcom/com2us/module/mercury/MercuryBridge$1;)Lcom/com2us/module/mercury/MercuryBridge;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryBridge;->access$3(Lcom/com2us/module/mercury/MercuryBridge;)Lcom/com2us/module/util/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendSMS (onResponse) error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errormsg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", title : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryBridge$1$1;->this$1:Lcom/com2us/module/mercury/MercuryBridge$1;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryBridge$1;->access$0(Lcom/com2us/module/mercury/MercuryBridge$1;)Lcom/com2us/module/mercury/MercuryBridge;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryBridge$1$1;->this$1:Lcom/com2us/module/mercury/MercuryBridge$1;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryBridge$1;->access$0(Lcom/com2us/module/mercury/MercuryBridge$1;)Lcom/com2us/module/mercury/MercuryBridge;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryBridge;->access$0(Lcom/com2us/module/mercury/MercuryBridge;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/mercury/MercuryBridge;->access$1(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/Activity;)V

    .line 91
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryBridge$1$1;->this$1:Lcom/com2us/module/mercury/MercuryBridge$1;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryBridge$1;->access$0(Lcom/com2us/module/mercury/MercuryBridge$1;)Lcom/com2us/module/mercury/MercuryBridge;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryBridge;->access$0(Lcom/com2us/module/mercury/MercuryBridge;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 92
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryBridge$1$1;->this$1:Lcom/com2us/module/mercury/MercuryBridge$1;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryBridge$1;->access$0(Lcom/com2us/module/mercury/MercuryBridge$1;)Lcom/com2us/module/mercury/MercuryBridge;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/com2us/module/mercury/MercuryBridge;->access$4(Lcom/com2us/module/mercury/MercuryBridge;I)V

    .line 97
    .end local v0    # "sendIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryBridge$1$1;->this$1:Lcom/com2us/module/mercury/MercuryBridge$1;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryBridge$1;->access$0(Lcom/com2us/module/mercury/MercuryBridge$1;)Lcom/com2us/module/mercury/MercuryBridge;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/com2us/module/mercury/MercuryBridge;->access$4(Lcom/com2us/module/mercury/MercuryBridge;I)V

    goto :goto_0
.end method
