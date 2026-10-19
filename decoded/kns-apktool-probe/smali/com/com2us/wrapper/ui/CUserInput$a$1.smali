.class Lcom/com2us/wrapper/ui/CUserInput$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/ui/CUserInput$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/com2us/wrapper/ui/CUserInput$a;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/ui/CUserInput$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CUserInput$a$1;->b:Lcom/com2us/wrapper/ui/CUserInput$a;

    iput-object p2, p0, Lcom/com2us/wrapper/ui/CUserInput$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/ui/CUserInput$a$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/com2us/wrapper/ui/CUserInput$a$1;->b:Lcom/com2us/wrapper/ui/CUserInput$a;

    iget-object v1, v1, Lcom/com2us/wrapper/ui/CUserInput$a;->a:Lcom/com2us/wrapper/ui/CUserInput;

    invoke-static {v1}, Lcom/com2us/wrapper/ui/CUserInput;->d(Lcom/com2us/wrapper/ui/CUserInput;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/com2us/wrapper/ui/CUserInput$a$1;->b:Lcom/com2us/wrapper/ui/CUserInput$a;

    iget-object v1, v1, Lcom/com2us/wrapper/ui/CUserInput$a;->a:Lcom/com2us/wrapper/ui/CUserInput;

    invoke-static {v1, v0}, Lcom/com2us/wrapper/ui/CUserInput;->a(Lcom/com2us/wrapper/ui/CUserInput;[B)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v2, v0, v2

    goto :goto_0
.end method
