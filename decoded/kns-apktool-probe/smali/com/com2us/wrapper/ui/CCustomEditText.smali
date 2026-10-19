.class public Lcom/com2us/wrapper/ui/CCustomEditText;
.super Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->getInstance()Lcom/com2us/wrapper/ui/CSoftKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->onKeyboardHide()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->getInstance()Lcom/com2us/wrapper/ui/CSoftKeyboard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->onKeyboardShow(Landroid/widget/TextView;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
