.class public Lcom/com2us/module/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Lcom/com2us/module/ActivityStateListener;
.implements Lcom/com2us/module/CletStateListener;
.implements Lcom/com2us/module/Constants;


# static fields
.field private static manager:Lcom/com2us/module/ModuleManager;


# instance fields
.field private appIdForIdentity:Ljava/lang/String;

.field private appOriginalHeight:I

.field private appOriginalWidth:I

.field private config:I

.field private disableModules:I

.field private isDestryoed:Z

.field private logger:Lcom/com2us/module/util/Logger;

.field private moduleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/com2us/module/Modulable;",
            ">;"
        }
    .end annotation
.end field

.field private testAppIds:[Ljava/lang/String;

.field private wrapperDevelopmentRevision:I

.field private wrapperRevision:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/com2us/module/ModuleManager;

    invoke-direct {v0}, Lcom/com2us/module/ModuleManager;-><init>()V

    sput-object v0, Lcom/com2us/module/ModuleManager;->manager:Lcom/com2us/module/ModuleManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    .line 34
    iput-boolean v2, p0, Lcom/com2us/module/ModuleManager;->isDestryoed:Z

    .line 35
    iput v2, p0, Lcom/com2us/module/ModuleManager;->config:I

    .line 37
    iput v2, p0, Lcom/com2us/module/ModuleManager;->disableModules:I

    .line 38
    iput v2, p0, Lcom/com2us/module/ModuleManager;->appOriginalWidth:I

    .line 39
    iput v2, p0, Lcom/com2us/module/ModuleManager;->appOriginalHeight:I

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    const-string v1, "com.com2us.module.activeuser.test"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/com2us/module/ModuleManager;->testAppIds:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/com2us/module/ModuleManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/com2us/module/ModuleManager;->manager:Lcom/com2us/module/ModuleManager;

    return-object v0
.end method

.method public static getVersionList()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 542
    invoke-static {}, Lcom/com2us/module/ModuleVersionList;->getInstance()Lcom/com2us/module/ModuleVersionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/ModuleVersionList;->getList()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private loadADManager(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 117
    :try_start_0
    sget-object v4, Lcom/com2us/module/ModuleClassName;->ADMANAGER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 118
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 119
    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v6, v4, v5

    .line 118
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 121
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 122
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 124
    .local v3, "params":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadADManager]ClassNotFound"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadADManager]"

    invoke-virtual {v4, v5, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private loadActiveUser(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 255
    :try_start_0
    sget-object v4, Lcom/com2us/module/ModuleClassName;->ACTIVEUSER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 256
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 257
    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v6, v4, v5

    .line 256
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 259
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 260
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 262
    .local v3, "params":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadActiveUser]ClassNotFound"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 267
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadActiveUser]"

    invoke-virtual {v4, v5, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private loadC2DM(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 154
    :try_start_0
    sget-object v7, Lcom/com2us/module/ModuleClassName;->C2DM:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 156
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 157
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    .line 159
    .local v5, "params":[Ljava/lang/Object;
    iget v7, p0, Lcom/com2us/module/ModuleManager;->config:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 161
    .local v3, "isTestServer":Z
    :goto_0
    iget v6, p0, Lcom/com2us/module/ModuleManager;->config:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 162
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    .line 163
    const-class v8, Landroid/app/Activity;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 162
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 165
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/Object;

    .line 166
    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 167
    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 168
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 180
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    .line 181
    .local v4, "modulable":Lcom/com2us/module/Modulable;
    iget-object v6, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v6}, Lcom/com2us/module/util/Logger;->isLogged()Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/com2us/module/Modulable;->setLogged(Z)V

    .line 182
    iget-object v6, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "isTestServer":Z
    .end local v4    # "modulable":Lcom/com2us/module/Modulable;
    .end local v5    # "params":[Ljava/lang/Object;
    :goto_2
    return-void

    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "params":[Ljava/lang/Object;
    :cond_0
    move v3, v6

    .line 159
    goto :goto_0

    .line 171
    .restart local v3    # "isTestServer":Z
    :cond_1
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    .line 172
    const-class v8, Landroid/app/Activity;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v8, v6, v7

    .line 171
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 174
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/Object;

    .line 175
    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 176
    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 177
    const/4 v6, 0x2

    aput-object p2, v5, v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 184
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "isTestServer":Z
    .end local v5    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v6, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "[loadC2DM]ClassNotFound"

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 187
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "[loadC2DM]"

    invoke-virtual {v6, v7, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private loadChartBoostManager(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 292
    :try_start_0
    sget-object v4, Lcom/com2us/module/ModuleClassName;->CHARTBOOST:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 293
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 294
    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v6, v4, v5

    .line 293
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 296
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 297
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 299
    .local v3, "params":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadChartBoostManager]ClassNotFound : ChartBoostManager"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 304
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadChartBoostManager]"

    invoke-virtual {v4, v5, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private loadInApp(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 236
    :try_start_0
    sget-object v4, Lcom/com2us/module/ModuleClassName;->INAPP:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 237
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 238
    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v6, v4, v5

    .line 237
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 240
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 241
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 243
    .local v3, "params":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadInApp]ClassNotFound"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadInApp]"

    invoke-virtual {v4, v5, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private loadMercury(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 346
    :try_start_0
    sget-object v4, Lcom/com2us/module/ModuleClassName;->MERCURY:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 347
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 348
    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v6, v4, v5

    .line 347
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 350
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 351
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 353
    .local v3, "params":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v2

    .line 355
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadMercury]ClassNotFound : Mercury"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 358
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadMercury]"

    invoke-virtual {v4, v5, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private loadNewsBanner2(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 274
    :try_start_0
    sget-object v4, Lcom/com2us/module/ModuleClassName;->NEWSBANNER2:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 275
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 276
    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v6, v4, v5

    .line 275
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 278
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 279
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 281
    .local v3, "params":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 288
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadNewsBanner2]ClassNotFound"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadNewsBanner2]"

    invoke-virtual {v4, v5, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private loadOfferwall(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 365
    :try_start_0
    sget-object v4, Lcom/com2us/module/ModuleClassName;->OFFERWALL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 366
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 367
    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v6, v4, v5

    .line 366
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 369
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 370
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 372
    .local v3, "params":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 380
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadOfferwall]ClassNotFound : Offerwall"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 377
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadOfferwall]"

    invoke-virtual {v4, v5, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private loadPush(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 195
    :try_start_0
    sget-object v7, Lcom/com2us/module/ModuleClassName;->PUSH:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 197
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 198
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    .line 200
    .local v5, "params":[Ljava/lang/Object;
    iget v7, p0, Lcom/com2us/module/ModuleManager;->config:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 202
    .local v3, "isTestServer":Z
    :goto_0
    iget v6, p0, Lcom/com2us/module/ModuleManager;->config:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 203
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    .line 204
    const-class v8, Landroid/app/Activity;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 203
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 206
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/Object;

    .line 207
    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 208
    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 209
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 221
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    .line 222
    .local v4, "modulable":Lcom/com2us/module/Modulable;
    iget-object v6, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v6}, Lcom/com2us/module/util/Logger;->isLogged()Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/com2us/module/Modulable;->setLogged(Z)V

    .line 223
    iget-object v6, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "isTestServer":Z
    .end local v4    # "modulable":Lcom/com2us/module/Modulable;
    .end local v5    # "params":[Ljava/lang/Object;
    :goto_2
    return-void

    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "params":[Ljava/lang/Object;
    :cond_0
    move v3, v6

    .line 200
    goto :goto_0

    .line 212
    .restart local v3    # "isTestServer":Z
    :cond_1
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    .line 213
    const-class v8, Landroid/app/Activity;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v8, v6, v7

    .line 212
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 215
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/Object;

    .line 216
    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 217
    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 218
    const/4 v6, 0x2

    aput-object p2, v5, v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 225
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "isTestServer":Z
    .end local v5    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v6, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "[loadPush]ClassNotFound"

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 228
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "[loadPush]"

    invoke-virtual {v6, v7, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private loadSNSManager(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 135
    :try_start_0
    sget-object v4, Lcom/com2us/module/ModuleClassName;->SNSMANAGER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 136
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 137
    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v6, v4, v5

    .line 136
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 139
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 140
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 142
    .local v3, "params":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadSNSManager]ClassNotFound"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadSNSManager]"

    invoke-virtual {v4, v5, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private loadSocialMedia(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 310
    :try_start_0
    sget-object v4, Lcom/com2us/module/ModuleClassName;->SOCIALMEDIA:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 311
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 312
    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v6, v4, v5

    .line 311
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 314
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 315
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 317
    .local v3, "params":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadSocialMedia]ClassNotFound : SocialMedia"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 322
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadSocialMedia]"

    invoke-virtual {v4, v5, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private loadSpider(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 328
    :try_start_0
    sget-object v4, Lcom/com2us/module/ModuleClassName;->SPIDER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 329
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 330
    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v6, v4, v5

    .line 329
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 332
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 333
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 335
    .local v3, "params":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadSpider]ClassNotFound : Spider"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadSpider]"

    invoke-virtual {v4, v5, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private loadTapjoyManager(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 100
    :try_start_0
    sget-object v4, Lcom/com2us/module/ModuleClassName;->TAPJOYMANAGER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 102
    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/com2us/module/view/SurfaceViewWrapper;

    aput-object v6, v4, v5

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 104
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 105
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 107
    .local v3, "params":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/com2us/module/Modulable;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadTapJoyManager]ClassNotFound"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "[loadTapJoyManager]"

    invoke-virtual {v4, v5, v2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 554
    iget-boolean v1, p0, Lcom/com2us/module/ModuleManager;->isDestryoed:Z

    if-nez v1, :cond_0

    .line 555
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/com2us/module/ModuleManager;->isDestryoed:Z

    .line 556
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 558
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 560
    :cond_0
    return-void

    .line 556
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 557
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0}, Lcom/com2us/module/Modulable;->destroy()V

    goto :goto_0
.end method

.method public getAppIdForIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/com2us/module/ModuleManager;->appIdForIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 390
    new-instance v0, Lcom/com2us/module/ModuleManager$1;

    invoke-direct {v0, p0, p2}, Lcom/com2us/module/ModuleManager$1;-><init>(Lcom/com2us/module/ModuleManager;Landroid/view/SurfaceView;)V

    invoke-virtual {p0, p1, v0}, Lcom/com2us/module/ModuleManager;->load(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 401
    return-void
.end method

.method public load(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 19
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 405
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v11, "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .local v9, "notFoundPermission":Ljava/lang/StringBuilder;
    const-string v13, "ModuleManager"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;Landroid/app/Activity;)Lcom/com2us/module/util/Logger;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    .line 410
    invoke-static {}, Lcom/com2us/module/util/LoggerGroup;->isLocked()Z

    move-result v13

    if-nez v13, :cond_0

    .line 413
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 414
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v13, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 415
    .local v2, "flags":I
    and-int/lit8 v13, v2, 0x2

    if-eqz v13, :cond_12

    const/4 v5, 0x1

    .line 416
    .local v5, "isDebugMode":Z
    :goto_0
    if-nez v5, :cond_0

    .line 417
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/com2us/module/ModuleManager;->setLogged(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v2    # "flags":I
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "isDebugMode":Z
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/ModuleManager;->appIdForIdentity:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/com2us/module/ModuleManager;->testAppIds:[Ljava/lang/String;

    array-length v15, v14

    const/4 v13, 0x0

    :goto_2
    if-lt v13, v15, :cond_13

    .line 437
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/ModuleManager;->disableModules:I

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_2

    .line 438
    invoke-direct/range {p0 .. p2}, Lcom/com2us/module/ModuleManager;->loadTapjoyManager(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 440
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/ModuleManager;->disableModules:I

    and-int/lit8 v13, v13, 0x4

    if-nez v13, :cond_3

    .line 441
    invoke-direct/range {p0 .. p2}, Lcom/com2us/module/ModuleManager;->loadADManager(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 443
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/ModuleManager;->disableModules:I

    and-int/lit8 v13, v13, 0x8

    if-nez v13, :cond_4

    .line 444
    invoke-direct/range {p0 .. p2}, Lcom/com2us/module/ModuleManager;->loadSNSManager(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 449
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/ModuleManager;->disableModules:I

    and-int/lit8 v13, v13, 0x10

    if-nez v13, :cond_5

    .line 450
    invoke-direct/range {p0 .. p2}, Lcom/com2us/module/ModuleManager;->loadPush(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 452
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/ModuleManager;->disableModules:I

    and-int/lit8 v13, v13, 0x20

    if-nez v13, :cond_6

    .line 453
    invoke-direct/range {p0 .. p2}, Lcom/com2us/module/ModuleManager;->loadInApp(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 455
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/ModuleManager;->disableModules:I

    and-int/lit16 v13, v13, 0x80

    if-nez v13, :cond_7

    .line 456
    invoke-direct/range {p0 .. p2}, Lcom/com2us/module/ModuleManager;->loadActiveUser(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 458
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/ModuleManager;->disableModules:I

    and-int/lit8 v13, v13, 0x40

    if-nez v13, :cond_8

    .line 459
    invoke-direct/range {p0 .. p2}, Lcom/com2us/module/ModuleManager;->loadNewsBanner2(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 461
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/ModuleManager;->disableModules:I

    and-int/lit8 v13, v13, 0x2

    if-nez v13, :cond_9

    .line 462
    invoke-direct/range {p0 .. p2}, Lcom/com2us/module/ModuleManager;->loadChartBoostManager(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 464
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/ModuleManager;->disableModules:I

    and-int/lit16 v13, v13, 0x100

    if-nez v13, :cond_a

    .line 465
    invoke-direct/range {p0 .. p2}, Lcom/com2us/module/ModuleManager;->loadSocialMedia(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 467
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/ModuleManager;->disableModules:I

    and-int/lit16 v13, v13, 0x200

    if-nez v13, :cond_b

    .line 468
    invoke-direct/range {p0 .. p2}, Lcom/com2us/module/ModuleManager;->loadSpider(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 470
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/ModuleManager;->disableModules:I

    and-int/lit16 v13, v13, 0x400

    if-nez v13, :cond_c

    .line 471
    invoke-direct/range {p0 .. p2}, Lcom/com2us/module/ModuleManager;->loadMercury(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 473
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/com2us/module/ModuleManager;->disableModules:I

    and-int/lit16 v13, v13, 0x800

    if-nez v13, :cond_d

    .line 474
    invoke-direct/range {p0 .. p2}, Lcom/com2us/module/ModuleManager;->loadOfferwall(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 480
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/ModuleManager;->appIdForIdentity:Ljava/lang/String;

    if-eqz v13, :cond_e

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_15

    .line 485
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v13}, Lcom/com2us/module/util/Logger;->isLogged()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 486
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_16

    .line 499
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eqz v13, :cond_10

    .line 500
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Permission not found : \n"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 517
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/com2us/module/ModuleManager;->isDestryoed:Z

    if-eqz v13, :cond_18

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/com2us/module/ModuleManager;->destroy()V

    .line 519
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v13}, Lcom/com2us/module/util/Logger;->isLogged()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 520
    const-string v8, "Failed To Load Modules"

    .line 521
    .local v8, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v13, v8}, Lcom/com2us/module/util/Logger;->i(Ljava/lang/String;)V

    .line 538
    .end local v8    # "msg":Ljava/lang/String;
    :cond_11
    :goto_6
    return-void

    .line 415
    .restart local v2    # "flags":I
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 419
    .end local v2    # "flags":I
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 427
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_13
    aget-object v3, v14, v13

    .line 428
    .local v3, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/ModuleManager;->appIdForIdentity:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 429
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "TestAppId : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 427
    :cond_14
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 481
    .end local v3    # "id":Ljava/lang/String;
    :cond_15
    :try_start_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/com2us/module/Modulable;

    .line 482
    .local v6, "mod":Lcom/com2us/module/Modulable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/com2us/module/ModuleManager;->appIdForIdentity:Ljava/lang/String;

    invoke-interface {v6, v14}, Lcom/com2us/module/Modulable;->setAppIdForIdentity(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 509
    .end local v6    # "mod":Lcom/com2us/module/Modulable;
    :catch_1
    move-exception v1

    .line 511
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 486
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_16
    :try_start_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/com2us/module/Modulable;

    .line 487
    .restart local v6    # "mod":Lcom/com2us/module/Modulable;
    invoke-interface {v6}, Lcom/com2us/module/Modulable;->getPermission()[Ljava/lang/String;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v13, v0, :cond_f

    aget-object v10, v15, v13

    .line 488
    .local v10, "permission":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_17

    .line 489
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_17

    .line 492
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 487
    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 526
    .end local v6    # "mod":Lcom/com2us/module/Modulable;
    .end local v10    # "permission":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v13}, Lcom/com2us/module/util/Logger;->isLogged()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 527
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .local v12, "sb":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "=== VERSION : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/com2us/module/ModuleManager;->Version:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ===\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v13, "=== MODULE LIST ===\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_19

    .line 533
    const-string v13, "=================="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/com2us/module/util/Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 530
    :cond_19
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/com2us/module/Modulable;

    .line 531
    .local v7, "module":Lcom/com2us/module/Modulable;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/com2us/module/Modulable;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v7}, Lcom/com2us/module/Modulable;->getVersion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method public onActivityCreated()V
    .locals 3

    .prologue
    .line 621
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 623
    return-void

    .line 621
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 622
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0}, Lcom/com2us/module/Modulable;->onActivityCreated()V

    goto :goto_0
.end method

.method public onActivityDestroyed()V
    .locals 3

    .prologue
    .line 614
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 616
    return-void

    .line 614
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 615
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0}, Lcom/com2us/module/Modulable;->onActivityDestroyed()V

    goto :goto_0
.end method

.method public onActivityPaused()V
    .locals 3

    .prologue
    .line 600
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 602
    return-void

    .line 600
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 601
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0}, Lcom/com2us/module/Modulable;->onActivityPaused()V

    goto :goto_0
.end method

.method public onActivityRestarted()V
    .locals 3

    .prologue
    .line 576
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 578
    return-void

    .line 576
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 577
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0}, Lcom/com2us/module/Modulable;->onActivityRestarted()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 660
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 662
    return-void

    .line 660
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 661
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0, p1, p2, p3}, Lcom/com2us/module/Modulable;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onActivityResumed()V
    .locals 3

    .prologue
    .line 586
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 588
    return-void

    .line 586
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 587
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0}, Lcom/com2us/module/Modulable;->onActivityResumed()V

    goto :goto_0
.end method

.method public onActivityStarted()V
    .locals 3

    .prologue
    .line 569
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    return-void

    .line 569
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 570
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0}, Lcom/com2us/module/Modulable;->onActivityStarted()V

    goto :goto_0
.end method

.method public onActivityStopped()V
    .locals 3

    .prologue
    .line 607
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 609
    return-void

    .line 607
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 608
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0}, Lcom/com2us/module/Modulable;->onActivityStopped()V

    goto :goto_0
.end method

.method public onCletDestroyed()V
    .locals 3

    .prologue
    .line 653
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 655
    return-void

    .line 653
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 654
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0}, Lcom/com2us/module/Modulable;->onCletDestroyed()V

    goto :goto_0
.end method

.method public onCletPaused()V
    .locals 3

    .prologue
    .line 647
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 649
    return-void

    .line 647
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 648
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0}, Lcom/com2us/module/Modulable;->onCletPaused()V

    goto :goto_0
.end method

.method public onCletResumed()V
    .locals 3

    .prologue
    .line 641
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 643
    return-void

    .line 641
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 642
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0}, Lcom/com2us/module/Modulable;->onCletResumed()V

    goto :goto_0
.end method

.method public onCletStarted()V
    .locals 3

    .prologue
    .line 635
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 637
    return-void

    .line 635
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 636
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0}, Lcom/com2us/module/Modulable;->onCletStarted()V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 593
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 595
    return-void

    .line 593
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 594
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0, p1}, Lcom/com2us/module/Modulable;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 628
    iget-object v1, p0, Lcom/com2us/module/ModuleManager;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    return-void

    .line 628
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/Modulable;

    .line 629
    .local v0, "module":Lcom/com2us/module/Modulable;
    invoke-interface {v0, p1}, Lcom/com2us/module/Modulable;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public setAppIdForIdentity(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/com2us/module/ModuleManager;->appIdForIdentity:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setAppOriginalResolution(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/com2us/module/ModuleManager;->appOriginalWidth:I

    .line 91
    iput p2, p0, Lcom/com2us/module/ModuleManager;->appOriginalHeight:I

    .line 92
    return-void
.end method

.method public setConfig(I)V
    .locals 0
    .param p1, "config"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/com2us/module/ModuleManager;->config:I

    .line 78
    return-void
.end method

.method public setDisableModules(I)V
    .locals 0
    .param p1, "modules"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/com2us/module/ModuleManager;->disableModules:I

    .line 83
    return-void
.end method

.method public setExitAppIfCracked(Z)V
    .locals 1
    .param p1, "exit"    # Z

    .prologue
    .line 73
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/com2us/module/util/WrapperUtility;->IsCracked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/com2us/module/ModuleManager;->isDestryoed:Z

    .line 74
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogged(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 547
    invoke-static {p1}, Lcom/com2us/module/util/LoggerGroup;->setLogged(Z)V

    .line 548
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->setLocked(Z)V

    .line 550
    iget-object v0, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/ModuleManager;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0, p1}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 551
    :cond_0
    return-void
.end method

.method public setWrapperDevelopmentRevision(I)V
    .locals 0
    .param p1, "revision"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/com2us/module/ModuleManager;->wrapperDevelopmentRevision:I

    .line 96
    return-void
.end method
