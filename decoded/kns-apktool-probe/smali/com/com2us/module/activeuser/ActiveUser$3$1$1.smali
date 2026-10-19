.class Lcom/com2us/module/activeuser/ActiveUser$3$1$1;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUser$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/com2us/module/activeuser/ActiveUser$3$1;

.field private final synthetic val$recvConfigurationData:Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/ActiveUser$3$1;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser$3$1$1;->this$2:Lcom/com2us/module/activeuser/ActiveUser$3$1;

    iput-object p2, p0, Lcom/com2us/module/activeuser/ActiveUser$3$1$1;->val$recvConfigurationData:Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$3$1$1;->this$2:Lcom/com2us/module/activeuser/ActiveUser$3$1;

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUser$3$1;->access$0(Lcom/com2us/module/activeuser/ActiveUser$3$1;)Lcom/com2us/module/activeuser/ActiveUser$3;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUser$3;->access$0(Lcom/com2us/module/activeuser/ActiveUser$3;)Lcom/com2us/module/activeuser/ActiveUser;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$3$1$1;->val$recvConfigurationData:Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$6(Lcom/com2us/module/activeuser/ActiveUser;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;)V

    .line 253
    return-void
.end method
