.class public Li;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Ljava/lang/String;

.field private i:Lcom/com2us/wrapper/ui/CUserInput$b;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lcom/com2us/wrapper/ui/CUserInput$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li;->a:Landroid/widget/FrameLayout;

    iput-object v0, p0, Li;->b:Landroid/widget/LinearLayout;

    iput-object v0, p0, Li;->c:Landroid/widget/LinearLayout;

    iput-object v0, p0, Li;->d:Landroid/widget/TextView;

    iput-object v0, p0, Li;->e:Landroid/widget/EditText;

    iput-object v0, p0, Li;->f:Landroid/widget/Button;

    iput-object v0, p0, Li;->g:Landroid/widget/Button;

    iput-object v0, p0, Li;->h:Ljava/lang/String;

    iput-object v0, p0, Li;->i:Lcom/com2us/wrapper/ui/CUserInput$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li;->j:Z

    iput-object p1, p0, Li;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, Li;->i:Lcom/com2us/wrapper/ui/CUserInput$b;

    return-void
.end method

.method static synthetic a(Li;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Li;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Li;)Lcom/com2us/wrapper/ui/CUserInput$b;
    .locals 1

    iget-object v0, p0, Li;->i:Lcom/com2us/wrapper/ui/CUserInput$b;

    return-object v0
.end method

.method static synthetic c(Li;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li;->h:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 11

    const/4 v10, 0x0

    const/16 v6, 0x32

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getSystemVersionCode()I

    move-result v1

    const/16 v3, 0xd

    if-lt v1, v3, :cond_1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    :goto_0
    mul-int/lit8 v1, v0, 0x40

    div-int/lit8 v1, v1, 0x64

    const/16 v3, 0x64

    invoke-static {v3}, Lcom/com2us/wrapper/function/CFunction;->convertDPtoPX(I)I

    move-result v3

    sub-int/2addr v0, v3

    if-ge v1, v0, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Li;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li;->b:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Li;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Li;->b:Landroid/widget/LinearLayout;

    invoke-static {v6}, Lcom/com2us/wrapper/function/CFunction;->convertDPtoPX(I)I

    move-result v3

    const/16 v4, 0x6e

    invoke-static {v4}, Lcom/com2us/wrapper/function/CFunction;->convertDPtoPX(I)I

    move-result v4

    invoke-static {v6}, Lcom/com2us/wrapper/function/CFunction;->convertDPtoPX(I)I

    move-result v5

    invoke-static {v6}, Lcom/com2us/wrapper/function/CFunction;->convertDPtoPX(I)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Li;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Li;->b:Landroid/widget/LinearLayout;

    const/high16 v3, -0x45000000    # -0.001953125f

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Li;->b:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Li;->b:Landroid/widget/LinearLayout;

    new-instance v3, Li$1;

    invoke-direct {v3, p0}, Li$1;-><init>(Li;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Li;->d:Landroid/widget/TextView;

    iget-object v1, p0, Li;->d:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Li;->d:Landroid/widget/TextView;

    const-string v3, "R.string.wrapper_userinput_textview"

    invoke-static {v3}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Li;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Li;->d:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v3, Lcom/com2us/wrapper/ui/CCustomEditText;

    invoke-direct {v3, v2}, Lcom/com2us/wrapper/ui/CCustomEditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Li;->e:Landroid/widget/EditText;

    iget-object v3, p0, Li;->e:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Li;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li;->c:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Li;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Li;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Li;->g:Landroid/widget/Button;

    iget-object v0, p0, Li;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Li;->g:Landroid/widget/Button;

    const-string v3, "R.string.wrapper_userinput_cancel"

    invoke-static {v3}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Li;->f:Landroid/widget/Button;

    iget-object v0, p0, Li;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Li;->f:Landroid/widget/Button;

    const-string v1, "R.string.wrapper_userinput_confirm"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Li;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Li;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Li;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Li;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Li;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Li;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Li;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Li;->e:Landroid/widget/EditText;

    new-instance v1, Li$2;

    invoke-direct {v1, p0}, Li$2;-><init>(Li;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Li;->g:Landroid/widget/Button;

    new-instance v1, Li$3;

    invoke-direct {v1, p0}, Li$3;-><init>(Li;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Li;->f:Landroid/widget/Button;

    new-instance v1, Li$4;

    invoke-direct {v1, p0}, Li$4;-><init>(Li;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v9, p0, Li;->j:Z

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto/16 :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Li;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Li;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Li;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Li;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Li;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Li;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Li;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Li;->b:Landroid/widget/LinearLayout;

    iput-object v2, p0, Li;->c:Landroid/widget/LinearLayout;

    iput-object v2, p0, Li;->d:Landroid/widget/TextView;

    iput-object v2, p0, Li;->e:Landroid/widget/EditText;

    iput-object v2, p0, Li;->f:Landroid/widget/Button;

    iput-object v2, p0, Li;->g:Landroid/widget/Button;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li;->j:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Li;->j:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Li;->d()V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Li;->j:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Li;->c()V

    :cond_0
    iget-object v0, p0, Li;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iput-object p2, p0, Li;->h:Ljava/lang/String;

    iget-object v0, p0, Li;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Li;->e:Landroid/widget/EditText;

    iget-object v1, p0, Li;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Li;->e:Landroid/widget/EditText;

    iget-object v1, p0, Li;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Li;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Li;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->getInstance()Lcom/com2us/wrapper/ui/CSoftKeyboard;

    move-result-object v0

    iget-object v1, p0, Li;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->showKeyboard(Landroid/widget/TextView;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Li;->j:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Li;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Li;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->getInstance()Lcom/com2us/wrapper/ui/CSoftKeyboard;

    move-result-object v0

    iget-object v1, p0, Li;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->hideKeyboard(Landroid/widget/TextView;)V

    goto :goto_0
.end method
