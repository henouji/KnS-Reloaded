.class Lcom/com2us/module/inapp/lebi/LebiBilling$9;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling;->iapUseTestServer()V
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
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$9;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 510
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$9;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$9;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$9;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const-string v4, "07"

    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$3()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$4(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$9;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$5(Lcom/com2us/module/inapp/lebi/LebiBilling;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v3, v4, v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$6(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$7(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "response":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request item price response : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$9;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const-string v2, "07"

    invoke-static {v1, v2, v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$8(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 513
    return-void

    .line 510
    .end local v0    # "response":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
