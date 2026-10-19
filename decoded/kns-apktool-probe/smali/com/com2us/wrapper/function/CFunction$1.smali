.class final Lcom/com2us/wrapper/function/CFunction$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/function/CFunction;->setControlByPX(Landroid/view/View;Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/view/View;

.field final synthetic e:I

.field final synthetic f:I


# direct methods
.method constructor <init>(Landroid/view/View;IILandroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/function/CFunction$1;->a:Landroid/view/View;

    iput p2, p0, Lcom/com2us/wrapper/function/CFunction$1;->b:I

    iput p3, p0, Lcom/com2us/wrapper/function/CFunction$1;->c:I

    iput-object p4, p0, Lcom/com2us/wrapper/function/CFunction$1;->d:Landroid/view/View;

    iput p5, p0, Lcom/com2us/wrapper/function/CFunction$1;->e:I

    iput p6, p0, Lcom/com2us/wrapper/function/CFunction$1;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/function/CFunction$1;->a:Landroid/view/View;

    iget v1, p0, Lcom/com2us/wrapper/function/CFunction$1;->b:I

    iget v2, p0, Lcom/com2us/wrapper/function/CFunction$1;->c:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/com2us/wrapper/function/CFunction$1;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/com2us/wrapper/function/CFunction$1;->e:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/com2us/wrapper/function/CFunction$1;->f:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/com2us/wrapper/function/CFunction$1;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
