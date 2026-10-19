.class public Lcom/com2us/module/ModuleVersionList;
.super Ljava/lang/Object;
.source "ModuleVersionList.java"


# static fields
.field private static moduleVersionList:Lcom/com2us/module/ModuleVersionList;


# instance fields
.field private logger:Lcom/com2us/module/util/Logger;

.field private versionList:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/com2us/module/ModuleVersionList;

    invoke-direct {v0}, Lcom/com2us/module/ModuleVersionList;-><init>()V

    sput-object v0, Lcom/com2us/module/ModuleVersionList;->moduleVersionList:Lcom/com2us/module/ModuleVersionList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/com2us/module/ModuleVersionList;->versionList:Lorg/json/JSONObject;

    .line 26
    const-string v0, "ModuleManager"

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/ModuleVersionList;->logger:Lcom/com2us/module/util/Logger;

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/com2us/module/ModuleVersionList;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/com2us/module/ModuleVersionList;->moduleVersionList:Lcom/com2us/module/ModuleVersionList;

    return-object v0
.end method

.method private getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v5, 0x0

    .line 34
    .local v5, "version":Ljava/lang/String;
    const/4 v4, 0x0

    .line 35
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 38
    .local v3, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 40
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, p3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 41
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 48
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/com2us/module/ModuleVersionList;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ModuleVersionList] "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 51
    iget-object v6, p0, Lcom/com2us/module/ModuleVersionList;->versionList:Lorg/json/JSONObject;

    invoke-virtual {v6, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-void

    .line 43
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 44
    invoke-virtual {v1, p4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    goto :goto_0

    .line 53
    :cond_2
    iget-object v6, p0, Lcom/com2us/module/ModuleVersionList;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ModuleVersionList] "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Version is Empty"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 54
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/com2us/module/ModuleVersionList;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ModuleVersionList] "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getModuleVersion Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getWrapperVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v5, 0x0

    .line 63
    .local v5, "version":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getInstance"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 65
    .local v3, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    .local v1, "cwrapperData":Ljava/lang/Object;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, p3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 67
    .local v4, "intVersion":Ljava/lang/Integer;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 68
    iget-object v6, p0, Lcom/com2us/module/ModuleVersionList;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ModuleVersionList] "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 71
    iget-object v6, p0, Lcom/com2us/module/ModuleVersionList;->versionList:Lorg/json/JSONObject;

    invoke-virtual {v6, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cwrapperData":Ljava/lang/Object;
    .end local v3    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v4    # "intVersion":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 73
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "cwrapperData":Ljava/lang/Object;
    .restart local v3    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "intVersion":Ljava/lang/Integer;
    :cond_0
    iget-object v6, p0, Lcom/com2us/module/ModuleVersionList;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ModuleVersionList] "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Version is Empty"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cwrapperData":Ljava/lang/Object;
    .end local v3    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v4    # "intVersion":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/com2us/module/ModuleVersionList;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ModuleVersionList] "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getWrapperVersion Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getList()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v2, p0, Lcom/com2us/module/ModuleVersionList;->versionList:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 84
    :try_start_0
    const-string v2, "c2s_platform"

    const-string v3, "com.com2us.module.C2SModuleConstants"

    const/4 v4, 0x0

    const-string v5, "Version"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "c2s_modulemanager"

    const-string v3, "com.com2us.module.Constants"

    const/4 v4, 0x0

    const-string v5, "Version"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "c2s_hub"

    const-string v3, "com.com2us.peppermint.Peppermint"

    const-string v4, "getVersion"

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "c2s_wrapper"

    const-string v3, "com.com2us.wrapper.kernel.CWrapperData"

    const-string v4, "getDevelopmentRevision"

    invoke-direct {p0, v2, v3, v4}, Lcom/com2us/module/ModuleVersionList;->getWrapperVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "c2s_activeuser"

    const-string v3, "com.com2us.module.activeuser.Constants"

    const/4 v4, 0x0

    const-string v5, "Version"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "c2s_inapp_default"

    const-string v3, "com.com2us.module.inapp.InApp"

    const/4 v4, 0x0

    const-string v5, "MakingVersion"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "c2s_inapp_googleplay"

    const-string v3, "com.com2us.module.inapp.googleplay.GooglePlayBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "c2s_inapp_googleinapp"

    const-string v3, "com.com2us.module.inapp.googleinapp.GoogleInAppBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "c2s_inapp_tstore"

    const-string v3, "com.com2us.module.inapp.tstore.TstoreBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "c2s_inapp_ollehmarket"

    const-string v3, "com.com2us.module.inapp.ollehmarket.ollehMarketBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "c2s_inapp_ozstore"

    const-string v3, "com.com2us.module.inapp.ozstore.OZstoreBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "c2s_inapp_thirdpartybilling"

    const-string v3, "com.com2us.module.inapp.thirdpartybilling.ThirdPartyBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "c2s_inapp_qiip"

    const-string v3, "com.com2us.module.inapp.qiip.qiipBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "c2s_inapp_lebi"

    const-string v3, "com.com2us.module.inapp.lebi.LebiBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "c2s_inapp_plasma"

    const-string v3, "com.com2us.module.inapp.plasma.PlasmaBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "c2s_inapp_amazon"

    const-string v3, "com.com2us.module.inapp.amazon.AmazonBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "c2s_inapp_kddi"

    const-string v3, "com.com2us.module.inapp.kddi.KDDIBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "c2s_inapp_mm"

    const-string v3, "com.com2us.module.inapp.mm.MMBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "c2s_inapp_mbiz"

    const-string v3, "com.com2us.module.inapp.mbiz.MBizBilling"

    const/4 v4, 0x0

    const-string v5, "Ver"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "c2s_push"

    const-string v3, "com.com2us.module.push.PushConfig"

    const/4 v4, 0x0

    const-string v5, "VERSION"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "c2s_newsbanner"

    const-string v3, "com.com2us.module.newsbanner2.Constants"

    const/4 v4, 0x0

    const-string v5, "Version"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "c2s_mercury"

    const-string v3, "com.com2us.module.mercury.Constants"

    const/4 v4, 0x0

    const-string v5, "Version"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "c2s_socialmedia"

    sget-object v3, Lcom/com2us/module/ModuleClassName;->SOCIALMEDIA:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Version"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "c2s_spider"

    const-string v3, "com.com2us.module.spider.Constants"

    const/4 v4, 0x0

    const-string v5, "Version"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "c2s_mopub"

    const-string v3, "com.com2us.ad.mopub.Constants"

    const/4 v4, 0x0

    const-string v5, "Version"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "c2s_tapjoy"

    const-string v3, "com.com2us.tapjoy.Constants"

    const/4 v4, 0x0

    const-string v5, "Version"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "c2s_chartboost"

    const-string v3, "com.com2us.cpi.chartboost.Constants"

    const/4 v4, 0x0

    const-string v5, "Version"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "c2s_offerwall"

    const-string v3, "com.com2us.module.offerwall.Constants"

    const/4 v4, 0x0

    const-string v5, "Version"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "mopub"

    const-string v3, "com.mopub.mobileads.MoPub"

    const/4 v4, 0x0

    const-string v5, "SDK_VERSION"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "admob"

    const-string v3, "com.google.ads.AdRequest"

    const/4 v4, 0x0

    const-string v5, "VERSION"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "tapjoy"

    const-string v3, "com.tapjoy.TapjoyConstants"

    const/4 v4, 0x0

    const-string v5, "TJC_LIBRARY_VERSION_NUMBER"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "chartboost"

    const-string v3, "com.chartboost.sdk.CBConstants"

    const/4 v4, 0x0

    const-string v5, "CB_SDK_VERSION"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "millennial"

    const-string v3, "com.millennialmedia.android.MMSDK"

    const/4 v4, 0x0

    const-string v5, "VERSION"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/com2us/module/ModuleVersionList;->getModuleVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/com2us/module/ModuleVersionList;->versionList:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/com2us/module/ModuleVersionList;->versionList:Lorg/json/JSONObject;

    goto :goto_0
.end method
