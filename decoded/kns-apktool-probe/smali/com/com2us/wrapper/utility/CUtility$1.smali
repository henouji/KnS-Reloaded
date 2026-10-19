.class Lcom/com2us/wrapper/utility/CUtility$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/utility/CUtility;->showDialogAndExit(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/com2us/wrapper/utility/CUtility;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/utility/CUtility;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/utility/CUtility$1;->c:Lcom/com2us/wrapper/utility/CUtility;

    iput-object p2, p0, Lcom/com2us/wrapper/utility/CUtility$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/com2us/wrapper/utility/CUtility$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "R.drawable.alert_dialog_icon"

    invoke-static {v0}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/com2us/wrapper/utility/CUtility$1;->c:Lcom/com2us/wrapper/utility/CUtility;

    invoke-static {v2}, Lcom/com2us/wrapper/utility/CUtility;->a(Lcom/com2us/wrapper/utility/CUtility;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v1, Lcom/com2us/wrapper/utility/CUtility$1$1;

    invoke-direct {v1, p0, v0}, Lcom/com2us/wrapper/utility/CUtility$1$1;-><init>(Lcom/com2us/wrapper/utility/CUtility$1;Landroid/app/AlertDialog;)V

    invoke-virtual {v1}, Lcom/com2us/wrapper/utility/CUtility$1$1;->start()V

    return-void
.end method
