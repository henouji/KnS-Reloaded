.class Lcom/com2us/wrapper/ui/CSoftKeyboard$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/ui/CSoftKeyboard;->hideKeyboard(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/com2us/wrapper/ui/CSoftKeyboard;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/ui/CSoftKeyboard;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$1;->b:Lcom/com2us/wrapper/ui/CSoftKeyboard;

    iput-object p2, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$1;->b:Lcom/com2us/wrapper/ui/CSoftKeyboard;

    invoke-static {v0}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->a(Lcom/com2us/wrapper/ui/CSoftKeyboard;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$1;->a:Landroid/widget/TextView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$1;->b:Lcom/com2us/wrapper/ui/CSoftKeyboard;

    invoke-static {v0}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->b(Lcom/com2us/wrapper/ui/CSoftKeyboard;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$1;->b:Lcom/com2us/wrapper/ui/CSoftKeyboard;

    invoke-static {v1}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->a(Lcom/com2us/wrapper/ui/CSoftKeyboard;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$1;->b:Lcom/com2us/wrapper/ui/CSoftKeyboard;

    invoke-virtual {v0}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->onKeyboardHide()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
