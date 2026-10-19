.class Lcom/com2us/wrapper/ui/CTextInput$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/ui/CTextInput$a;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/com2us/wrapper/ui/CTextInput$a;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/ui/CTextInput$a;II)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CTextInput$a$1;->c:Lcom/com2us/wrapper/ui/CTextInput$a;

    iput p2, p0, Lcom/com2us/wrapper/ui/CTextInput$a$1;->a:I

    iput p3, p0, Lcom/com2us/wrapper/ui/CTextInput$a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/com2us/wrapper/ui/CTextInput$a$1;->c:Lcom/com2us/wrapper/ui/CTextInput$a;

    iget-object v0, v0, Lcom/com2us/wrapper/ui/CTextInput$a;->a:Lcom/com2us/wrapper/ui/CTextInput;

    iget v1, p0, Lcom/com2us/wrapper/ui/CTextInput$a$1;->a:I

    iget v2, p0, Lcom/com2us/wrapper/ui/CTextInput$a$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/com2us/wrapper/ui/CTextInput;->a(Lcom/com2us/wrapper/ui/CTextInput;II)V

    return-void
.end method
