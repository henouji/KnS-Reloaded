.class Lcom/com2us/module/inapp/lebi/LebiBilling$12;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling;->requestPurchase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

.field private final synthetic val$postDataBuffer:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/StringBuffer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$12;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iput-object p2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$12;->val$postDataBuffer:Ljava/lang/StringBuffer;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 601
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$12;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$12;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$12;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const-string v4, "02"

    iget-object v5, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$12;->val$postDataBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$4(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$12;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

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

    .line 602
    .local v0, "response":Ljava/lang/String;
    iget-object v1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$12;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v1, v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$11(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)Ljava/lang/Object;

    .line 603
    return-void

    .line 601
    .end local v0    # "response":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
