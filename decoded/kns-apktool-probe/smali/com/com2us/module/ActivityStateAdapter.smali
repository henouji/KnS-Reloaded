.class public abstract Lcom/com2us/module/ActivityStateAdapter;
.super Ljava/lang/Object;
.source "ActivityStateAdapter.java"

# interfaces
.implements Lcom/com2us/module/ActivityStateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onActivityDestroyed()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onActivityPaused()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onActivityRestarted()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    return-void
.end method

.method public onActivityResumed()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onActivityStarted()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public onActivityStopped()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 66
    return-void
.end method
