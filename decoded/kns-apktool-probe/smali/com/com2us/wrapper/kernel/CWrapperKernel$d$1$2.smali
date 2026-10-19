.class Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1$2;->a:Lcom/com2us/wrapper/kernel/CWrapperKernel$d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Ld$b;->l:Ld$b;

    invoke-static {v0}, Ld;->a(Ld$b;)V

    return-void
.end method
