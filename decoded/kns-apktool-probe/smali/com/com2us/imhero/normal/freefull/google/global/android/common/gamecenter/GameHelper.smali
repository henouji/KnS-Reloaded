.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;,
        Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;
    }
.end annotation


# static fields
.field public static final CLIENT_ALL:I = 0x7

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_NONE:I = 0x0

.field public static final CLIENT_PLUS:I = 0x2

.field static final DEFAULT_MAX_SIGN_IN_ATTEMPTS:I = 0x3

.field static final RC_RESOLVE:I = 0x2329

.field static final RC_UNUSED:I = 0x232a

.field static final TAG:Ljava/lang/String; = "GameHelper"


# instance fields
.field private final GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

.field private final KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mAppContext:Landroid/content/Context;

.field mAppStateApiOptions:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

.field mConnectOnStart:Z

.field private mConnecting:Z

.field mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field mDebugLog:Z

.field mExpectingResolution:Z

.field mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

.field mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

.field mHandler:Landroid/os/Handler;

.field mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

.field mListener:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;

.field mMaxAutoSignInAttempts:I

.field mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

.field mRequestedClients:I

.field mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupDone:Z

.field mShowErrorDialogs:Z

.field mSignInCancelled:Z

.field mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

.field mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

.field mUserInitiatedSignIn:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "clientsToUse"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSetupDone:Z

    .line 84
    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    .line 87
    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mExpectingResolution:Z

    .line 91
    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInCancelled:Z

    .line 98
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mActivity:Landroid/app/Activity;

    .line 101
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mAppContext:Landroid/content/Context;

    .line 111
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 114
    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 115
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 116
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mAppStateApiOptions:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 119
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 130
    iput v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequestedClients:I

    .line 135
    iput-boolean v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectOnStart:Z

    .line 143
    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mUserInitiatedSignIn:Z

    .line 146
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 149
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    .line 152
    iput-boolean v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mShowErrorDialogs:Z

    .line 155
    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mDebugLog:Z

    .line 178
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mListener:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;

    .line 184
    const/4 v0, 0x3

    iput v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mMaxAutoSignInAttempts:I

    .line 750
    const-string v0, "GAMEHELPER_SHARED_PREFS"

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

    .line 751
    const-string v0, "KEY_SIGN_IN_CANCELLATIONS"

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mActivity:Landroid/app/Activity;

    .line 197
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mAppContext:Landroid/content/Context;

    .line 198
    iput p2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequestedClients:I

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mHandler:Landroid/os/Handler;

    .line 200
    return-void
.end method

.method private doApiOptionsPreCheck()V
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-eqz v1, :cond_0

    .line 228
    const-string v0, "GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup()."

    .line 231
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->logError(Ljava/lang/String;)V

    .line 232
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 975
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 976
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 975
    return-object v0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 981
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 982
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 983
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 981
    return-object v0
.end method

.method public static showFailureDialog(Landroid/app/Activity;II)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "actResp"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 934
    if-nez p0, :cond_0

    .line 935
    const-string v1, "GameHelper"

    const-string v2, "*** No Activity. Can\'t show failure dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :goto_0
    return-void

    .line 938
    :cond_0
    const/4 v0, 0x0

    .line 940
    .local v0, "errorDialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 957
    const/16 v1, 0x232a

    const/4 v2, 0x0

    .line 956
    invoke-static {p2, p0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 958
    if-nez v0, :cond_1

    .line 960
    const-string v1, "GameHelper"

    .line 961
    const-string v2, "No standard error dialog available. Making fallback dialog."

    .line 960
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    .line 965
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 966
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 967
    invoke-static {p2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 964
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 962
    invoke-static {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 971
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 943
    :pswitch_0
    const/4 v1, 0x2

    .line 942
    invoke-static {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 944
    goto :goto_1

    .line 947
    :pswitch_1
    const/4 v1, 0x1

    .line 946
    invoke-static {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 948
    goto :goto_1

    .line 951
    :pswitch_2
    const/4 v1, 0x3

    .line 950
    invoke-static {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 952
    goto :goto_1

    .line 940
    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method assertConfigured(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSetupDone:Z

    if-nez v1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GameHelper error: Operation attempted without setup: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string v2, ". The setup() method must be called before attempting any other operation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->logError(Ljava/lang/String;)V

    .line 222
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public beginUserInitiatedSignIn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 638
    const-string v0, "beginUserInitiatedSignIn: resetting attempt count."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->resetSignInCancellations()V

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInCancelled:Z

    .line 641
    iput-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectOnStart:Z

    .line 643
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const-string v0, "beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->logWarn(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->notifyListener(Z)V

    .line 679
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-boolean v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    if-eqz v0, :cond_1

    .line 650
    const-string v0, "beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it\'s clicked, and re-enable when you get the callback."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->logWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_1
    const-string v0, "Starting USER-INITIATED sign-in flow."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 665
    iput-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mUserInitiatedSignIn:Z

    .line 667
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    .line 670
    const-string v0, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 671
    iput-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    .line 672
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->resolveConnectionResult()V

    goto :goto_0

    .line 675
    :cond_2
    const-string v0, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 676
    iput-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    .line 677
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->connect()V

    goto :goto_0
.end method

.method public clearInvitation()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 466
    return-void
.end method

.method public clearRequests()V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 474
    return-void
.end method

.method public clearTurnBasedMatch()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 470
    return-void
.end method

.method connect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 682
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    const-string v0, "Already connected."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 691
    :goto_0
    return-void

    .line 686
    :cond_0
    const-string v0, "Starting connection."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    .line 688
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 689
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 690
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 4

    .prologue
    .line 270
    iget-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSetupDone:Z

    if-eqz v2, :cond_0

    .line 271
    const-string v1, "GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup."

    .line 273
    .local v1, "error":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->logError(Ljava/lang/String;)V

    .line 274
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    .end local v1    # "error":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 278
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mActivity:Landroid/app/Activity;

    .line 277
    invoke-direct {v0, v2, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 280
    .local v0, "builder":Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    iget v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 281
    sget-object v2, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 282
    sget-object v2, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 285
    :cond_1
    iget v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 286
    sget-object v2, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 287
    sget-object v2, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 290
    :cond_2
    iget v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 291
    sget-object v2, Lcom/google/android/gms/appstate/AppStateManager;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 292
    sget-object v2, Lcom/google/android/gms/appstate/AppStateManager;->SCOPE_APP_STATE:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 295
    :cond_3
    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 296
    return-object v0
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 1004
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GameHelper: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 882
    :goto_0
    return-void

    .line 879
    :cond_0
    const-string v0, "GameHelper"

    .line 880
    const-string v1, "disconnect() called when client was already disconnected."

    .line 879
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableDebugLog(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mDebugLog:Z

    .line 514
    if-eqz p1, :cond_0

    .line 515
    const-string v0, "Debug log enabled."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 517
    :cond_0
    return-void
.end method

.method public enableDebugLog(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    const-string v0, "GameHelper"

    const-string v1, "GameHelper.enableDebugLog(boolean,String) is deprecated. Use GameHelper.enableDebugLog(boolean)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p0, p1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->enableDebugLog(Z)V

    .line 524
    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 334
    const-string v1, "No GoogleApiClient. Did you call setup()?"

    .line 333
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getInvitation()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    const-string v0, "GameHelper"

    .line 446
    const-string v1, "Warning: getInvitation() should only be called when signed in, that is, after getting onSignInSuceeded()"

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    const-string v0, "GameHelper"

    .line 428
    const-string v1, "Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()"

    .line 427
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequests()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    const-string v0, "GameHelper"

    const-string v1, "Warning: getRequests() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSignInCancellations()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 756
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mAppContext:Landroid/content/Context;

    .line 757
    const-string v2, "GAMEHELPER_SHARED_PREFS"

    .line 756
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 758
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSignInError()Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    return-object v0
.end method

.method public getTurnBasedMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const-string v0, "GameHelper"

    .line 487
    const-string v1, "Warning: getTurnBasedMatch() should only be called when signed in, that is, after getting onSignInSuceeded()"

    .line 486
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method

.method giveUp(Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;)V
    .locals 3
    .param p1, "reason"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    .prologue
    const/4 v2, 0x0

    .line 892
    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectOnStart:Z

    .line 893
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->disconnect()V

    .line 894
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    .line 896
    iget v0, p1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;->mActivityResultCode:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    .line 898
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelperUtils;->printMisconfiguredDebugInfo(Landroid/content/Context;)V

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->showFailureDialog()V

    .line 902
    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    .line 903
    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->notifyListener(Z)V

    .line 904
    return-void
.end method

.method public hasInvitation()Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequests()Z
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignInError()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTurnBasedMatch()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method incrementSignInCancellations()I
    .locals 5

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 766
    .local v0, "cancellations":I
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mAppContext:Landroid/content/Context;

    .line 767
    const-string v3, "GAMEHELPER_SHARED_PREFS"

    const/4 v4, 0x0

    .line 766
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 767
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 768
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "KEY_SIGN_IN_CANCELLATIONS"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 769
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 770
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1013
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** GameHelper ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1009
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!!! GameHelper WARNING: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return-void
.end method

.method public makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 987
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 988
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->logError(Ljava/lang/String;)V

    .line 989
    const/4 v0, 0x0

    .line 991
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 995
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 996
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->logError(Ljava/lang/String;)V

    .line 997
    const/4 v0, 0x0

    .line 999
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method notifyListener(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Notifying LISTENER of sign-in "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    if-eqz p1, :cond_1

    const-string v0, "SUCCESS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mListener:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    .line 623
    if-eqz p1, :cond_3

    .line 624
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mListener:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;->onSignInSucceeded()V

    .line 629
    :cond_0
    :goto_1
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_2

    const-string v0, "FAILURE (error)"

    goto :goto_0

    .line 621
    :cond_2
    const-string v0, "FAILURE (no error)"

    goto :goto_0

    .line 626
    :cond_3
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mListener:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;->onSignInFailed()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x2329

    const/4 v4, 0x0

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult: req="

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    if-ne p1, v5, :cond_0

    const-string v2, "RC_RESOLVE"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 564
    const-string v3, ", resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 565
    invoke-static {p2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 566
    if-eq p1, v5, :cond_1

    .line 567
    const-string v2, "onActivityResult: request code not meant for us. Ignoring."

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 615
    :goto_1
    return-void

    .line 564
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 572
    :cond_1
    iput-boolean v4, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mExpectingResolution:Z

    .line 574
    iget-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    if-nez v2, :cond_2

    .line 575
    const-string v2, "onActivityResult: ignoring because we are not connecting."

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 581
    :cond_2
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 583
    const-string v2, "onAR: Resolution was RESULT_OK, so connecting current client again."

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->connect()V

    goto :goto_1

    .line 585
    :cond_3
    const/16 v2, 0x2711

    if-ne p2, v2, :cond_4

    .line 586
    const-string v2, "onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->connect()V

    goto :goto_1

    .line 588
    :cond_4
    if-nez p2, :cond_5

    .line 590
    const-string v2, "onAR: Got a cancellation result, so disconnecting."

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 591
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInCancelled:Z

    .line 592
    iput-boolean v4, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectOnStart:Z

    .line 593
    iput-boolean v4, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mUserInitiatedSignIn:Z

    .line 594
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    .line 595
    iput-boolean v4, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    .line 596
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 599
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getSignInCancellations()I

    move-result v1

    .line 600
    .local v1, "prevCancellations":I
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->incrementSignInCancellations()I

    move-result v0

    .line 601
    .local v0, "newCancellations":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAR: # of cancellations "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 602
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0, v4}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->notifyListener(Z)V

    goto :goto_1

    .line 608
    .end local v0    # "newCancellations":I
    .end local v1    # "prevCancellations":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAR: responseCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-static {p2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 609
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 611
    const-string v3, ", so giving up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 612
    new-instance v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    iget-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    .line 613
    invoke-direct {v2, v3, p2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;-><init>(II)V

    .line 612
    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->giveUp(Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;)V

    goto/16 :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    .line 710
    const-string v1, "onConnected: connected!"

    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 712
    if-eqz p1, :cond_2

    .line 713
    const-string v1, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 715
    const-string v1, "invitation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 716
    .local v0, "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 718
    const-string v1, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 719
    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invitation ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v2}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 724
    :cond_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    .line 725
    invoke-interface {v1, p1}, Lcom/google/android/gms/games/request/Requests;->getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 724
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 726
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnected: connection hint has "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 729
    const-string v2, " request(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 732
    :cond_1
    const-string v1, "onConnected: connection hint provided. Checking for TBMP game."

    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 734
    const-string v1, "turn_based_match"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 733
    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 738
    .end local v0    # "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    :cond_2
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->succeedSignIn()V

    .line 739
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const/4 v4, 0x0

    .line 786
    const-string v2, "onConnectionFailed"

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 788
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 789
    const-string v2, "Connection failure:"

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   - code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 791
    iget-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 792
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    .line 791
    invoke-static {v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 790
    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   - resolvable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   - details: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 797
    .local v0, "cancellations":I
    const/4 v1, 0x0

    .line 799
    .local v1, "shouldResolve":Z
    iget-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mUserInitiatedSignIn:Z

    if-eqz v2, :cond_0

    .line 800
    const-string v2, "onConnectionFailed: WILL resolve because user initiated sign-in."

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 801
    const/4 v1, 0x1

    .line 821
    :goto_0
    if-nez v1, :cond_3

    .line 823
    const-string v2, "onConnectionFailed: since we won\'t resolve, failing now."

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 824
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 825
    iput-boolean v4, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    .line 826
    invoke-virtual {p0, v4}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->notifyListener(Z)V

    .line 836
    :goto_1
    return-void

    .line 802
    :cond_0
    iget-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInCancelled:Z

    if-eqz v2, :cond_1

    .line 803
    const-string v2, "onConnectionFailed WILL NOT resolve (user already cancelled once)."

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 804
    const/4 v1, 0x0

    .line 805
    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mMaxAutoSignInAttempts:I

    if-ge v0, v2, :cond_2

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConnectionFailed: WILL resolve because we have below the max# of attempts, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 809
    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 810
    iget v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 806
    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 811
    const/4 v1, 0x1

    .line 812
    goto :goto_0

    .line 813
    :cond_2
    const/4 v1, 0x0

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConnectionFailed: Will NOT resolve; not user-initiated and max attempts reached: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 817
    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 818
    iget v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 814
    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 830
    :cond_3
    const-string v2, "onConnectionFailed: resolving problem..."

    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->resolveConnectionResult()V

    goto :goto_1
.end method

.method public onConnectionSuspended(I)V
    .locals 3
    .param p1, "cause"    # I

    .prologue
    const/4 v2, 0x0

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionSuspended, cause="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->disconnect()V

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    .line 912
    const-string v0, "Making extraordinary call to onSignInFailed callback"

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 913
    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    .line 914
    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->notifyListener(Z)V

    .line 915
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mActivity:Landroid/app/Activity;

    .line 373
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mAppContext:Landroid/content/Context;

    .line 375
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 376
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 378
    iget-boolean v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectOnStart:Z

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "GameHelper"

    .line 381
    const-string v1, "GameHelper: client was already connected on onStart()"

    .line 380
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_0
    return-void

    .line 383
    :cond_0
    const-string v0, "Connecting client."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    .line 385
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 388
    :cond_1
    const-string v0, "Not attempting to connect becase mConnectOnStart=false"

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 389
    const-string v0, "Instead, reporting a sign-in failure."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$1;

    invoke-direct {v1, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$1;-><init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;)V

    .line 395
    const-wide/16 v2, 0x3e8

    .line 390
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 402
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "Disconnecting client due to onStop"

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 409
    :goto_0
    iput-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    .line 410
    iput-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mExpectingResolution:Z

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mActivity:Landroid/app/Activity;

    .line 414
    return-void

    .line 407
    :cond_0
    const-string v0, "Client already disconnected when we got onStop."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reconnectClient()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    const-string v0, "GameHelper"

    const-string v1, "reconnectClient() called when client is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->connect()V

    .line 705
    :goto_0
    return-void

    .line 702
    :cond_0
    const-string v0, "Reconnecting client."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    goto :goto_0
.end method

.method resetSignInCancellations()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 776
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mAppContext:Landroid/content/Context;

    .line 777
    const-string v2, "GAMEHELPER_SHARED_PREFS"

    .line 776
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 777
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 778
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 779
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 780
    return-void
.end method

.method resolveConnectionResult()V
    .locals 4

    .prologue
    .line 845
    iget-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mExpectingResolution:Z

    if-eqz v1, :cond_0

    .line 846
    const-string v1, "We\'re already expecting the result of a previous resolution."

    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 872
    :goto_0
    return-void

    .line 850
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resolveConnectionResult: trying to resolve result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 851
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 850
    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 852
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 854
    const-string v1, "Result has resolution. Starting it."

    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 858
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mExpectingResolution:Z

    .line 859
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mActivity:Landroid/app/Activity;

    .line 860
    const/16 v3, 0x2329

    .line 859
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "SendIntentException, so connecting again."

    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->connect()V

    goto :goto_0

    .line 869
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_1
    const-string v1, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 870
    new-instance v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->giveUp(Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;)V

    goto :goto_0
.end method

.method public setAppStateApiOptions(Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;)V
    .locals 0

    .prologue
    .line 250
    .local p1, "options":Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;, "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;"
    invoke-direct {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->doApiOptionsPreCheck()V

    .line 251
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mAppStateApiOptions:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 252
    return-void
.end method

.method public setConnectOnStart(Z)V
    .locals 2
    .param p1, "connectOnStart"    # Z

    .prologue
    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Forcing mConnectOnStart="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 1057
    iput-boolean p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectOnStart:Z

    .line 1058
    return-void
.end method

.method public setGamesApiOptions(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/android/gms/games/Games$GamesOptions;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->doApiOptionsPreCheck()V

    .line 242
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 243
    return-void
.end method

.method public setMaxAutoSignInAttempts(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mMaxAutoSignInAttempts:I

    .line 214
    return-void
.end method

.method public setPlusApiOptions(Lcom/google/android/gms/plus/Plus$PlusOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/android/gms/plus/Plus$PlusOptions;

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->doApiOptionsPreCheck()V

    .line 260
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 261
    return-void
.end method

.method public setShowErrorDialogs(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mShowErrorDialogs:Z

    .line 368
    return-void
.end method

.method public setup(Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;

    .prologue
    .line 309
    iget-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    .line 310
    const-string v0, "GameHelper: you cannot call GameHelper.setup() more than once!"

    .line 311
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->logError(Ljava/lang/String;)V

    .line 312
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mListener:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setup: requested clients: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequestedClients:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-nez v1, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 323
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 324
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSetupDone:Z

    .line 325
    return-void
.end method

.method public showFailureDialog()V
    .locals 4

    .prologue
    .line 918
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    if-eqz v2, :cond_0

    .line 919
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;->getServiceErrorCode()I

    move-result v1

    .line 920
    .local v1, "errorCode":I
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;->getActivityResultCode()I

    move-result v0

    .line 922
    .local v0, "actResp":I
    iget-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mShowErrorDialogs:Z

    if-eqz v2, :cond_1

    .line 923
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->showFailureDialog(Landroid/app/Activity;II)V

    .line 929
    .end local v0    # "actResp":I
    .end local v1    # "errorCode":I
    :cond_0
    :goto_0
    return-void

    .line 925
    .restart local v0    # "actResp":I
    .restart local v1    # "errorCode":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not showing error dialog because mShowErrorDialogs==false. Error was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 926
    iget-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 925
    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public signOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 528
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    const-string v0, "signOut: was already disconnected, ignoring."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 553
    :goto_0
    return-void

    .line 536
    :cond_0
    iget v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 537
    const-string v0, "Clearing default account on PlusClient."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 538
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 543
    :cond_1
    iget v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 544
    const-string v0, "Signing out from the Google API Client."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 549
    :cond_2
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 550
    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectOnStart:Z

    .line 551
    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    .line 552
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method succeedSignIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 742
    const-string v0, "succeedSignIn"

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mSignInFailureReason:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$SignInFailureReason;

    .line 744
    iput-boolean v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnectOnStart:Z

    .line 745
    iput-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mUserInitiatedSignIn:Z

    .line 746
    iput-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->mConnecting:Z

    .line 747
    invoke-virtual {p0, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->notifyListener(Z)V

    .line 748
    return-void
.end method
