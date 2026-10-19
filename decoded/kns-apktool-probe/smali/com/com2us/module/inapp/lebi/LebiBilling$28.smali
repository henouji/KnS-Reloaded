.class Lcom/com2us/module/inapp/lebi/LebiBilling$28;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling;->onCreateBillingDialog(Landroid/view/View;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

.field private final synthetic val$itemPrice:I


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$28;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iput p2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$28;->val$itemPrice:I

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/inapp/lebi/LebiBilling$28;)Lcom/com2us/module/inapp/lebi/LebiBilling;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$28;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1110
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$0()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$28;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$43(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1111
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$28;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$9(Lcom/com2us/module/inapp/lebi/LebiBilling;)Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1112
    .local v4, "pid":Ljava/lang/String;
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$28;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$9(Lcom/com2us/module/inapp/lebi/LebiBilling;)Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    move-result-object v0

    const-string v1, "quantity"

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1114
    .local v7, "strQuantity":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 1115
    const/4 v5, 0x0

    .line 1121
    .local v5, "quantity":I
    :goto_0
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$28;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$9(Lcom/com2us/module/inapp/lebi/LebiBilling;)Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1122
    .local v3, "uid":Ljava/lang/String;
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$28;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$9(Lcom/com2us/module/inapp/lebi/LebiBilling;)Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    move-result-object v0

    const-string v1, "addtionalInfo"

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1124
    .local v6, "addtionalInfo":Ljava/lang/String;
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/com2us/module/inapp/lebi/LebiBilling$28$1;

    iget v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$28;->val$itemPrice:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/com2us/module/inapp/lebi/LebiBilling$28$1;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling$28;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v8}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$45(Ljava/lang/Thread;)V

    .line 1143
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$46()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1144
    return-void

    .line 1116
    .end local v3    # "uid":Ljava/lang/String;
    .end local v5    # "quantity":I
    .end local v6    # "addtionalInfo":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    const/4 v5, 0x0

    .line 1118
    .restart local v5    # "quantity":I
    goto :goto_0

    .line 1119
    .end local v5    # "quantity":I
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .restart local v5    # "quantity":I
    goto :goto_0
.end method
