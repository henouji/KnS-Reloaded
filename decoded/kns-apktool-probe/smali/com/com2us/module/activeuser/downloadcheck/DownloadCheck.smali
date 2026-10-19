.class public Lcom/com2us/module/activeuser/downloadcheck/DownloadCheck;
.super Ljava/lang/Object;
.source "DownloadCheck.java"

# interfaces
.implements Lcom/com2us/module/activeuser/ActiveUserModule;


# instance fields
.field private logger:Lcom/com2us/module/util/Logger;


# direct methods
.method public constructor <init>(Lcom/com2us/module/util/Logger;)V
    .locals 0
    .param p1, "logger"    # Lcom/com2us/module/util/Logger;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/com2us/module/activeuser/downloadcheck/DownloadCheck;->logger:Lcom/com2us/module/util/Logger;

    .line 30
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public isExecutable()Z
    .locals 7

    .prologue
    .line 34
    const-string v4, "downloadcheck_app_ver"

    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "propVersion":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "curVersion":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 49
    const/4 v2, 0x0

    .line 51
    .local v2, "isUpdatedVersion":Z
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 55
    :goto_0
    if-eqz v2, :cond_0

    .line 56
    iget-object v4, p0, Lcom/com2us/module/activeuser/downloadcheck/DownloadCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[DownloadCheck][isExecutable] false : current version is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 57
    const/4 v4, 0x0

    .line 67
    .end local v2    # "isUpdatedVersion":Z
    :goto_1
    return v4

    .line 52
    .restart local v2    # "isUpdatedVersion":Z
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/com2us/module/activeuser/downloadcheck/DownloadCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[DownloadCheck][isExecutable] true : updated app had been installed"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 67
    .end local v2    # "isUpdatedVersion":Z
    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/com2us/module/activeuser/downloadcheck/DownloadCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[DownloadCheck][isExecutable] true : new app had been installed"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public responseNetwork(Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;)V
    .locals 9
    .param p1, "data"    # Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x9

    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;

    .line 73
    .local v0, "downloadData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;
    iget-object v1, p0, Lcom/com2us/module/activeuser/downloadcheck/DownloadCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReceivedDownloadData : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 75
    iget v1, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->errno:I

    if-nez v1, :cond_6

    .line 76
    const-string v1, "downloadcheck_app_ver"

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v7}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const-string v1, "didcheck_mac_addr_data"

    invoke-static {v7}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-static {v8}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    const-string v1, "didcheck_line_number_data"

    invoke-static {v8}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_1
    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    const-string v1, "didcheck_device_id_data"

    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_2
    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 85
    const-string v1, "didcheck_android_id_data"

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_3
    invoke-static {v5}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 87
    const-string v1, "didcheck_os_version_data"

    invoke-static {v5}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_4
    const-string v1, "did_data"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    const-string v1, "did_data"

    iget-object v2, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->did:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_5
    const-string v1, "session_limit_num"

    iget v2, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->session_max_num:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "session_limit_time"

    iget v2, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->session_max_time:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_6
    return-void
.end method
