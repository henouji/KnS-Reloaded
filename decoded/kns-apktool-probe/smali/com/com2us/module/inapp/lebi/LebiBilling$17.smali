.class Lcom/com2us/module/inapp/lebi/LebiBilling$17;
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


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$17;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 978
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$17;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$39(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 979
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 980
    return-void
.end method
