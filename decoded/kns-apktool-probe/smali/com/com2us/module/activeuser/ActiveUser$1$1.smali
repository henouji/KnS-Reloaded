.class Lcom/com2us/module/activeuser/ActiveUser$1$1;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUser$1;->onUserAgreeResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/activeuser/ActiveUser$1;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/ActiveUser$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser$1$1;->this$1:Lcom/com2us/module/activeuser/ActiveUser$1;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$1$1;->this$1:Lcom/com2us/module/activeuser/ActiveUser$1;

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUser$1;->access$0(Lcom/com2us/module/activeuser/ActiveUser$1;)Lcom/com2us/module/activeuser/ActiveUser;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUser;->access$2(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;->onUserAgreeResult(I)V

    .line 117
    return-void
.end method
