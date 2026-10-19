.class public Lcom/com2us/common/CommonTaskRunner;
.super Ljava/lang/Object;
.source "CommonTaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/common/CommonTaskRunner$ECommonState;
    }
.end annotation


# static fields
.field private static final COMMON_VERSION_MAJOR:I = 0x1

.field private static final COMMON_VERSION_MINOR1:I = 0x0

.field private static final COMMON_VERSION_MINOR2:I = 0x3

.field private static mState:Lcom/com2us/common/CommonTaskRunner$ECommonState;

.field private static mTaskList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static mTaskRunnerListener:Lcom/com2us/common/ICommonTaskRunnerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/com2us/common/CommonTaskRunner;->mTaskList:Ljava/util/Vector;

    .line 35
    sget-object v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;->IDLE:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    sput-object v0, Lcom/com2us/common/CommonTaskRunner;->mState:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/com2us/common/CommonTaskRunner;->mTaskList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 106
    invoke-static {p0}, Lcom/com2us/common/CommonTaskRunner;->onTaskCompleted(Z)V

    return-void
.end method

.method private static createProgressBar(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, -0x1

    .line 151
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 152
    .local v2, "progressBarLayout":Landroid/widget/LinearLayout;
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, "set":Landroid/util/AttributeSet;
    new-instance v0, Landroid/widget/ProgressBar;

    const v4, 0x101007a

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    .local v0, "bar":Landroid/widget/ProgressBar;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    return-object v2
.end method

.method public static getCurrentState()Lcom/com2us/common/CommonTaskRunner$ECommonState;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/com2us/common/CommonTaskRunner;->mState:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "1.0.3"

    return-object v0
.end method

.method public static isStarted()Z
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/com2us/common/CommonTaskRunner;->mState:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    sget-object v1, Lcom/com2us/common/CommonTaskRunner$ECommonState;->START_COMPLETED:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static onTaskCompleted(Z)V
    .locals 1
    .param p0, "isStart"    # Z

    .prologue
    .line 108
    sget-object v0, Lcom/com2us/common/CommonTaskRunner;->mTaskList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    if-eqz p0, :cond_1

    .line 112
    sget-object v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;->START_COMPLETED:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    sput-object v0, Lcom/com2us/common/CommonTaskRunner;->mState:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    .line 113
    sget-object v0, Lcom/com2us/common/CommonTaskRunner;->mTaskRunnerListener:Lcom/com2us/common/ICommonTaskRunnerListener;

    invoke-interface {v0}, Lcom/com2us/common/ICommonTaskRunnerListener;->onStartTaskCompleted()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    sget-object v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;->STOP_COMPLETED:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    sput-object v0, Lcom/com2us/common/CommonTaskRunner;->mState:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    .line 118
    sget-object v0, Lcom/com2us/common/CommonTaskRunner;->mTaskRunnerListener:Lcom/com2us/common/ICommonTaskRunnerListener;

    invoke-interface {v0}, Lcom/com2us/common/ICommonTaskRunnerListener;->onStopTaskCompleted()V

    goto :goto_0
.end method

.method private static putTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 103
    sget-object v0, Lcom/com2us/common/CommonTaskRunner;->mTaskList:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method private static runTask(Z)V
    .locals 3
    .param p0, "isStart"    # Z

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/com2us/common/CommonTaskRunner;->mTaskList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 98
    invoke-static {p0}, Lcom/com2us/common/CommonTaskRunner;->onTaskCompleted(Z)V

    .line 99
    return-void

    .line 81
    :cond_0
    move v1, v0

    .line 83
    .local v1, "id":I
    new-instance v2, Lcom/com2us/common/CommonTaskRunner$2;

    invoke-direct {v2, v1, p0}, Lcom/com2us/common/CommonTaskRunner$2;-><init>(IZ)V

    .line 95
    invoke-virtual {v2}, Lcom/com2us/common/CommonTaskRunner$2;->start()V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Lcom/com2us/common/ICommonTaskRunnerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/com2us/common/ICommonTaskRunnerListener;

    .prologue
    .line 39
    sget-object v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;->START_RUNNING:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    sput-object v0, Lcom/com2us/common/CommonTaskRunner;->mState:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    .line 40
    sput-object p1, Lcom/com2us/common/CommonTaskRunner;->mTaskRunnerListener:Lcom/com2us/common/ICommonTaskRunnerListener;

    .line 42
    invoke-static {p0}, Lcom/com2us/common/data/CommonProperties;->loadProperties(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/com2us/common/CommonTaskRunner$1;

    invoke-direct {v0, p0}, Lcom/com2us/common/CommonTaskRunner$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/com2us/common/CommonTaskRunner;->putTask(Ljava/lang/Runnable;)V

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/com2us/common/CommonTaskRunner;->runTask(Z)V

    .line 54
    return-void
.end method

.method public static startWithUI(Landroid/app/Activity;Lcom/com2us/common/ICommonTaskRunnerListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/com2us/common/ICommonTaskRunnerListener;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/com2us/common/CommonTaskRunner;->createProgressBar(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/com2us/common/CommonTaskRunner;->startWithUI(Landroid/app/Activity;Lcom/com2us/common/ICommonTaskRunnerListener;Landroid/view/ViewGroup;)V

    .line 59
    return-void
.end method

.method private static startWithUI(Landroid/app/Activity;Lcom/com2us/common/ICommonTaskRunnerListener;Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/com2us/common/ICommonTaskRunnerListener;
    .param p2, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 125
    new-instance v0, Lcom/com2us/common/CommonTaskRunner$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/com2us/common/CommonTaskRunner$3;-><init>(Landroid/app/Activity;Lcom/com2us/common/ICommonTaskRunnerListener;Landroid/view/ViewGroup;)V

    invoke-static {p0, v0}, Lcom/com2us/common/CommonTaskRunner;->start(Landroid/content/Context;Lcom/com2us/common/ICommonTaskRunnerListener;)V

    .line 147
    return-void
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;->STOP_RUNNING:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    sput-object v0, Lcom/com2us/common/CommonTaskRunner;->mState:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/com2us/common/CommonTaskRunner;->runTask(Z)V

    .line 65
    return-void
.end method
