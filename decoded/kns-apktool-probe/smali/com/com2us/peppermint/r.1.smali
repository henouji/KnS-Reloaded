.class Lcom/com2us/peppermint/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/PeppermintDialog;

.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/PeppermintDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/r;->a:Lcom/com2us/peppermint/PeppermintDialog;

    iput-object p2, p0, Lcom/com2us/peppermint/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v3, 0x1f4

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/com2us/peppermint/r;->a:Ljava/lang/String;

    const-string v2, "phonenumber"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/peppermint/r;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v0}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, v3}, Lcom/com2us/peppermint/util/PeppermintUtil;->getContactsPhonenumber(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:window[\'native\'].getAddressBookCallback(["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleGetAddressBookScheme params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/peppermint/r;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v1}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Lcom/com2us/peppermint/PeppermintDialog$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/com2us/peppermint/r;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-static {v0}, Lcom/com2us/peppermint/PeppermintDialog;->a(Lcom/com2us/peppermint/PeppermintDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, v3}, Lcom/com2us/peppermint/util/PeppermintUtil;->getContactsEmail(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method
