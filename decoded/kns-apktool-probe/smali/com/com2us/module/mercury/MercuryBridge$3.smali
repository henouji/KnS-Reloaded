.class Lcom/com2us/module/mercury/MercuryBridge$3;
.super Ljava/lang/Object;
.source "MercuryBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/MercuryBridge;->ProgressDialogShow(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/mercury/MercuryBridge;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryBridge$3;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    iput-object p2, p0, Lcom/com2us/module/mercury/MercuryBridge$3;->val$activity:Landroid/app/Activity;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryBridge$3;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryBridge$3;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryBridge$3;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/com2us/module/mercury/MercuryBridge;->access$7(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/mercury/MercuryBridge;->access$8(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/ProgressDialog;)V

    .line 351
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryBridge$3;->this$0:Lcom/com2us/module/mercury/MercuryBridge;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryBridge;->access$9(Lcom/com2us/module/mercury/MercuryBridge;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
