.class Lcom/com2us/module/inapp/lebi/LebiBilling$30;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling;->ProgressDialogDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$30;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1345
    :try_start_0
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$47()Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$47()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1346
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$49(Landroid/app/ProgressDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :goto_0
    return-void

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
