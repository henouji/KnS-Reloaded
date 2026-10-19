.class Lcom/com2us/module/inapp/lebi/LebiBilling$29;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling;->ProgressDialogShow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$29;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iput-object p2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$29;->val$msg:Ljava/lang/String;

    .line 1324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1328
    :try_start_0
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$47()Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$47()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1329
    :cond_0
    iget-object v1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$29;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iget-object v2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$29;->val$msg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$48(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$49(Landroid/app/ProgressDialog;)V

    .line 1330
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$47()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :goto_0
    return-void

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
