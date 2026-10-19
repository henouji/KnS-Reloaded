.class Lcom/com2us/wrapper/ui/CSoftKeyboard$3$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/ui/CSoftKeyboard$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/ui/CSoftKeyboard$3;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/ui/CSoftKeyboard$3;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$3$1;->a:Lcom/com2us/wrapper/ui/CSoftKeyboard$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$3$1;->a:Lcom/com2us/wrapper/ui/CSoftKeyboard$3;

    iget-object v0, v0, Lcom/com2us/wrapper/ui/CSoftKeyboard$3;->a:Lcom/com2us/wrapper/ui/CSoftKeyboard;

    iget-object v1, p0, Lcom/com2us/wrapper/ui/CSoftKeyboard$3$1;->a:Lcom/com2us/wrapper/ui/CSoftKeyboard$3;

    iget-object v1, v1, Lcom/com2us/wrapper/ui/CSoftKeyboard$3;->a:Lcom/com2us/wrapper/ui/CSoftKeyboard;

    invoke-static {v1}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->c(Lcom/com2us/wrapper/ui/CSoftKeyboard;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/ui/CSoftKeyboard;->showKeyboard(Landroid/widget/TextView;)V

    return-void
.end method
