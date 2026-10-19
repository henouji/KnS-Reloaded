.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;
.super Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;
.source "MainActivity.java"


# instance fields
.field public NetworkModule:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;

.field private mUserDefined:Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    :try_start_0
    const-string v0, "openal"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    const-string v0, "game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->mUserDefined:Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;

    .line 49
    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->NetworkModule:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;)Lcom/com2us/wrapper/game/CCustomGLSurfaceView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->mGLSurfaceView:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    invoke-static {}, Lcom/com2us/peppermint/HubBridge;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "com.com2us.imhero.normal.freefull.google.global.android.common"

    const-string v1, "2535"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/com2us/peppermint/HubBridge;->initialize(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 115
    :cond_0
    invoke-static {}, Lcom/com2us/peppermint/HubBridge;->getPeppermint()Lcom/com2us/peppermint/Peppermint;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/com2us/peppermint/Peppermint;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance v3, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;

    iget-object v4, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->mGLSurfaceView:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    invoke-direct {v3, v4, v5}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;-><init>(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V

    iput-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->mUserDefined:Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;

    .line 62
    iget-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->mUserDefined:Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;

    invoke-virtual {v3, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->setActivity(Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;)V

    .line 66
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 68
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->setRequestedOrientation(I)V

    .line 72
    :cond_0
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->getInstance()Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->NetworkModule:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;

    .line 73
    iget-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->NetworkModule:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;

    invoke-virtual {v3, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->setMainActivity(Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;)V

    .line 75
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->setContext(Landroid/content/Context;)V

    .line 77
    invoke-static {p0}, Lcom/com2us/peppermint/HubBridge;->hubInitializeJNI(Landroid/app/Activity;)V

    .line 79
    new-instance v3, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity$1;-><init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;)V

    invoke-static {v3}, Lcom/com2us/peppermint/HubBridge;->HubCallbackSetListener(Lcom/com2us/peppermint/HubCallbackListener;)V

    .line 86
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 89
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 91
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityDummy;

    invoke-direct {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityDummy;-><init>()V

    .line 93
    .local v0, "fragment1":Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityDummy;
    const v3, 0x1020002

    const-string v4, "SPLASH_DUMMY"

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 96
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 100
    .end local v0    # "fragment1":Lcom/com2us/imhero/normal/freefull/google/global/android/common/SplashActivityDummy;
    .end local v1    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v2    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->onDestroy()V

    .line 134
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onDestroy(Landroid/app/Activity;)V

    .line 135
    return-void
.end method

.method public onModuleManagerInitialize(Lcom/com2us/module/ModuleManager;)V
    .locals 0
    .param p1, "moduleManager"    # Lcom/com2us/module/ModuleManager;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->onModuleManagerInitialize(Lcom/com2us/module/ModuleManager;)V

    .line 142
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->onStart()V

    .line 121
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 122
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->onStop()V

    .line 127
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V

    .line 128
    return-void
.end method
