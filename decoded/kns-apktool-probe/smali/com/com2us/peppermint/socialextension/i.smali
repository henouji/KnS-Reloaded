.class Lcom/com2us/peppermint/socialextension/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/com2us/peppermint/PeppermintCallback;

.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Ljava/lang/String;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/i;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/com2us/peppermint/socialextension/i;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/i;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/i;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "redirect"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/com2us/peppermint/socialextension/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/picture"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/com2us/peppermint/socialextension/j;

    iget-object v6, p0, Lcom/com2us/peppermint/socialextension/i;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {v5, p0, v6}, Lcom/com2us/peppermint/socialextension/j;-><init>(Lcom/com2us/peppermint/socialextension/i;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    return-void
.end method
