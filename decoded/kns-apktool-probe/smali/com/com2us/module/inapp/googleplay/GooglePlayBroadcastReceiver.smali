.class public Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GooglePlayBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver$GooglePlayBroadcastListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver$GooglePlayBroadcastListener;


# direct methods
.method public constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver$GooglePlayBroadcastListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver$GooglePlayBroadcastListener;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;->mListener:Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver$GooglePlayBroadcastListener;

    .line 17
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;->mListener:Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver$GooglePlayBroadcastListener;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;->mListener:Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver$GooglePlayBroadcastListener;

    invoke-interface {v0, p1, p2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver$GooglePlayBroadcastListener;->receivedBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    :cond_0
    return-void
.end method
