.class Lcom/com2us/module/inapp/lebi/LebiBilling$6;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling;->iapBuyItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    .line 248
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$15(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$16(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 251
    .local v0, "postDataBuffer":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$9(Lcom/com2us/module/inapp/lebi/LebiBilling;)Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    move-result-object v3

    const-string v4, "billingNum"

    invoke-virtual {v3, v4}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$10(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 252
    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v4, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$9(Lcom/com2us/module/inapp/lebi/LebiBilling;)Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$10(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v4, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const-string v5, "04"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$4(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$5(Lcom/com2us/module/inapp/lebi/LebiBilling;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v4, v5, v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$6(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$7(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "response":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request purchase check response : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 258
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$6;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v2, v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$11(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    return-void

    .line 254
    .end local v1    # "response":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
