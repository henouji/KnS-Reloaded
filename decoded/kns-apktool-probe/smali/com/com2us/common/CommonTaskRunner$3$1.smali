.class Lcom/com2us/common/CommonTaskRunner$3$1;
.super Ljava/lang/Object;
.source "CommonTaskRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/common/CommonTaskRunner$3;->onStartTaskCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/common/CommonTaskRunner$3;

.field private final synthetic val$group:Landroid/view/ViewGroup;

.field private final synthetic val$listener:Lcom/com2us/common/ICommonTaskRunnerListener;


# direct methods
.method constructor <init>(Lcom/com2us/common/CommonTaskRunner$3;Landroid/view/ViewGroup;Lcom/com2us/common/ICommonTaskRunnerListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/common/CommonTaskRunner$3$1;->this$1:Lcom/com2us/common/CommonTaskRunner$3;

    iput-object p2, p0, Lcom/com2us/common/CommonTaskRunner$3$1;->val$group:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/com2us/common/CommonTaskRunner$3$1;->val$listener:Lcom/com2us/common/ICommonTaskRunnerListener;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/com2us/common/CommonTaskRunner$3$1;->val$group:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/com2us/common/CommonTaskRunner$3$1;->val$listener:Lcom/com2us/common/ICommonTaskRunnerListener;

    invoke-interface {v0}, Lcom/com2us/common/ICommonTaskRunnerListener;->onStartTaskCompleted()V

    .line 137
    return-void
.end method
