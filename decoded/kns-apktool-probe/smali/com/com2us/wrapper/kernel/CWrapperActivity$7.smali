.class Lcom/com2us/wrapper/kernel/CWrapperActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperActivity;->onStartTaskCompleted()V
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

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$7;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$7;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$7;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    invoke-static {v1}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->d(Lcom/com2us/wrapper/kernel/CWrapperActivity;)Lcom/com2us/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->onModuleManagerInitialize(Lcom/com2us/module/ModuleManager;)V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$7;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    iget-object v0, v0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/com2us/wrapper/common/CCommonAPI;->initialize(Landroid/content/Context;)V

    const-string v0, "CommonLibrary"

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->b(Ljava/lang/String;)V

    return-void
.end method
