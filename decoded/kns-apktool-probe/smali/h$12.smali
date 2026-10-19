.class Lh$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->a([II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lh;


# direct methods
.method constructor <init>(Lh;I)V
    .locals 0

    iput-object p1, p0, Lh$12;->b:Lh;

    iput p2, p0, Lh$12;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh$12;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lh$12;->b:Lh;

    invoke-static {v1}, Lh;->d(Lh;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lh$12;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget v0, p0, Lh$12;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lh$12;->b:Lh;

    new-instance v1, Lh$12$1;

    invoke-direct {v1, p0}, Lh$12$1;-><init>(Lh$12;)V

    invoke-static {v0, v1}, Lh;->a(Lh;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;

    iget-object v0, p0, Lh$12;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lh$12;->b:Lh;

    invoke-static {v1}, Lh;->g(Lh;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lh$12;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lh$12$2;

    invoke-direct {v1, p0}, Lh$12$2;-><init>(Lh$12;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lh$12;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lh$12$3;

    invoke-direct {v1, p0}, Lh$12$3;-><init>(Lh$12;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lh$12;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lh$12;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x20001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
