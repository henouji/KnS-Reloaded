.class Lcom/com2us/module/inapp/DefaultBilling$5;
.super Ljava/lang/Object;
.source "DefaultBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/DefaultBilling;->showPreviousProgressInfoDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/DefaultBilling;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$okay:Ljava/lang/String;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/DefaultBilling;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/DefaultBilling$5;->this$0:Lcom/com2us/module/inapp/DefaultBilling;

    iput-object p2, p0, Lcom/com2us/module/inapp/DefaultBilling$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/com2us/module/inapp/DefaultBilling$5;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/com2us/module/inapp/DefaultBilling$5;->val$okay:Ljava/lang/String;

    iput-object p5, p0, Lcom/com2us/module/inapp/DefaultBilling$5;->val$runnable:Ljava/lang/Runnable;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 502
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/com2us/module/inapp/DefaultBilling$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 503
    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 504
    iget-object v2, p0, Lcom/com2us/module/inapp/DefaultBilling$5;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 506
    iget-object v2, p0, Lcom/com2us/module/inapp/DefaultBilling$5;->val$okay:Ljava/lang/String;

    new-instance v3, Lcom/com2us/module/inapp/DefaultBilling$5$1;

    invoke-direct {v3, p0}, Lcom/com2us/module/inapp/DefaultBilling$5$1;-><init>(Lcom/com2us/module/inapp/DefaultBilling$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 511
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/com2us/module/inapp/DefaultBilling$5$2;

    iget-object v2, p0, Lcom/com2us/module/inapp/DefaultBilling$5;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$5;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2, v3}, Lcom/com2us/module/inapp/DefaultBilling$5$2;-><init>(Lcom/com2us/module/inapp/DefaultBilling$5;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 518
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 519
    return-void
.end method
