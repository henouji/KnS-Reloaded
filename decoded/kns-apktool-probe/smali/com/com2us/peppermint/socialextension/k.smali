.class Lcom/com2us/peppermint/socialextension/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/k;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/k;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/facebook/Session$Builder;

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/k;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    invoke-static {}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/facebook/Session$OpenRequest;

    iget-object v3, p0, Lcom/com2us/peppermint/socialextension/k;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    sget-object v2, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/k;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    invoke-static {v2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;)Lcom/facebook/Session$StatusCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    return-void
.end method
