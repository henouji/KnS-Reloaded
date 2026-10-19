.class Lcom/com2us/wrapper/kernel/CWrapperActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperActivity;->e(Lcom/com2us/wrapper/kernel/CWrapperData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:I

.field final synthetic c:Lcom/com2us/wrapper/kernel/CWrapperActivity;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperActivity;Ljava/lang/Class;I)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$2;->c:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    iput-object p2, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$2;->a:Ljava/lang/Class;

    iput p3, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onResult"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$2;->c:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    iget-object v0, v0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/com2us/wrapper/kernel/CWrapperActivity$2$1;

    invoke-direct {v2, p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$2$1;-><init>(Lcom/com2us/wrapper/kernel/CWrapperActivity$2;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$2;->b:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperActivity$2$2;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$2$2;-><init>(Lcom/com2us/wrapper/kernel/CWrapperActivity$2;)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$2$2;->start()V

    goto :goto_0

    :cond_2
    const-string v2, "toString"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "IArmCallback InvocationHandler"

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
