.class public Lcom/com2us/module/push/PushWakeLock;
.super Landroid/app/Activity;
.source "PushWakeLock.java"


# static fields
.field private static final REQUEST_TURN_ON_SCREEN:I = 0x1

.field private static activity:Landroid/app/Activity;

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/module/push/PushWakeLock;->activity:Landroid/app/Activity;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/com2us/module/push/PushWakeLock;->handler:Landroid/os/Handler;

    .line 15
    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/com2us/module/push/PushWakeLock;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static acquireCpuWakeLock(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 78
    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "WAKE_LOCK check return"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 80
    const/4 v2, 0x0

    .line 94
    :goto_0
    return v2

    .line 86
    :cond_0
    const-string v1, "PushWakeLock, Acquiring cpu wake lock"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 87
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 89
    .local v0, "pm":Landroid/os/PowerManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_1

    move v1, v2

    .line 90
    :goto_1
    const/high16 v3, 0x10000000

    .line 89
    or-int/2addr v1, v3

    .line 91
    const/high16 v3, 0x20000000

    .line 89
    or-int/2addr v1, v3

    .line 91
    const-string v3, "PushWakeLock"

    .line 88
    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/com2us/module/push/PushWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    sget-object v1, Lcom/com2us/module/push/PushWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x6

    goto :goto_1
.end method

.method static releaseCpuLock()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "PushWakeLock, Releasing cpu wake lock"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/com2us/module/push/PushWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/com2us/module/push/PushWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/module/push/PushWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v3, 0x20000

    const/4 v4, 0x1

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const-string v1, "PushWakeLock"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 29
    sput-object p0, Lcom/com2us/module/push/PushWakeLock;->activity:Landroid/app/Activity;

    .line 31
    invoke-virtual {p0, v4}, Lcom/com2us/module/push/PushWakeLock;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/com2us/module/push/PushWakeLock;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x680000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 39
    invoke-virtual {p0}, Lcom/com2us/module/push/PushWakeLock;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 42
    invoke-static {p0}, Lcom/com2us/module/push/PushWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)Z

    move-result v0

    .line 44
    .local v0, "isWakeLock":Z
    invoke-virtual {p0}, Lcom/com2us/module/push/PushWakeLock;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/com2us/module/push/PushWakeLock;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/com2us/module/push/PushWakeLock;->handler:Landroid/os/Handler;

    invoke-static {v1, v2, v3}, Lcom/com2us/module/push/PushConfig;->setPushType(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    .line 46
    invoke-virtual {p0, v4}, Lcom/com2us/module/push/PushWakeLock;->setResult(I)V

    .line 48
    if-nez v0, :cond_0

    .line 49
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/com2us/module/push/PushWakeLock$1;

    invoke-direct {v2, p0}, Lcom/com2us/module/push/PushWakeLock$1;-><init>(Lcom/com2us/module/push/PushWakeLock;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v1, Lcom/com2us/module/push/PushWakeLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
