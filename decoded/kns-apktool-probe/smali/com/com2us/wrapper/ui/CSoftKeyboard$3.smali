.class Lcom/com2us/wrapper/ui/CSoftKeyboard$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/ui/CSoftKeyboard;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/ui/CSoftKeyboard;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/ui/CSoftKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$3;->a:Lcom/com2us/wrapper/ui/CSoftKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$3;->a:Lcom/com2us/wrapper/ui/CSoftKeyboard;

    invoke-static {v0}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->c(Lcom/com2us/wrapper/ui/CSoftKeyboard;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$3;->a:Lcom/com2us/wrapper/ui/CSoftKeyboard;

    invoke-static {v0}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->c(Lcom/com2us/wrapper/ui/CSoftKeyboard;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    new-instance v0, Lcom/com2us/wrapper/ui/CSoftKeyboard$3$1;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/ui/CSoftKeyboard$3$1;-><init>(Lcom/com2us/wrapper/ui/CSoftKeyboard$3;)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/ui/CSoftKeyboard$3$1;->start()V

    :cond_0
    return-void
.end method
