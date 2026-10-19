.class public Lcom/com2us/module/push/LocalPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalPushReceiver.java"


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/com2us/module/push/LocalPushReceiver;->handler:Landroid/os/Handler;

    .line 13
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    const-string v1, "Local RECEIVE Receive"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/push/PushResourceHandler;->load(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 23
    .local v0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "noticeID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/com2us/module/push/PushResourceHandler;->save(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    .line 26
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/com2us/module/push/LocalPushReceiver$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/com2us/module/push/LocalPushReceiver$1;-><init>(Lcom/com2us/module/push/LocalPushReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 64
    return-void
.end method
