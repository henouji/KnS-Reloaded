.class Lcom/com2us/peppermint/socialextension/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/a;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/a;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->handleFBSessionStateChangeWithSession(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method
