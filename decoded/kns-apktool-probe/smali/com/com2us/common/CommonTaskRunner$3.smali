.class Lcom/com2us/common/CommonTaskRunner$3;
.super Ljava/lang/Object;
.source "CommonTaskRunner.java"

# interfaces
.implements Lcom/com2us/common/ICommonTaskRunnerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/common/CommonTaskRunner;->startWithUI(Landroid/app/Activity;Lcom/com2us/common/ICommonTaskRunnerListener;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$group:Landroid/view/ViewGroup;

.field private final synthetic val$listener:Lcom/com2us/common/ICommonTaskRunnerListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/com2us/common/ICommonTaskRunnerListener;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/common/CommonTaskRunner$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/com2us/common/CommonTaskRunner$3;->val$listener:Lcom/com2us/common/ICommonTaskRunnerListener;

    iput-object p3, p0, Lcom/com2us/common/CommonTaskRunner$3;->val$group:Landroid/view/ViewGroup;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartTaskCompleted()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/com2us/common/CommonTaskRunner$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/common/CommonTaskRunner$3$1;

    iget-object v2, p0, Lcom/com2us/common/CommonTaskRunner$3;->val$group:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/com2us/common/CommonTaskRunner$3;->val$listener:Lcom/com2us/common/ICommonTaskRunnerListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/com2us/common/CommonTaskRunner$3$1;-><init>(Lcom/com2us/common/CommonTaskRunner$3;Landroid/view/ViewGroup;Lcom/com2us/common/ICommonTaskRunnerListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public onStopTaskCompleted()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/com2us/common/CommonTaskRunner$3;->val$listener:Lcom/com2us/common/ICommonTaskRunnerListener;

    invoke-interface {v0}, Lcom/com2us/common/ICommonTaskRunnerListener;->onStopTaskCompleted()V

    .line 145
    return-void
.end method
