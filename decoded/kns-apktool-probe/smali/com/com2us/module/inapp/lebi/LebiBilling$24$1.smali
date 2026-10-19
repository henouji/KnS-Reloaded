.class Lcom/com2us/module/inapp/lebi/LebiBilling$24$1;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling$24;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/inapp/lebi/LebiBilling$24;

.field private final synthetic val$price:I

.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling$24;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24$1;->this$1:Lcom/com2us/module/inapp/lebi/LebiBilling$24;

    iput-object p2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24$1;->val$uid:Ljava/lang/String;

    iput p3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24$1;->val$price:I

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24$1;->this$1:Lcom/com2us/module/inapp/lebi/LebiBilling$24;

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling$24;->access$0(Lcom/com2us/module/inapp/lebi/LebiBilling$24;)Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-result-object v1

    .line 1047
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24$1;->this$1:Lcom/com2us/module/inapp/lebi/LebiBilling$24;

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling$24;->access$0(Lcom/com2us/module/inapp/lebi/LebiBilling$24;)Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-result-object v2

    .line 1048
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24$1;->this$1:Lcom/com2us/module/inapp/lebi/LebiBilling$24;

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling$24;->access$0(Lcom/com2us/module/inapp/lebi/LebiBilling$24;)Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$5(Lcom/com2us/module/inapp/lebi/LebiBilling;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1049
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24$1;->val$uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&appid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1047
    invoke-static {v2, v0, v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$40(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1050
    iget v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24$1;->val$price:I

    .line 1046
    invoke-static {v1, v0, v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$41(Lcom/com2us/module/inapp/lebi/LebiBilling;Landroid/view/View;I)Landroid/app/Dialog;

    move-result-object v0

    .line 1045
    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$42(Landroid/app/Dialog;)V

    .line 1052
    return-void

    .line 1048
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
