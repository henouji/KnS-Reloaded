.class Lcom/com2us/peppermint/socialextension/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field private final synthetic a:Lcom/com2us/peppermint/PeppermintCallback;

.field final synthetic a:Lcom/com2us/peppermint/socialextension/n;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/n;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/o;->a:Lcom/com2us/peppermint/socialextension/n;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/o;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 3

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/o;->a:Lcom/com2us/peppermint/PeppermintCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/o;->a:Lcom/com2us/peppermint/socialextension/n;

    invoke-static {v0}, Lcom/com2us/peppermint/socialextension/n;->a(Lcom/com2us/peppermint/socialextension/n;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->b(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/facebook/Response;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestFriendsWithResponseCallback json="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/o;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
