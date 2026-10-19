.class Lcom/com2us/module/mercury/Mercury$2;
.super Ljava/lang/Object;
.source "Mercury.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/Mercury;->sendNetworkDisconnectCallback()V
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
    iput-object p1, p0, Lcom/com2us/module/mercury/Mercury$2;->this$0:Lcom/com2us/module/mercury/Mercury;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury$2;->this$0:Lcom/com2us/module/mercury/Mercury;

    const/16 v1, -0xa

    invoke-static {v0, v1}, Lcom/com2us/module/mercury/Mercury;->access$8(Lcom/com2us/module/mercury/Mercury;I)V

    .line 643
    return-void
.end method
