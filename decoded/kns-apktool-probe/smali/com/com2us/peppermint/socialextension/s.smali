.class Lcom/com2us/peppermint/socialextension/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# instance fields
.field private final synthetic a:Lcom/com2us/peppermint/PeppermintCallback;

.field final synthetic a:Lcom/com2us/peppermint/socialextension/r;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/r;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/s;->a:Lcom/com2us/peppermint/socialextension/r;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/s;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shareAppActivityWithParams values="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/s;->a:Lcom/com2us/peppermint/PeppermintCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "post_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/s;->a:Lcom/com2us/peppermint/socialextension/r;

    invoke-static {v1}, Lcom/com2us/peppermint/socialextension/r;->a(Lcom/com2us/peppermint/socialextension/r;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;->a(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;ZLandroid/os/Bundle;Lcom/facebook/FacebookException;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/s;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
