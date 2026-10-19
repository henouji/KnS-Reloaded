.class Li$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li;


# direct methods
.method constructor <init>(Li;)V
    .locals 0

    iput-object p1, p0, Li$3;->a:Li;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Li$3;->a:Li;

    invoke-static {v0}, Li;->b(Li;)Lcom/com2us/wrapper/ui/CUserInput$b;

    move-result-object v0

    iget-object v1, p0, Li$3;->a:Li;

    invoke-static {v1}, Li;->c(Li;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/com2us/wrapper/ui/CUserInput$b;->a(Ljava/lang/String;)V

    return-void
.end method
