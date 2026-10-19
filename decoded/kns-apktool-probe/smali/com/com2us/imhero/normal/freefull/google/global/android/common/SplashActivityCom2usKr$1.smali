.class Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usKr$1;
.super Landroid/os/Handler;
.source "SplashActivityCom2usKr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usKr;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usKr;


# direct methods
.method constructor <init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usKr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usKr$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usKr;

    .line 25
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 30
    iget-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usKr$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usKr;

    invoke-virtual {v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityCom2usKr;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 31
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 33
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const-string v3, "SPLASH_COM2US_KR"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 34
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 37
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 38
    return-void
.end method
