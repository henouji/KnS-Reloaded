.class Lcom/com2us/wrapper/game/CGameManager$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/game/CGameManager;->setDisplay(IIIILcom/com2us/wrapper/kernel/CWrapperData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/com2us/wrapper/game/CGameManager;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/game/CGameManager;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/game/CGameManager$1;->e:Lcom/com2us/wrapper/game/CGameManager;

    iput p2, p0, Lcom/com2us/wrapper/game/CGameManager$1;->a:I

    iput p3, p0, Lcom/com2us/wrapper/game/CGameManager$1;->b:I

    iput p4, p0, Lcom/com2us/wrapper/game/CGameManager$1;->c:I

    iput p5, p0, Lcom/com2us/wrapper/game/CGameManager$1;->d:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lc;

    invoke-direct {v0}, Lc;-><init>()V

    invoke-virtual {v0}, Lc;->a()Z

    new-instance v1, Lcom/com2us/wrapper/game/CGameManager$1$1;

    invoke-direct {v1, p0, v0}, Lcom/com2us/wrapper/game/CGameManager$1$1;-><init>(Lcom/com2us/wrapper/game/CGameManager$1;Lc;)V

    invoke-static {v1}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lc;->b()Z

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->j()V

    return-void
.end method
