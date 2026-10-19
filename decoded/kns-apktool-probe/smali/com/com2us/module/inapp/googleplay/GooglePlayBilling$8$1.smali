.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$1;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver$GooglePlayBroadcastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receivedBroadcast : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$11(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 107
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$12(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Landroid/content/Intent;)V

    .line 109
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$13(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "savedPurchaseUpdatedIntent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$14(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    invoke-static/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$11(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 114
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$12(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Landroid/content/Intent;)V

    .line 116
    :cond_0
    return-void
.end method
