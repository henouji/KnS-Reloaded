.class Lcom/com2us/wrapper/kernel/CWrapperActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperActivity$2;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/kernel/CWrapperActivity$2;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$2$1;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$2$1;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity$2;

    iget-object v0, v0, Lcom/com2us/wrapper/kernel/CWrapperActivity$2;->a:Ljava/lang/Class;

    const-string v1, "release"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$2$1;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity$2;

    iget-object v1, v1, Lcom/com2us/wrapper/kernel/CWrapperActivity$2;->c:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    invoke-static {v1}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->a(Lcom/com2us/wrapper/kernel/CWrapperActivity;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$2$1;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity$2;

    iget-object v0, v0, Lcom/com2us/wrapper/kernel/CWrapperActivity$2;->c:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->a(Lcom/com2us/wrapper/kernel/CWrapperActivity;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ArmLibrary"

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->b(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
