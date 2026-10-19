.class public Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/com2us/peppermint/Peppermint;

.field private static a:Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a:Ljava/util/HashMap;

    :try_start_0
    const-string v0, "com.com2us.peppermint.socialextension.PeppermintSocialPluginFacebook"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->plugin()Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "com.com2us.peppermint.socialextension.PeppermintSocialPluginGooglePlus"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->plugin()Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getPeppermint()Lcom/com2us/peppermint/Peppermint;
    .locals 1

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a:Lcom/com2us/peppermint/Peppermint;

    return-object v0
.end method

.method public static pluginByName(Ljava/lang/String;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;
    .locals 1

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->sharedInstance()Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;

    move-result-object v0

    iget-object v0, v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;

    return-object v0
.end method

.method public static setPeppermint(Lcom/com2us/peppermint/Peppermint;)V
    .locals 0

    sput-object p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a:Lcom/com2us/peppermint/Peppermint;

    return-void
.end method

.method public static sharedInstance()Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;
    .locals 1

    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;

    invoke-direct {v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;-><init>()V

    sput-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;

    return-object v0
.end method


# virtual methods
.method public getPlugins()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/com2us/peppermint/socialextension/PeppermintSocialPlugin;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/PeppermintSocialManager;->a:Ljava/util/HashMap;

    return-object v0
.end method
