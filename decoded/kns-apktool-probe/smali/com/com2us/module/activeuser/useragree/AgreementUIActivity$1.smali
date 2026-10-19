.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$1;
.super Landroid/os/Handler;
.source "AgreementUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$1;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    .line 181
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$1;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$41(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Z)V

    .line 188
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 189
    return-void
.end method
