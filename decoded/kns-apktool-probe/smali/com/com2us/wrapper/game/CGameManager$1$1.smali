.class Lcom/com2us/wrapper/game/CGameManager$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/game/CGameManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc;

.field final synthetic b:Lcom/com2us/wrapper/game/CGameManager$1;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/game/CGameManager$1;Lc;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iput-object p2, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->a:Lc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iget-object v0, v0, Lcom/com2us/wrapper/game/CGameManager$1;->e:Lcom/com2us/wrapper/game/CGameManager;

    invoke-static {v0}, Lcom/com2us/wrapper/game/CGameManager;->a(Lcom/com2us/wrapper/game/CGameManager;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "R.id.ViewPortPaddingLayout"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iget-object v1, v1, Lcom/com2us/wrapper/game/CGameManager$1;->e:Lcom/com2us/wrapper/game/CGameManager;

    invoke-static {v1}, Lcom/com2us/wrapper/game/CGameManager;->a(Lcom/com2us/wrapper/game/CGameManager;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "R.id.ViewPortSizeLayout"

    invoke-static {v2}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iget v2, v2, Lcom/com2us/wrapper/game/CGameManager$1;->a:I

    iget-object v3, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iget v3, v3, Lcom/com2us/wrapper/game/CGameManager$1;->b:I

    iget-object v4, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iget v4, v4, Lcom/com2us/wrapper/game/CGameManager$1;->c:I

    iget-object v5, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iget v5, v5, Lcom/com2us/wrapper/game/CGameManager$1;->d:I

    invoke-static/range {v0 .. v5}, Lcom/com2us/wrapper/function/CFunction;->setControlByPX(Landroid/view/View;Landroid/view/View;IIII)V

    :goto_0
    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->a:Lc;

    invoke-virtual {v0}, Lc;->c()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iget-object v0, v0, Lcom/com2us/wrapper/game/CGameManager$1;->e:Lcom/com2us/wrapper/game/CGameManager;

    invoke-static {v0}, Lcom/com2us/wrapper/game/CGameManager;->a(Lcom/com2us/wrapper/game/CGameManager;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "R.id.GLViewLayout"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iget-object v1, v1, Lcom/com2us/wrapper/game/CGameManager$1;->e:Lcom/com2us/wrapper/game/CGameManager;

    invoke-static {v1}, Lcom/com2us/wrapper/game/CGameManager;->b(Lcom/com2us/wrapper/game/CGameManager;)Landroid/opengl/GLSurfaceView;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iget v2, v2, Lcom/com2us/wrapper/game/CGameManager$1;->a:I

    iget-object v3, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iget v3, v3, Lcom/com2us/wrapper/game/CGameManager$1;->b:I

    iget-object v4, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iget v4, v4, Lcom/com2us/wrapper/game/CGameManager$1;->c:I

    iget-object v5, p0, Lcom/com2us/wrapper/game/CGameManager$1$1;->b:Lcom/com2us/wrapper/game/CGameManager$1;

    iget v5, v5, Lcom/com2us/wrapper/game/CGameManager$1;->d:I

    invoke-static/range {v0 .. v5}, Lcom/com2us/wrapper/function/CFunction;->setControlByPX(Landroid/view/View;Landroid/view/View;IIII)V

    goto :goto_0
.end method
