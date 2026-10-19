.class Lcom/com2us/wrapper/ui/CTextInput$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/ui/CTextInput;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/ui/CTextInput;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/ui/CTextInput;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CTextInput$1;->a:Lcom/com2us/wrapper/ui/CTextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput$1;->a:Lcom/com2us/wrapper/ui/CTextInput;

    invoke-static {v0}, Lcom/com2us/wrapper/ui/CTextInput;->a(Lcom/com2us/wrapper/ui/CTextInput;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
