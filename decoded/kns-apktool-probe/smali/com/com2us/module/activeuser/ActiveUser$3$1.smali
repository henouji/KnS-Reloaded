.class Lcom/com2us/module/activeuser/ActiveUser$3$1;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUser$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/activeuser/ActiveUser$3;

.field private final synthetic val$recvConfigurationData:Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/ActiveUser$3;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser$3$1;->this$1:Lcom/com2us/module/activeuser/ActiveUser$3;

    iput-object p2, p0, Lcom/com2us/module/activeuser/ActiveUser$3$1;->val$recvConfigurationData:Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/ActiveUser$3$1;)Lcom/com2us/module/activeuser/ActiveUser$3;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser$3$1;->this$1:Lcom/com2us/module/activeuser/ActiveUser$3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    new-instance v0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser$3$1;->this$1:Lcom/com2us/module/activeuser/ActiveUser$3;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser$3;->access$0(Lcom/com2us/module/activeuser/ActiveUser$3;)Lcom/com2us/module/activeuser/ActiveUser;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUser;->access$5(Lcom/com2us/module/activeuser/ActiveUser;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUser$3$1;->val$recvConfigurationData:Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;

    invoke-direct {v0, v1, v2}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;-><init>(Landroid/app/Activity;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;)V

    .line 248
    .local v0, "updateDialog":Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;
    new-instance v1, Lcom/com2us/module/activeuser/ActiveUser$3$1$1;

    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUser$3$1;->val$recvConfigurationData:Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;

    invoke-direct {v1, p0, v2}, Lcom/com2us/module/activeuser/ActiveUser$3$1$1;-><init>(Lcom/com2us/module/activeuser/ActiveUser$3$1;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;)V

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->setOnFinishListener(Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;)V

    .line 255
    invoke-virtual {v0}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->show()V

    .line 256
    return-void
.end method
