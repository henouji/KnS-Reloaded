.class Lcom/com2us/module/activeuser/ActiveUserData$1;
.super Ljava/lang/Object;
.source "ActiveUserData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUserData;->setAdvertisingIdThread(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUserData$1;->val$context:Landroid/content/Context;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 502
    :try_start_0
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 503
    .local v4, "id":Ljava/lang/String;
    const/4 v5, 0x0

    .line 506
    .local v5, "isLAT":Z
    const/4 v2, 0x0

    .line 507
    .local v2, "cls_Info":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 512
    .local v9, "obj_Info":Ljava/lang/Object;
    :try_start_1
    const-string v10, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 513
    .local v1, "cls_AdvertisingIdClient":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getAdvertisingIdInfo"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/Context;

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 514
    .local v6, "mdthod_getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    const-string v10, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 516
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/com2us/module/activeuser/ActiveUserData$1;->val$context:Landroid/content/Context;

    aput-object v13, v11, v12

    invoke-virtual {v6, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 517
    const-string v10, "getId"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 518
    .local v7, "mdthod_getId":Ljava/lang/reflect/Method;
    const-string v10, "isLimitAdTrackingEnabled"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 519
    .local v8, "mdthod_isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 520
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 522
    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUserData;->access$0()Ljava/util/HashMap;

    move-result-object v10

    const/16 v11, 0x13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUserData;->access$0()Ljava/util/HashMap;

    move-result-object v11

    const/16 v10, 0x14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v5, :cond_0

    const-string v10, "true"

    :goto_0
    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUserData;->access$1()Lcom/com2us/module/util/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ActiveUserData] setAdvertisingIdThread ADVERTISING_ID : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 526
    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUserData;->access$1()Lcom/com2us/module/util/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ActiveUserData] setAdvertisingIdThread IS_LIMIT_AD_TRACKING : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 562
    .end local v1    # "cls_AdvertisingIdClient":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "cls_Info":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "isLAT":Z
    .end local v6    # "mdthod_getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    .end local v7    # "mdthod_getId":Ljava/lang/reflect/Method;
    .end local v8    # "mdthod_isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    .end local v9    # "obj_Info":Ljava/lang/Object;
    :goto_1
    return-void

    .line 523
    .restart local v1    # "cls_AdvertisingIdClient":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "cls_Info":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v5    # "isLAT":Z
    .restart local v6    # "mdthod_getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    .restart local v7    # "mdthod_getId":Ljava/lang/reflect/Method;
    .restart local v8    # "mdthod_isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    .restart local v9    # "obj_Info":Ljava/lang/Object;
    :cond_0
    const-string v10, "false"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 528
    .end local v1    # "cls_AdvertisingIdClient":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "mdthod_getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    .end local v7    # "mdthod_getId":Ljava/lang/reflect/Method;
    .end local v8    # "mdthod_isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    .end local v9    # "obj_Info":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 529
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUserData;->access$1()Lcom/com2us/module/util/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ActiveUserData] setAdvertisingIdThread Exception : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 558
    .end local v2    # "cls_Info":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "isLAT":Z
    :catch_1
    move-exception v3

    .line 559
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUserData;->access$1()Lcom/com2us/module/util/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ActiveUserData] setAdvertisingIdThread Exception : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
