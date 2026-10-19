.class Lcom/com2us/peppermint/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/com2us/peppermint/PeppermintDialogCallback;


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/d;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/d;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/e;->a:Lcom/com2us/peppermint/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const-string v0, "dialog dismiss!!"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/e;->a:Lcom/com2us/peppermint/d;

    invoke-static {v0}, Lcom/com2us/peppermint/d;->a(Lcom/com2us/peppermint/d;)Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/com2us/peppermint/Peppermint;->a(Lcom/com2us/peppermint/Peppermint;Lcom/com2us/peppermint/PeppermintDialog;)V

    return-void
.end method
