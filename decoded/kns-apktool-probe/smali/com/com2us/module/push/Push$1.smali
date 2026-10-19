.class Lcom/com2us/module/push/Push$1;
.super Ljava/lang/Object;
.source "Push.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/push/Push;-><init>(Landroid/content/Context;ZZLcom/com2us/module/view/SurfaceViewWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/push/Push;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/com2us/module/push/Push;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/push/Push$1;->this$0:Lcom/com2us/module/push/Push;

    iput-object p2, p0, Lcom/com2us/module/push/Push$1;->val$context:Landroid/content/Context;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/com2us/module/push/Push$1;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->SENDER:Lcom/com2us/module/push/Push$RegisterState;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/com2us/module/push/Push;->sendToServer(Landroid/content/Context;Lcom/com2us/module/push/Push$RegisterState;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/com2us/module/push/Push;->access$0(Z)V

    .line 188
    iget-object v0, p0, Lcom/com2us/module/push/Push$1;->this$0:Lcom/com2us/module/push/Push;

    invoke-static {}, Lcom/com2us/module/push/Push;->access$1()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/Push;->setPush(I)V

    .line 189
    iget-object v0, p0, Lcom/com2us/module/push/Push$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/com2us/module/push/Push;->sendCallback(Landroid/content/Context;)V

    .line 190
    return-void
.end method
