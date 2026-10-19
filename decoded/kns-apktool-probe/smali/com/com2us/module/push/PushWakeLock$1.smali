.class Lcom/com2us/module/push/PushWakeLock$1;
.super Ljava/lang/Object;
.source "PushWakeLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/push/PushWakeLock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/push/PushWakeLock;


# direct methods
.method constructor <init>(Lcom/com2us/module/push/PushWakeLock;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/push/PushWakeLock$1;->this$0:Lcom/com2us/module/push/PushWakeLock;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, "i":I
    :cond_0
    invoke-static {}, Lcom/com2us/module/push/PushWakeLock;->access$0()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 56
    .local v2, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    :goto_0
    invoke-static {}, Lcom/com2us/module/push/PushWakeLock;->access$0()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 68
    return-void

    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 60
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v3, 0x5

    .line 54
    if-lt v1, v3, :cond_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
