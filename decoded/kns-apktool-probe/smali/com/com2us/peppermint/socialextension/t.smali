.class Lcom/com2us/peppermint/socialextension/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic a:Landroid/os/Bundle;

.field private final synthetic a:Lcom/com2us/peppermint/PeppermintCallback;

.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Landroid/app/Activity;Landroid/os/Bundle;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/t;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/t;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/com2us/peppermint/socialextension/t;->a:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/com2us/peppermint/socialextension/t;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/socialextension/t;)Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/t;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0x400

    new-instance v0, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/t;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/com2us/peppermint/socialextension/t;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    new-instance v1, Lcom/com2us/peppermint/socialextension/u;

    iget-object v2, p0, Lcom/com2us/peppermint/socialextension/t;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {v1, p0, v2}, Lcom/com2us/peppermint/socialextension/u;-><init>(Lcom/com2us/peppermint/socialextension/t;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    return-void
.end method
