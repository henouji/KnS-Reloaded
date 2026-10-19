.class Lcom/com2us/module/activeuser/ActiveUser$7;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUser;->isLocalAgreeShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/ActiveUser;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/ActiveUser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser$7;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$7;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$7;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$3(Lcom/com2us/module/activeuser/ActiveUser;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/com2us/module/activeuser/ActiveUser;->access$8(Lcom/com2us/module/activeuser/ActiveUser;II)V

    .line 380
    return-void
.end method
