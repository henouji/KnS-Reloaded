.class Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;
.super Ljava/lang/Object;
.source "ActiveUserUpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->createUI(Landroid/app/Activity;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;Landroid/view/WindowManager$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$recvConfigurationData:Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->this$0:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;

    iput-object p2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->val$recvConfigurationData:Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;

    iput-object p3, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->val$activity:Landroid/app/Activity;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->val$recvConfigurationData:Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;

    iget v2, v2, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_action:I

    packed-switch v2, :pswitch_data_0

    .line 230
    :pswitch_0
    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->this$0:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;

    invoke-virtual {v2}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->dismiss()V

    .line 231
    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 235
    :goto_0
    return-void

    .line 211
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->val$recvConfigurationData:Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;

    iget-object v3, v3, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 212
    .local v1, "marketIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 214
    :try_start_0
    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->this$0:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;

    invoke-virtual {v2}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->dismiss()V

    .line 220
    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "marketIntent":Landroid/content/Intent;
    :pswitch_2
    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->this$0:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->access$0(Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;)Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->this$0:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->access$0(Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;)Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$OnFinishListener;->onFinish()V

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$2;->this$0:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;

    invoke-virtual {v2}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->dismiss()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
