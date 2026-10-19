.class public Lcom/com2us/wrapper/ui/CTextInput$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/com2us/wrapper/ui/CTextInput$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/wrapper/ui/CTextInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/ui/CTextInput;


# direct methods
.method public constructor <init>(Lcom/com2us/wrapper/ui/CTextInput;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/ui/CTextInput$a;->a:Lcom/com2us/wrapper/ui/CTextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    new-instance v0, Lcom/com2us/wrapper/ui/CTextInput$a$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/com2us/wrapper/ui/CTextInput$a$1;-><init>(Lcom/com2us/wrapper/ui/CTextInput$a;II)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method
