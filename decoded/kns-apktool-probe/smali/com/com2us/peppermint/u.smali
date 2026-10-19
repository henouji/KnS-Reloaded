.class Lcom/com2us/peppermint/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/PeppermintDialog$b;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/PeppermintDialog$b;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/u;->a:Lcom/com2us/peppermint/PeppermintDialog$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/com2us/peppermint/u;->a:Lcom/com2us/peppermint/PeppermintDialog$b;

    invoke-static {v0}, Lcom/com2us/peppermint/PeppermintDialog$b;->a(Lcom/com2us/peppermint/PeppermintDialog$b;)Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "URL does not exist."

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
