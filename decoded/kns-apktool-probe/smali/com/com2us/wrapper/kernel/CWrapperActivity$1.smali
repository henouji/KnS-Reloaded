.class Lcom/com2us/wrapper/kernel/CWrapperActivity$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/kernel/CWrapperActivity;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$1;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$1;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    iget-object v0, v0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    const-string v1, "R.id.DeviceLayout"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$1;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    iget-object v0, v0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/wrapper/kernel/CWrapperActivity$1$1;

    invoke-direct {v1, p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$1$1;-><init>(Lcom/com2us/wrapper/kernel/CWrapperActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
