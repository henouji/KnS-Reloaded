.class Lcom/com2us/module/inapp/lebi/LebiBilling$4;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling;->iapRestoreItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$4;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iput-object p2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$4;->val$uid:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 211
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$4;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$4;->val$uid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$13(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v0, "postDataBuffer":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$4;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$4;->val$uid:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$10(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$4;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v4, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$4;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$4;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const-string v5, "08"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$4(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$4;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

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

    .line 217
    .local v1, "response":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request restore item response : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$4;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const-string v3, "08"

    invoke-static {v2, v3, v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$8(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    return-void

    .line 216
    .end local v1    # "response":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
