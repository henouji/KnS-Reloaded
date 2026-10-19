.class Lcom/com2us/wrapper/kernel/CWrapperActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/kernel/CWrapperActivity$1;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$1$1;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$1$1;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity$1;

    iget-object v0, v0, Lcom/com2us/wrapper/kernel/CWrapperActivity$1;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperData;->getInstance()Lcom/com2us/wrapper/kernel/CWrapperData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->initialize(Lcom/com2us/wrapper/kernel/CWrapperData;)V

    return-void
.end method
