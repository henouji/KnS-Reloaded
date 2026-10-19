.class Lcom/com2us/peppermint/socialextension/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic a:Lcom/com2us/peppermint/PeppermintCallback;

.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;ILcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/g;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    iput p2, p0, Lcom/com2us/peppermint/socialextension/g;->a:I

    iput-object p3, p0, Lcom/com2us/peppermint/socialextension/g;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/g;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/g;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "limit"

    iget v1, p0, Lcom/com2us/peppermint/socialextension/g;->a:I

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "me/apprequests"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/com2us/peppermint/socialextension/h;

    iget-object v6, p0, Lcom/com2us/peppermint/socialextension/g;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {v5, p0, v6}, Lcom/com2us/peppermint/socialextension/h;-><init>(Lcom/com2us/peppermint/socialextension/g;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    return-void
.end method
