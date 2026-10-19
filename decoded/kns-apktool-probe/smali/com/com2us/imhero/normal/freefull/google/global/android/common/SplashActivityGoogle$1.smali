.class Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle$1;
.super Landroid/os/Handler;
.source "SplashActivityGoogle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle;


# direct methods
.method constructor <init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle;

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle;

    invoke-virtual {v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityGoogle;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 42
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 53
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usEn;

    invoke-direct {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usEn;-><init>()V

    .line 54
    .local v0, "fragment1":Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usEn;
    const v3, 0x1020002

    const-string v4, "SPLASH_COM2US_EN"

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 58
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 59
    return-void
.end method
