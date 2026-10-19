.class Lcom/com2us/peppermint/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/Peppermint;

.field private final synthetic a:Lcom/com2us/peppermint/PeppermintCallback;

.field private final synthetic a:Ljava/lang/String;

.field private final synthetic a:Z


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/Peppermint;Ljava/lang/String;ZLcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/d;->a:Lcom/com2us/peppermint/Peppermint;

    iput-object p2, p0, Lcom/com2us/peppermint/d;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/com2us/peppermint/d;->a:Z

    iput-object p4, p0, Lcom/com2us/peppermint/d;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/d;)Lcom/com2us/peppermint/Peppermint;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/d;->a:Lcom/com2us/peppermint/Peppermint;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v7, p0, Lcom/com2us/peppermint/d;->a:Lcom/com2us/peppermint/Peppermint;

    new-instance v0, Lcom/com2us/peppermint/PeppermintDialog;

    iget-object v1, p0, Lcom/com2us/peppermint/d;->a:Lcom/com2us/peppermint/Peppermint;

    iget-object v2, p0, Lcom/com2us/peppermint/d;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-static {v2}, Lcom/com2us/peppermint/Peppermint;->a(Lcom/com2us/peppermint/Peppermint;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/com2us/peppermint/d;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/com2us/peppermint/d;->a:Z

    iget-object v5, p0, Lcom/com2us/peppermint/d;->a:Lcom/com2us/peppermint/PeppermintCallback;

    new-instance v6, Lcom/com2us/peppermint/e;

    invoke-direct {v6, p0}, Lcom/com2us/peppermint/e;-><init>(Lcom/com2us/peppermint/d;)V

    invoke-direct/range {v0 .. v6}, Lcom/com2us/peppermint/PeppermintDialog;-><init>(Lcom/com2us/peppermint/Peppermint;Ljava/lang/String;Ljava/lang/String;ZLcom/com2us/peppermint/PeppermintCallback;Lcom/com2us/peppermint/PeppermintDialogCallback;)V

    invoke-static {v7, v0}, Lcom/com2us/peppermint/Peppermint;->a(Lcom/com2us/peppermint/Peppermint;Lcom/com2us/peppermint/PeppermintDialog;)V

    iget-object v0, p0, Lcom/com2us/peppermint/d;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-static {v0}, Lcom/com2us/peppermint/Peppermint;->a(Lcom/com2us/peppermint/Peppermint;)Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog;->show()V

    return-void
.end method
