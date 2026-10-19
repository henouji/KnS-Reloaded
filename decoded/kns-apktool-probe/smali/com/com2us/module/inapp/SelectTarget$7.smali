.class Lcom/com2us/module/inapp/SelectTarget$7;
.super Ljava/lang/Object;
.source "SelectTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/SelectTarget;->ProgressDialogShow(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/SelectTarget$7;->val$activity:Landroid/app/Activity;

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/com2us/module/inapp/SelectTarget$7;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/com2us/module/inapp/SelectTarget;->access$8(Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/SelectTarget;->access$9(Landroid/app/ProgressDialog;)V

    .line 565
    invoke-static {}, Lcom/com2us/module/inapp/SelectTarget;->access$10()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
