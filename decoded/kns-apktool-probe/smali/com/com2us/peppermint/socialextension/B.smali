.class Lcom/com2us/peppermint/socialextension/B;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final synthetic a:I

.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/B;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    iput p2, p0, Lcom/com2us/peppermint/socialextension/B;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/B;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConnectionResult error code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/com2us/peppermint/socialextension/B;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginPGSHelper;->handleAuthCancel(Ljava/lang/Exception;)V

    return-void
.end method
