.class Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallBridge;
.super Ljava/lang/Object;
.source "OfferwallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/offerwall/OfferwallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OfferwallBridge"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/com2us/module/offerwall/OfferwallDialog;


# direct methods
.method constructor <init>(Lcom/com2us/module/offerwall/OfferwallDialog;Landroid/app/Activity;)V
    .locals 1
    .param p2, "_activity"    # Landroid/app/Activity;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallBridge;->this$0:Lcom/com2us/module/offerwall/OfferwallDialog;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallBridge;->activity:Landroid/app/Activity;

    .line 347
    iput-object p2, p0, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallBridge;->activity:Landroid/app/Activity;

    .line 348
    return-void
.end method


# virtual methods
.method public getClientAppList()Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 353
    sget-object v7, Lcom/com2us/module/offerwall/OfferwallDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v8, "getClientAppList"

    invoke-virtual {v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 355
    iget-object v7, p0, Lcom/com2us/module/offerwall/OfferwallDialog$OfferwallBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 356
    .local v4, "manager":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 361
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iend":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 362
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 363
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
