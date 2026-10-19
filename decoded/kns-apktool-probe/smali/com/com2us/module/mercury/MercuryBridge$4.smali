.class Lcom/com2us/module/mercury/MercuryBridge$4;
.super Ljava/lang/Object;
.source "MercuryBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/MercuryBridge;->ProgressDialogDismiss(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/mercury/MercuryBridge;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/MercuryBridge;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryBridge$4;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryBridge$4;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryBridge;->access$9(Lcom/com2us/module/mercury/MercuryBridge;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryBridge$4;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryBridge;->access$9(Lcom/com2us/module/mercury/MercuryBridge;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
