.class public Lcom/com2us/wrapper/ui/CSoftKeyboard;
.super Lcom/com2us/wrapper/kernel/CWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/ui/CSoftKeyboard$4;
    }
.end annotation


# static fields
.field private static d:Lcom/com2us/wrapper/ui/CSoftKeyboard;


# instance fields
.field private a:Landroid/view/inputmethod/InputMethodManager;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/com2us/wrapper/ui/CSoftKeyboard;

    invoke-direct {v0}, Lcom/com2us/wrapper/ui/CSoftKeyboard;-><init>()V

    sput-object v0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->d:Lcom/com2us/wrapper/ui/CSoftKeyboard;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>(Z)V

    iput-object v1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->a:Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->b:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->a:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method static synthetic a(Lcom/com2us/wrapper/ui/CSoftKeyboard;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/wrapper/ui/CSoftKeyboard;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->c:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/com2us/wrapper/ui/CSoftKeyboard;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->a:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic c(Lcom/com2us/wrapper/ui/CSoftKeyboard;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public static getInstance()Lcom/com2us/wrapper/ui/CSoftKeyboard;
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->d:Lcom/com2us/wrapper/ui/CSoftKeyboard;

    return-object v0
.end method


# virtual methods
.method public hideKeyboard(Landroid/widget/TextView;)V
    .locals 3

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->b:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/com2us/wrapper/ui/CSoftKeyboard$1;

    invoke-direct {v0, p0, p1}, Lcom/com2us/wrapper/ui/CSoftKeyboard$1;-><init>(Lcom/com2us/wrapper/ui/CSoftKeyboard;Landroid/widget/TextView;)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/ui/CSoftKeyboard$1;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->a:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->onKeyboardHide()V

    goto :goto_0
.end method

.method public hideKeyboardForcedly()Landroid/widget/TextView;
    .locals 4

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->a:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->onKeyboardHide()V

    :cond_0
    return-object v0
.end method

.method public onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapper;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V

    sget-object v0, Lcom/com2us/wrapper/ui/CSoftKeyboard$4;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/com2us/wrapper/ui/CSoftKeyboard$2;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/ui/CSoftKeyboard$2;-><init>(Lcom/com2us/wrapper/ui/CSoftKeyboard;)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/com2us/wrapper/ui/CSoftKeyboard$3;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/ui/CSoftKeyboard$3;-><init>(Lcom/com2us/wrapper/ui/CSoftKeyboard;)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->hideKeyboardForcedly()Landroid/widget/TextView;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyboardHide()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->b:Landroid/widget/TextView;

    return-void
.end method

.method public onKeyboardShow(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->b:Landroid/widget/TextView;

    return-void
.end method

.method public showKeyboard(Landroid/widget/TextView;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard;->a:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->onKeyboardShow(Landroid/widget/TextView;)V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
