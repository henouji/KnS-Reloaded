.class Lcom/com2us/module/inapp/lebi/LebiBilling$24;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling;->purchasePopup(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

.field private final synthetic val$price:I

.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iput-object p2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24;->val$uid:Ljava/lang/String;

    iput p3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24;->val$price:I

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/inapp/lebi/LebiBilling$24;)Lcom/com2us/module/inapp/lebi/LebiBilling;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1041
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$0()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/com2us/module/inapp/lebi/LebiBilling$24$1;

    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24;->val$uid:Ljava/lang/String;

    iget v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$24;->val$price:I

    invoke-direct {v1, p0, v2, v3}, Lcom/com2us/module/inapp/lebi/LebiBilling$24$1;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling$24;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1054
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1055
    return-void
.end method
