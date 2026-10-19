.class Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;
.super Ljava/lang/Object;
.source "AppVersionCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    invoke-static {v0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->access$0(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;)Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    new-instance v1, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    iget-object v2, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    invoke-static {v2}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->access$1(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->access$2(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    invoke-static {v0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->access$0(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;)Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    iget-object v1, v1, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->okStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->setPositiveButton(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    invoke-static {v0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->access$0(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;)Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    iget-object v1, v1, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->cancelStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->setNegativeButton(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    invoke-static {v0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->access$0(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;)Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    iget-object v1, v1, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->setMessage(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    invoke-static {v0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->access$0(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;)Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    iget-object v1, v1, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->setUrl(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;

    invoke-static {v0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->access$0(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;)Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->show()V

    .line 133
    return-void
.end method
