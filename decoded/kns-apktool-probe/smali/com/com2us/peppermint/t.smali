.class Lcom/com2us/peppermint/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/PeppermintDialog$a;

.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/PeppermintDialog$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/t;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    iput-object p2, p0, Lcom/com2us/peppermint/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PeppermintWebView loadUrl url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/peppermint/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/t;->a:Lcom/com2us/peppermint/PeppermintDialog$a;

    iget-object v1, p0, Lcom/com2us/peppermint/t;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/com2us/peppermint/PeppermintDialog$a;->a(Lcom/com2us/peppermint/PeppermintDialog$a;Ljava/lang/String;)V

    return-void
.end method
