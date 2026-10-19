.class Lcom/com2us/module/activeuser/ActiveUser$11;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUser;->runGetDIDCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/ActiveUser;

.field private final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/ActiveUser;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser$11;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    iput p2, p0, Lcom/com2us/module/activeuser/ActiveUser$11;->val$state:I

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 688
    iget v0, p0, Lcom/com2us/module/activeuser/ActiveUser$11;->val$state:I

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$11;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$11;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$14(Lcom/com2us/module/activeuser/ActiveUser;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/com2us/module/activeuser/ActiveUser;->access$15(Lcom/com2us/module/activeuser/ActiveUser;II)V

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$11;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$11;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$14(Lcom/com2us/module/activeuser/ActiveUser;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/com2us/module/activeuser/ActiveUser;->access$15(Lcom/com2us/module/activeuser/ActiveUser;II)V

    goto :goto_0
.end method
