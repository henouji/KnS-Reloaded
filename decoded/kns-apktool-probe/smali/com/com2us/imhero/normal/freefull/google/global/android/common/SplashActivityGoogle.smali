.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle;
.super Landroid/app/Fragment;
.source "SplashActivityGoogle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle$1;

    invoke-direct {v0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle$1;-><init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle;)V

    .line 61
    .local v0, "handler":Landroid/os/Handler;
    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 62
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 21
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle;->initialize()V

    .line 31
    const v0, 0x7f030013

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 66
    return-void
.end method
