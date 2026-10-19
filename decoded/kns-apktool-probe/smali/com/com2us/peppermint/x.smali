.class Lcom/com2us/peppermint/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/PeppermintDialog$b;

.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/PeppermintDialog$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/x;->a:Lcom/com2us/peppermint/PeppermintDialog$b;

    iput-object p2, p0, Lcom/com2us/peppermint/x;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/com2us/peppermint/x;->a:Lcom/com2us/peppermint/PeppermintDialog$b;

    invoke-static {v0}, Lcom/com2us/peppermint/PeppermintDialog$b;->a(Lcom/com2us/peppermint/PeppermintDialog$b;)Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/com2us/peppermint/x;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
