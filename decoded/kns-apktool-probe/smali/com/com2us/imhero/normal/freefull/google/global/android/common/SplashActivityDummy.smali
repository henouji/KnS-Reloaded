.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityDummy;
.super Landroid/app/Fragment;
.source "SplashActivityDummy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityDummy$1;

    invoke-direct {v0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityDummy$1;-><init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityDummy;)V

    .line 52
    .local v0, "handler":Landroid/os/Handler;
    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 53
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 19
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityDummy;->initialize()V

    .line 29
    const v0, 0x7f030012

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 57
    return-void
.end method
