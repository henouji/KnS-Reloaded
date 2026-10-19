.class Lcom/com2us/wrapper/utility/CUtility$1$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/utility/CUtility$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/com2us/wrapper/utility/CUtility$1;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/utility/CUtility$1;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/utility/CUtility$1$1;->b:Lcom/com2us/wrapper/utility/CUtility$1;

    iput-object p2, p0, Lcom/com2us/wrapper/utility/CUtility$1$1;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility$1$1;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->onExitApplication()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
