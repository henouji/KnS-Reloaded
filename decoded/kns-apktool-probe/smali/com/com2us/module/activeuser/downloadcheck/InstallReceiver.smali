.class public final Lcom/com2us/module/activeuser/downloadcheck/InstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const-string v3, "ActiveUser"

    const-string v4, "InstallReceiver onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "action":Ljava/lang/String;
    const-string v3, "referrer"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "str":Ljava/lang/String;
    const-string v3, "com.android.vending.INSTALL_REFERRER"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    const-string v2, "google"

    .line 34
    :cond_1
    const-string v3, "referrer"

    invoke-static {v3, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 37
    const-string v3, "ActiveUser"

    const-string v4, "InstallReceiver onReceived referrer data."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/com2us/module/activeuser/downloadcheck/InstallService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v1, "localIntent":Landroid/content/Intent;
    const-string v3, "referrer"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
