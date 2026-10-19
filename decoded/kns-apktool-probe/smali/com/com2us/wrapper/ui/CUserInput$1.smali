.class Lcom/com2us/wrapper/ui/CUserInput$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/ui/CUserInput;->createUserInput(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/com2us/wrapper/ui/CUserInput;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/ui/CUserInput;I)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CUserInput$1;->b:Lcom/com2us/wrapper/ui/CUserInput;

    iput p2, p0, Lcom/com2us/wrapper/ui/CUserInput$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/com2us/wrapper/ui/CUserInput$1;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/com2us/wrapper/ui/CUserInput$1;->b:Lcom/com2us/wrapper/ui/CUserInput;

    invoke-static {v1}, Lcom/com2us/wrapper/ui/CUserInput;->b(Lcom/com2us/wrapper/ui/CUserInput;)Li;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/wrapper/ui/CUserInput$1;->b:Lcom/com2us/wrapper/ui/CUserInput;

    invoke-static {v2}, Lcom/com2us/wrapper/ui/CUserInput;->a(Lcom/com2us/wrapper/ui/CUserInput;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li;->a(ILjava/lang/String;)V

    return-void

    :pswitch_0
    const/16 v0, 0x41

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
