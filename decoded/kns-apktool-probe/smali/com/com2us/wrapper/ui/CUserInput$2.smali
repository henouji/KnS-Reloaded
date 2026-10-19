.class Lcom/com2us/wrapper/ui/CUserInput$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/ui/CUserInput;->destroyUserInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/ui/CUserInput;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/ui/CUserInput;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CUserInput$2;->a:Lcom/com2us/wrapper/ui/CUserInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput$2;->a:Lcom/com2us/wrapper/ui/CUserInput;

    invoke-static {v0}, Lcom/com2us/wrapper/ui/CUserInput;->b(Lcom/com2us/wrapper/ui/CUserInput;)Li;

    move-result-object v0

    invoke-virtual {v0}, Li;->b()V

    return-void
.end method
