.class Lcom/com2us/module/activeuser/useragree/UserAgreeManager$1;
.super Ljava/lang/Object;
.source "UserAgreeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->showAgreementPage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

.field private final synthetic val$colorType:I


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$1;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    iput p2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$1;->val$colorType:I

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$1;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$0(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "backgroundImageName"

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$1;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$1(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v1, "config"

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v1, "colorType"

    iget v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$1;->val$colorType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v1, "agreement_version"

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$1;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$2(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v1, "url"

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$1;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$3(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v1, "agreement_ex_url"

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$1;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$4(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$1;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$0(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method
