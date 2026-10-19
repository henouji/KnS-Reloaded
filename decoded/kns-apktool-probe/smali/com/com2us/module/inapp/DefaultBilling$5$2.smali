.class Lcom/com2us/module/inapp/DefaultBilling$5$2;
.super Ljava/lang/Object;
.source "DefaultBilling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/DefaultBilling$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/inapp/DefaultBilling$5;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/DefaultBilling$5;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/DefaultBilling$5$2;->this$1:Lcom/com2us/module/inapp/DefaultBilling$5;

    iput-object p2, p0, Lcom/com2us/module/inapp/DefaultBilling$5$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/com2us/module/inapp/DefaultBilling$5$2;->val$runnable:Ljava/lang/Runnable;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling$5$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/com2us/module/inapp/DefaultBilling$5$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 516
    return-void
.end method
