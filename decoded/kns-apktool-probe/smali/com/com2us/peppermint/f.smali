.class Lcom/com2us/peppermint/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/PeppermintDialog;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/PeppermintDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/f;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/f;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog;->dismiss()V

    return-void
.end method
