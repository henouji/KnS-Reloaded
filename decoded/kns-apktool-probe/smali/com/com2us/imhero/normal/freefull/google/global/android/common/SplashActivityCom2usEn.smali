.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usEn;
.super Landroid/app/Fragment;
.source "SplashActivityCom2usEn.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usEn$1;

    invoke-direct {v0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usEn$1;-><init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usEn;)V

    .line 41
    .local v0, "handler":Landroid/os/Handler;
    const/4 v1, 0x0

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 42
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usEn;->initialize()V

    .line 20
    const v0, 0x7f030010

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 47
    return-void
.end method
