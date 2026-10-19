.class Lcom/com2us/module/inapp/DefaultBilling$4;
.super Ljava/lang/Object;
.source "DefaultBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/DefaultBilling;->checkNetworkState()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/DefaultBilling;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/DefaultBilling;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/DefaultBilling$4;->this$0:Lcom/com2us/module/inapp/DefaultBilling;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 310
    sget-object v0, Lcom/com2us/module/inapp/DefaultBilling;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/com2us/module/inapp/DefaultBilling$4;->this$0:Lcom/com2us/module/inapp/DefaultBilling;

    iget-object v1, v1, Lcom/com2us/module/inapp/DefaultBilling;->Toast_NetworkInactive:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 311
    return-void
.end method
