.class Lcom/com2us/module/activeuser/ActiveUser$1;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUser;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/ActiveUser;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/ActiveUser;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser$1;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    iput-object p2, p0, Lcom/com2us/module/activeuser/ActiveUser$1;->val$activity:Landroid/app/Activity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/ActiveUser$1;)Lcom/com2us/module/activeuser/ActiveUser;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$1;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    return-object v0
.end method


# virtual methods
.method public onUserAgreeResult(I)V
    .locals 3
    .param p1, "callbackMsg"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$1;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUser;->access$0(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUserAgreeResult = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 105
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 107
    const-string v0, "userinfo_agree_privacy"

    const-string v1, "AGREE"

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$1;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUser;->access$1(Lcom/com2us/module/activeuser/ActiveUser;)V

    .line 111
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$1;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUser;->access$2(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/activeuser/ActiveUser$1$1;

    invoke-direct {v1, p0}, Lcom/com2us/module/activeuser/ActiveUser$1$1;-><init>(Lcom/com2us/module/activeuser/ActiveUser$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$1;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUser;->access$3(Lcom/com2us/module/activeuser/ActiveUser;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$1;->this$0:Lcom/com2us/module/activeuser/ActiveUser;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$4(Lcom/com2us/module/activeuser/ActiveUser;Z)V

    .line 125
    :cond_2
    return-void
.end method
