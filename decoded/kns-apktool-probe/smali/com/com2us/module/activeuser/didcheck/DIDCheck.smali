.class public Lcom/com2us/module/activeuser/didcheck/DIDCheck;
.super Ljava/lang/Object;
.source "DIDCheck.java"

# interfaces
.implements Lcom/com2us/module/activeuser/ActiveUserModule;


# instance fields
.field private context:Landroid/content/Context;

.field private logger:Lcom/com2us/module/util/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/com2us/module/util/Logger;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lcom/com2us/module/util/Logger;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->context:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->logger:Lcom/com2us/module/util/Logger;

    .line 20
    iput-object p1, p0, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->logger:Lcom/com2us/module/util/Logger;

    .line 23
    iget-object v0, p0, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "[DIDCheck] initialize"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private isEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 66
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ""

    .line 68
    :cond_1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public isExecutable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 29
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "didcheck_mac_addr_data"

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "didcheck_line_number_data"

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "didcheck_device_id_data"

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "didcheck_android_id_data"

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "didcheck_os_version_data"

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "did_data"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "[DIDCheck] isExecutable false"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public responseNetwork(Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;)V
    .locals 8
    .param p1, "data"    # Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;

    .line 44
    .local v0, "didData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;
    iget v1, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;->errno:I

    if-nez v1, :cond_1

    .line 46
    const-string v2, "didcheck_mac_addr_data"

    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_0
    invoke-static {v2, v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "didcheck_line_number_data"

    invoke-static {v7}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    :goto_1
    invoke-static {v2, v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "didcheck_device_id_data"

    invoke-static {v3}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ""

    :goto_2
    invoke-static {v2, v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "didcheck_android_id_data"

    invoke-static {v5}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ""

    :goto_3
    invoke-static {v2, v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "didcheck_os_version_data"

    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ""

    :goto_4
    invoke-static {v2, v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;->did:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "did_data"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "did_data"

    iget-object v2, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;->did:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/com2us/module/activeuser/didcheck/DIDCheck;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 57
    :cond_1
    return-void

    .line 46
    :cond_2
    invoke-static {v6}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_3
    invoke-static {v7}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 48
    :cond_4
    invoke-static {v3}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 49
    :cond_5
    invoke-static {v5}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 50
    :cond_6
    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method
