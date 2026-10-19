.class Lcom/com2us/peppermint/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/PeppermintDialog;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/PeppermintDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/m;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/com2us/peppermint/m;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
