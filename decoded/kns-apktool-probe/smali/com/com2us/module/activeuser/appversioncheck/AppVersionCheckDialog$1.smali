.class Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$1;
.super Ljava/lang/Object;
.source "AppVersionCheckDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    iput-object p2, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$1;->val$context:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 34
    iget-object v1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    invoke-static {v1}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->access$0(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    invoke-static {v1}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->access$0(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$1;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    invoke-static {v4}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->access$0(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$1;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    invoke-virtual {v1}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->dismiss()V

    goto :goto_0
.end method
