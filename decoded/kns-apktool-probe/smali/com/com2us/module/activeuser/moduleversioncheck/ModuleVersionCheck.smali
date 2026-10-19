.class public Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;
.super Ljava/lang/Object;
.source "ModuleVersionCheck.java"

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

    .line 15
    iput-object v0, p0, Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;->context:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;->logger:Lcom/com2us/module/util/Logger;

    .line 20
    iput-object p1, p0, Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;->logger:Lcom/com2us/module/util/Logger;

    .line 23
    iget-object v0, p0, Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "[ModuleVersionCheck] initialize"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private getVersions()V
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lcom/com2us/module/ModuleManager;->getVersionList()Lorg/json/JSONObject;

    move-result-object v0

    .line 28
    .local v0, "moduleVersionList":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 29
    const-string v1, "moduleversioncheck_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "[ModuleVersionCheck] sendVersionCheck is failed : VersionList is Empty"

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public isExecutable()Z
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;->getVersions()V

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public responseNetwork(Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;)V
    .locals 0
    .param p1, "data"    # Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;

    .prologue
    .line 98
    return-void
.end method
