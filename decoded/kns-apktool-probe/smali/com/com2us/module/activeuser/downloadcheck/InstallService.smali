.class public Lcom/com2us/module/activeuser/downloadcheck/InstallService;
.super Landroid/app/IntentService;
.source "InstallService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActiveUser"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "ActiveUserIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private sendReferrerToServer(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p1}, Lcom/com2us/module/activeuser/ActiveUserData;->createOnInstalled(Landroid/content/Context;)V

    .line 87
    :try_start_0
    const-string v4, "send_referrer"

    const-string v5, "N"

    invoke-static {v4, v5}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v4, "referrer"

    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->processNetworkTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 91
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 92
    move-object v0, v3

    check-cast v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;

    move-object v1, v0

    .line 94
    .local v1, "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;
    iget v4, v1, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;->errno:I

    if-nez v4, :cond_0

    .line 95
    const-string v4, "send_referrer"

    const-string v5, "Y"

    invoke-static {v4, v5}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v1    # "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;
    :cond_0
    invoke-static {p1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 104
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-static {p1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    goto :goto_0

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 102
    invoke-static {p1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 103
    throw v4
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    iget-object v8, p0, Lcom/com2us/module/activeuser/downloadcheck/InstallService;->context:Landroid/content/Context;

    if-eqz v8, :cond_1

    iget-object v5, p0, Lcom/com2us/module/activeuser/downloadcheck/InstallService;->context:Landroid/content/Context;

    .line 47
    .local v5, "localContext":Landroid/content/Context;
    :goto_0
    invoke-direct {p0, v5}, Lcom/com2us/module/activeuser/downloadcheck/InstallService;->sendReferrerToServer(Landroid/content/Context;)V

    .line 51
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 52
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.com2us.module.activeuser.downloadcheck.InstallReceiver"

    invoke-direct {v9, v5, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    const/16 v10, 0x80

    .line 51
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 55
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 57
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 59
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 61
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_2

    .line 75
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_2
    return-void

    .line 44
    .end local v5    # "localContext":Landroid/content/Context;
    :cond_1
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/downloadcheck/InstallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_0

    .line 63
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "localContext":Landroid/content/Context;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 64
    .local v6, "metaDataName":Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "metaDataValue":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v5, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 67
    .end local v6    # "metaDataName":Ljava/lang/String;
    .end local v7    # "metaDataValue":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 72
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 73
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
