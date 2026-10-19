.class Lcom/com2us/wrapper/kernel/CWrapperKernel$q;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/wrapper/kernel/CWrapperKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->q()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->p()Lcom/com2us/wrapper/kernel/CWrapperKernel$q;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->r()V

    :cond_0
    return-void
.end method
