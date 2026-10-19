.class public Lh;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/text/TextWatcher;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:[I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Lcom/com2us/wrapper/ui/CTextInput$b;

.field private w:[Landroid/text/InputFilter;


# direct methods
.method public constructor <init>(ILandroid/widget/FrameLayout;Lcom/com2us/wrapper/ui/CTextInput$b;[II)V
    .locals 5

    const/16 v4, 0xd

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh;->a:I

    iput-object v2, p0, Lh;->b:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lh;->c:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lh;->d:Landroid/widget/EditText;

    iput-object v2, p0, Lh;->e:Landroid/text/TextWatcher;

    const-string v0, ""

    iput-object v0, p0, Lh;->f:Ljava/lang/String;

    const/16 v0, 0x2328

    iput v0, p0, Lh;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lh;->h:I

    const/4 v0, 0x2

    iput v0, p0, Lh;->i:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lh;->j:[I

    const/high16 v0, -0x1000000

    iput v0, p0, Lh;->k:I

    const/4 v0, -0x2

    iput v0, p0, Lh;->l:I

    iput v1, p0, Lh;->m:I

    iput v3, p0, Lh;->n:I

    iput-boolean v1, p0, Lh;->o:Z

    iput-boolean v1, p0, Lh;->p:Z

    iput v1, p0, Lh;->s:I

    const-string v0, ""

    iput-object v0, p0, Lh;->t:Ljava/lang/String;

    iput-boolean v1, p0, Lh;->u:Z

    iput-object v2, p0, Lh;->v:Lcom/com2us/wrapper/ui/CTextInput$b;

    iput p1, p0, Lh;->a:I

    iput-object p2, p0, Lh;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lh;->v:Lcom/com2us/wrapper/ui/CTextInput$b;

    new-array v0, v3, [Landroid/text/InputFilter;

    iput-object v0, p0, Lh;->w:[Landroid/text/InputFilter;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->convertOriginaltoDisplay(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_0

    :goto_0
    iput v0, p0, Lh;->q:I

    invoke-direct {p0, p4, p5}, Lh;->a([II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lh;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .locals 0

    iput-object p1, p0, Lh;->e:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic a(Lh;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lh;->d:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic a(Lh;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lh;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic a(Lh;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lh;->c:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lh;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a([II)V
    .locals 1

    iput-object p1, p0, Lh;->j:[I

    iput p2, p0, Lh;->r:I

    new-instance v0, Lh$1;

    invoke-direct {v0, p0, p1}, Lh$1;-><init>(Lh;[I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Lh$12;

    invoke-direct {v0, p0, p2}, Lh$12;-><init>(Lh;I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Lh$13;

    invoke-direct {v0, p0}, Lh$13;-><init>(Lh;)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lh;Z)Z
    .locals 0

    iput-boolean p1, p0, Lh;->p:Z

    return p1
.end method

.method static synthetic b(Lh;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lh;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lh;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lh;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic d(Lh;)I
    .locals 1

    iget v0, p0, Lh;->q:I

    return v0
.end method

.method static synthetic e(Lh;)I
    .locals 1

    iget v0, p0, Lh;->a:I

    return v0
.end method

.method static synthetic f(Lh;)Lcom/com2us/wrapper/ui/CTextInput$b;
    .locals 1

    iget-object v0, p0, Lh;->v:Lcom/com2us/wrapper/ui/CTextInput$b;

    return-object v0
.end method

.method static synthetic g(Lh;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lh;->e:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic h(Lh;)Z
    .locals 1

    iget-boolean v0, p0, Lh;->p:Z

    return v0
.end method

.method static synthetic i(Lh;)[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Lh;->w:[Landroid/text/InputFilter;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lh$14;

    invoke-direct {v0, p0}, Lh$14;-><init>(Lh;)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lh;->g:I

    new-instance v0, Lh$16;

    invoke-direct {v0, p0, p1}, Lh$16;-><init>(Lh;I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lh;->f:Ljava/lang/String;

    new-instance v0, Lh$15;

    invoke-direct {v0, p0, p1}, Lh$15;-><init>(Lh;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lh;->o:Z

    new-instance v0, Lh$6;

    invoke-direct {v0, p0, p1}, Lh$6;-><init>(Lh;Z)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a([I)V
    .locals 1

    iput-object p1, p0, Lh;->j:[I

    new-instance v0, Lh$19;

    invoke-direct {v0, p0, p1}, Lh$19;-><init>(Lh;[I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Lh;->h:I

    new-instance v0, Lh$17;

    invoke-direct {v0, p0, p1}, Lh$17;-><init>(Lh;I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lh;->t:Ljava/lang/String;

    new-instance v0, Lh$10;

    invoke-direct {v0, p0, p1}, Lh$10;-><init>(Lh;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iput-boolean p1, p0, Lh;->p:Z

    new-instance v0, Lh$7;

    invoke-direct {v0, p0, p1}, Lh$7;-><init>(Lh;Z)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lh;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 1

    iput p1, p0, Lh;->i:I

    new-instance v0, Lh$18;

    invoke-direct {v0, p0, p1}, Lh$18;-><init>(Lh;I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lh;->u:Z

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lh;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    iput p1, p0, Lh;->k:I

    new-instance v0, Lh$2;

    invoke-direct {v0, p0, p1}, Lh$2;-><init>(Lh;I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    new-instance v0, Lh$11;

    invoke-direct {v0, p0, p1}, Lh$11;-><init>(Lh;Z)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lh;->g:I

    return v0
.end method

.method public e(I)V
    .locals 1

    iput p1, p0, Lh;->l:I

    new-instance v0, Lh$3;

    invoke-direct {v0, p0, p1}, Lh$3;-><init>(Lh;I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lh;->h:I

    return v0
.end method

.method public f(I)V
    .locals 1

    iput p1, p0, Lh;->m:I

    new-instance v0, Lh$4;

    invoke-direct {v0, p0, p1}, Lh$4;-><init>(Lh;I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lh;->i:I

    return v0
.end method

.method public g(I)V
    .locals 1

    iput p1, p0, Lh;->n:I

    new-instance v0, Lh$5;

    invoke-direct {v0, p0, p1}, Lh$5;-><init>(Lh;I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(I)V
    .locals 1

    iput p1, p0, Lh;->q:I

    new-instance v0, Lh$8;

    invoke-direct {v0, p0, p1}, Lh$8;-><init>(Lh;I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()[I
    .locals 1

    iget-object v0, p0, Lh;->j:[I

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lh;->k:I

    return v0
.end method

.method public i(I)V
    .locals 1

    iput p1, p0, Lh;->s:I

    new-instance v0, Lh$9;

    invoke-direct {v0, p0, p1}, Lh$9;-><init>(Lh;I)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lh;->l:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lh;->m:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lh;->n:I

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lh;->o:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lh;->p:Z

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lh;->q:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lh;->s:I

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh;->t:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lh;->u:Z

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lh;->r:I

    return v0
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Lh;->v:Lcom/com2us/wrapper/ui/CTextInput$b;

    iget v1, p0, Lh;->a:I

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/com2us/wrapper/ui/CTextInput$b;->a(II)V

    iget-boolean v0, p0, Lh;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh;->b(Z)V

    :cond_0
    return-void
.end method
