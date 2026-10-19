.class Lcom/com2us/module/mercury/Mercury$4;
.super Ljava/lang/Object;
.source "Mercury.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/Mercury;->sendCloseCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/mercury/Mercury;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/Mercury;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/Mercury$4;->this$0:Lcom/com2us/module/mercury/Mercury;

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 758
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury$4;->this$0:Lcom/com2us/module/mercury/Mercury;

    const/4 v1, -0x7

    invoke-static {v0, v1}, Lcom/com2us/module/mercury/Mercury;->access$8(Lcom/com2us/module/mercury/Mercury;I)V

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury$4;->this$0:Lcom/com2us/module/mercury/Mercury;

    const/16 v1, -0x9

    invoke-static {v0, v1}, Lcom/com2us/module/mercury/Mercury;->access$8(Lcom/com2us/module/mercury/Mercury;I)V

    goto :goto_0
.end method
