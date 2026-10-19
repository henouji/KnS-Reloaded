.class Lcom/com2us/peppermint/socialextension/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic a:Lcom/com2us/peppermint/PeppermintCallback;

.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

.field private final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lorg/json/JSONObject;Landroid/app/Activity;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/r;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/r;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/com2us/peppermint/socialextension/r;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/com2us/peppermint/socialextension/r;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/r;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/r;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0x400

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/r;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintUtil;->getBundleFrojObj(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/r;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    new-instance v1, Lcom/com2us/peppermint/socialextension/s;

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/r;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {v1, p0, v2}, Lcom/com2us/peppermint/socialextension/s;-><init>(Lcom/com2us/peppermint/socialextension/r;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/WebDialog;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)V

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    return-void
.end method
