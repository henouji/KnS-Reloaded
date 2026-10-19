.class Lcom/com2us/module/inapp/lebi/LebiBilling$8$4;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/inapp/lebi/LebiBilling$8;

.field private final synthetic val$price:I

.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling$8;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8$4;->this$1:Lcom/com2us/module/inapp/lebi/LebiBilling$8;

    iput p2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8$4;->val$price:I

    iput-object p3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8$4;->val$uid:Ljava/lang/String;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 443
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8$4;->this$1:Lcom/com2us/module/inapp/lebi/LebiBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->access$0(Lcom/com2us/module/inapp/lebi/LebiBilling$8;)Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-result-object v0

    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$0()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8$4;->this$1:Lcom/com2us/module/inapp/lebi/LebiBilling$8;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->access$0(Lcom/com2us/module/inapp/lebi/LebiBilling$8;)Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$27(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8$4;->val$price:I

    iget-object v5, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8$4;->val$uid:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$28(Lcom/com2us/module/inapp/lebi/LebiBilling;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$29(Landroid/app/Dialog;)V

    .line 444
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$30()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 445
    return-void
.end method
