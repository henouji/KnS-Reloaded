.class public Lcom/com2us/module/push/NotificationMessage;
.super Landroid/app/Activity;
.source "NotificationMessage.java"


# static fields
.field private static final REQUEST_APPINTENT:I = 0x2

.field private static final REQUEST_MARKETINTENT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 85
    invoke-virtual {p0}, Lcom/com2us/module/push/NotificationMessage;->finish()V

    .line 88
    :goto_0
    return-void

    .line 77
    :pswitch_0
    const-string v0, "REQUEST_MARKETINTENT finish"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/com2us/module/push/NotificationMessage;->finish()V

    goto :goto_0

    .line 81
    :pswitch_1
    const-string v0, "REQUEST_APPINTENT finish"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/com2us/module/push/NotificationMessage;->finish()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v13, 0x10000000

    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/com2us/module/push/NotificationMessage;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "isUseTestServer"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/com2us/module/push/PushConfig;->isUseTestServer:Z

    .line 24
    invoke-virtual {p0}, Lcom/com2us/module/push/NotificationMessage;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "log"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/com2us/module/push/PushConfig;->LOG:Z

    .line 26
    invoke-virtual {p0}, Lcom/com2us/module/push/NotificationMessage;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 27
    .local v4, "data":Landroid/os/Bundle;
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/com2us/module/push/NotificationMessage$1;

    invoke-direct {v10, p0, v4}, Lcom/com2us/module/push/NotificationMessage$1;-><init>(Lcom/com2us/module/push/NotificationMessage;Landroid/os/Bundle;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 35
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 37
    invoke-static {p0, v4}, Lcom/com2us/module/push/PushConfig;->saveReceivedPush(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 39
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Lcom/com2us/module/push/NotificationMessage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 40
    .local v7, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v7}, Landroid/app/NotificationManager;->cancelAll()V

    .line 42
    invoke-static {p0, v11}, Lcom/com2us/module/push/PushConfig;->setBadge(Landroid/content/Context;I)V

    .line 44
    invoke-static {p0}, Lcom/com2us/module/push/MsgsOfNoticeID;->clearAllMsgs(Landroid/content/Context;)Z

    .line 46
    invoke-virtual {p0}, Lcom/com2us/module/push/NotificationMessage;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "active"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "active":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_0

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    const-string v10, "web"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 51
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    .local v6, "marketIntent":Landroid/content/Intent;
    invoke-virtual {v6, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p0, v6, v9}, Lcom/com2us/module/push/NotificationMessage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v6    # "marketIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 55
    .restart local v6    # "marketIntent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "marketIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/com2us/module/push/NotificationMessage;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "packageName"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/com2us/module/push/NotificationMessage;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "className"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v8, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v3, "compName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "appIntent":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    const/4 v9, 0x2

    invoke-virtual {p0, v1, v9}, Lcom/com2us/module/push/NotificationMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
