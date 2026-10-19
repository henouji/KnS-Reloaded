.class Lcom/com2us/peppermint/socialextension/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

.field private final synthetic a:Lcom/facebook/RequestAsyncTask;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;Lcom/facebook/RequestAsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/d;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginFacebook;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/d;->a:Lcom/facebook/RequestAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/d;->a:Lcom/facebook/RequestAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
