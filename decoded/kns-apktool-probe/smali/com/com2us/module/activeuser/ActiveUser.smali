.class public Lcom/com2us/module/activeuser/ActiveUser;
.super Lcom/com2us/module/AppStateAdapter;
.source "ActiveUser.java"

# interfaces
.implements Lcom/com2us/module/Modulable;
.implements Lcom/com2us/module/activeuser/Constants;


# static fields
.field public static final UserAgreeBLACK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UserAgreeDefaultColorType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UserAgreeWHITE:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private activeUserNotifier:Lcom/com2us/module/activeuser/ActiveUserNotifier;

.field private activity:Landroid/app/Activity;

.field private auModuleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/com2us/module/activeuser/ActiveUserModule;",
            ">;"
        }
    .end annotation
.end field

.field private didCheck:Lcom/com2us/module/activeuser/didcheck/DIDCheck;

.field private downloadCheck:Lcom/com2us/module/activeuser/downloadcheck/DownloadCheck;

.field private isDestroyed:Z

.field private isOpenedUserAgreeUI:Z

.field private jniActiveUserNotifierPointer:I

.field private jniUserAgreeNotifierPointer:I

.field private final logger:Lcom/com2us/module/util/Logger;

.field private moduleVersionCheck:Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;

.field private sessionCheck:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

.field private userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

.field private userAgreeNotifier:Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;

.field private viewEx:Lcom/com2us/module/view/SurfaceViewWrapper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/com2us/module/AppStateAdapter;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->auModuleList:Ljava/util/ArrayList;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->isDestroyed:Z

    .line 77
    iput v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->jniUserAgreeNotifierPointer:I

    .line 79
    iput v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->jniActiveUserNotifierPointer:I

    .line 81
    iput-boolean v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->isOpenedUserAgreeUI:Z

    .line 89
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser;->activity:Landroid/app/Activity;

    .line 90
    const-string v0, "ActiveUser"

    invoke-static {v0, p1}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;Landroid/app/Activity;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    .line 92
    iput-boolean v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->isDestroyed:Z

    .line 94
    invoke-static {p1}, Lcom/com2us/module/activeuser/ActiveUserData;->create(Landroid/content/Context;)V

    .line 96
    invoke-static {p1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->loadProperties(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->auModuleList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->getInstance()Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    new-instance v1, Lcom/com2us/module/activeuser/ActiveUser$1;

    invoke-direct {v1, p0, p1}, Lcom/com2us/module/activeuser/ActiveUser$1;-><init>(Lcom/com2us/module/activeuser/ActiveUser;Landroid/app/Activity;)V

    .line 126
    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    .line 100
    invoke-virtual {v0, p1, v1, v2}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->setParameter(Landroid/app/Activity;Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;Lcom/com2us/module/util/Logger;)V

    .line 128
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->auModuleList:Ljava/util/ArrayList;

    new-instance v1, Lcom/com2us/module/activeuser/downloadcheck/DownloadCheck;

    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    invoke-direct {v1, v2}, Lcom/com2us/module/activeuser/downloadcheck/DownloadCheck;-><init>(Lcom/com2us/module/util/Logger;)V

    iput-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->downloadCheck:Lcom/com2us/module/activeuser/downloadcheck/DownloadCheck;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v0, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    invoke-direct {v0, p1, v1}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;-><init>(Landroid/app/Activity;Lcom/com2us/module/util/Logger;)V

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->sessionCheck:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    .line 132
    new-instance v0, Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    invoke-direct {v0, p1, v1}, Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;-><init>(Landroid/content/Context;Lcom/com2us/module/util/Logger;)V

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->moduleVersionCheck:Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;

    .line 133
    new-instance v0, Lcom/com2us/module/activeuser/didcheck/DIDCheck;

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    invoke-direct {v0, p1, v1}, Lcom/com2us/module/activeuser/didcheck/DIDCheck;-><init>(Landroid/content/Context;Lcom/com2us/module/util/Logger;)V

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->didCheck:Lcom/com2us/module/activeuser/didcheck/DIDCheck;

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewEx"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/ActiveUser;-><init>(Landroid/app/Activity;)V

    .line 138
    iput-object p2, p0, Lcom/com2us/module/activeuser/ActiveUser;->viewEx:Lcom/com2us/module/view/SurfaceViewWrapper;

    .line 139
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/ActiveUser;->jniInitialize(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)V

    .line 140
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/util/Logger;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    return-object v0
.end method

.method static synthetic access$1(Lcom/com2us/module/activeuser/ActiveUser;)V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/com2us/module/activeuser/ActiveUser;->executeModules()V

    return-void
.end method

.method static synthetic access$10(Lcom/com2us/module/activeuser/ActiveUser;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->auModuleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/com2us/module/activeuser/ActiveUser;I)V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/ActiveUser;->runGetDIDCallback(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/activeuser/didcheck/DIDCheck;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->didCheck:Lcom/com2us/module/activeuser/didcheck/DIDCheck;

    return-object v0
.end method

.method static synthetic access$13(Lcom/com2us/module/activeuser/ActiveUser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/ActiveUser;->requestNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/com2us/module/activeuser/ActiveUser;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->jniActiveUserNotifierPointer:I

    return v0
.end method

.method static synthetic access$15(Lcom/com2us/module/activeuser/ActiveUser;II)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/activeuser/ActiveUser;->jniActiveUserNotifier(II)V

    return-void
.end method

.method static synthetic access$2(Lcom/com2us/module/activeuser/ActiveUser;)Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeNotifier:Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;

    return-object v0
.end method

.method static synthetic access$3(Lcom/com2us/module/activeuser/ActiveUser;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->jniUserAgreeNotifierPointer:I

    return v0
.end method

.method static synthetic access$4(Lcom/com2us/module/activeuser/ActiveUser;Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/com2us/module/activeuser/ActiveUser;->isOpenedUserAgreeUI:Z

    return-void
.end method

.method static synthetic access$5(Lcom/com2us/module/activeuser/ActiveUser;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/com2us/module/activeuser/ActiveUser;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/ActiveUser;->processAgreement(Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;)V

    return-void
.end method

.method static synthetic access$7(Lcom/com2us/module/activeuser/ActiveUser;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/com2us/module/activeuser/ActiveUser;->isLocalAgreeShow()V

    return-void
.end method

.method static synthetic access$8(Lcom/com2us/module/activeuser/ActiveUser;II)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/activeuser/ActiveUser;->jniUserAgreeNotifier(II)V

    return-void
.end method

.method static synthetic access$9(Lcom/com2us/module/activeuser/ActiveUser;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/com2us/module/activeuser/ActiveUser;->startConfigurationThread()V

    return-void
.end method

.method private checkNetworkState()Z
    .locals 4

    .prologue
    .line 656
    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUser;->activity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 657
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 658
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 659
    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Network Inactive"

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 660
    const/4 v2, 0x0

    .line 666
    :goto_0
    return v2

    .line 665
    :cond_0
    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Network Active"

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 666
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createRetryAgreementVersionDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getInstance(Landroid/content/Context;)Lcom/com2us/module/activeuser/useragree/TermsManager;

    move-result-object v1

    .line 392
    .local v1, "tm":Lcom/com2us/module/activeuser/useragree/TermsManager;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v1}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getErrorTitleText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v1}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getErrorMsgText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 396
    invoke-virtual {v1}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getRetryText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/com2us/module/activeuser/ActiveUser$8;

    invoke-direct {v3, p0}, Lcom/com2us/module/activeuser/ActiveUser$8;-><init>(Lcom/com2us/module/activeuser/ActiveUser;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 404
    invoke-virtual {v1}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getQuitText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/com2us/module/activeuser/ActiveUser$9;

    invoke-direct {v3, p0}, Lcom/com2us/module/activeuser/ActiveUser$9;-><init>(Lcom/com2us/module/activeuser/ActiveUser;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 413
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private executeModules()V
    .locals 4

    .prologue
    .line 625
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "[executeModules]"

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 626
    const-string v1, "userinfo_agree_privacy"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[executeModules] value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 646
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->downloadCheck:Lcom/com2us/module/activeuser/downloadcheck/DownloadCheck;

    invoke-virtual {v1}, Lcom/com2us/module/activeuser/downloadcheck/DownloadCheck;->isExecutable()Z

    move-result v1

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->setEnabledDownload(Z)V

    .line 648
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->sessionCheck:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    invoke-virtual {v1}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->isExecutable()Z

    .line 649
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->moduleVersionCheck:Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;

    invoke-virtual {v1}, Lcom/com2us/module/activeuser/moduleversioncheck/ModuleVersionCheck;->isExecutable()Z

    .line 650
    const-string v1, "download"

    invoke-direct {p0, v1}, Lcom/com2us/module/activeuser/ActiveUser;->requestNetwork(Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public static getDID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    const-string v1, "did_data"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "did":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "did":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private isLocalAgreeShow()V
    .locals 7

    .prologue
    .line 334
    iget-object v4, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "isLocalAgreeShow"

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 336
    const/4 v3, 0x0

    .line 337
    .local v3, "storedVersion":I
    const/4 v2, 0x0

    .line 339
    .local v2, "localVersion":I
    const-string v4, "agreement_version"

    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "agreement_version":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 350
    :goto_0
    const/16 v4, 0x10

    :try_start_1
    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 356
    :goto_1
    iget-object v4, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "storedVersion : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 357
    iget-object v4, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "localVersion : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 359
    if-ge v3, v2, :cond_1

    .line 360
    iget-object v4, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-virtual {v4, v2}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->setVersion(I)V

    .line 361
    iget-object v4, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->setURL(Ljava/lang/String;)V

    .line 362
    iget-object v4, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-virtual {v4}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->showAgreementPage()V

    .line 385
    :goto_2
    return-void

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    const/4 v3, 0x0

    .line 347
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 351
    :catch_1
    move-exception v1

    .line 352
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    const/4 v2, 0x0

    goto :goto_1

    .line 364
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeNotifier:Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;

    if-eqz v4, :cond_2

    .line 365
    iget-object v4, p0, Lcom/com2us/module/activeuser/ActiveUser;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/com2us/module/activeuser/ActiveUser$6;

    invoke-direct {v5, p0}, Lcom/com2us/module/activeuser/ActiveUser$6;-><init>(Lcom/com2us/module/activeuser/ActiveUser;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    :cond_2
    iget v4, p0, Lcom/com2us/module/activeuser/ActiveUser;->jniUserAgreeNotifierPointer:I

    if-eqz v4, :cond_3

    .line 375
    iget-object v4, p0, Lcom/com2us/module/activeuser/ActiveUser;->viewEx:Lcom/com2us/module/view/SurfaceViewWrapper;

    new-instance v5, Lcom/com2us/module/activeuser/ActiveUser$7;

    invoke-direct {v5, p0}, Lcom/com2us/module/activeuser/ActiveUser$7;-><init>(Lcom/com2us/module/activeuser/ActiveUser;)V

    invoke-virtual {v4, v5}, Lcom/com2us/module/view/SurfaceViewWrapper;->queueEvent(Ljava/lang/Runnable;)V

    .line 383
    :cond_3
    invoke-direct {p0}, Lcom/com2us/module/activeuser/ActiveUser;->executeModules()V

    goto :goto_2
.end method

.method private native jniActiveUserNotifier(II)V
.end method

.method private native jniInitialize(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)V
.end method

.method private native jniUninitialize()V
.end method

.method private native jniUserAgreeNotifier(II)V
.end method

.method private processAgreement(Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;)V
    .locals 2
    .param p1, "recvConfigurationData"    # Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;

    .prologue
    .line 297
    iget v0, p1, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_show:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_ex_show:I

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    const-string v0, "agreement_log_property"

    const-string v1, "agreement_log_sending"

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 302
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    iget v1, p1, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_version:I

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->setVersion(I)V

    .line 303
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    iget-object v1, p1, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->setURL(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    iget-object v1, p1, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_ex_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->setAgreementEx_URL(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->showAgreementPage()V

    .line 330
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeNotifier:Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/activeuser/ActiveUser$4;

    invoke-direct {v1, p0}, Lcom/com2us/module/activeuser/ActiveUser$4;-><init>(Lcom/com2us/module/activeuser/ActiveUser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 319
    :cond_2
    iget v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->jniUserAgreeNotifierPointer:I

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->viewEx:Lcom/com2us/module/view/SurfaceViewWrapper;

    new-instance v1, Lcom/com2us/module/activeuser/ActiveUser$5;

    invoke-direct {v1, p0}, Lcom/com2us/module/activeuser/ActiveUser$5;-><init>(Lcom/com2us/module/activeuser/ActiveUser;)V

    invoke-virtual {v0, v1}, Lcom/com2us/module/view/SurfaceViewWrapper;->queueEvent(Ljava/lang/Runnable;)V

    .line 328
    :cond_3
    invoke-direct {p0}, Lcom/com2us/module/activeuser/ActiveUser;->executeModules()V

    goto :goto_0
.end method

.method private requestNetwork(Ljava/lang/String;)V
    .locals 3
    .param p1, "requestCmd"    # Ljava/lang/String;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[requestNetwork] requestCmd : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 521
    new-instance v0, Lcom/com2us/module/activeuser/ActiveUser$10;

    invoke-direct {v0, p0, p1}, Lcom/com2us/module/activeuser/ActiveUser$10;-><init>(Lcom/com2us/module/activeuser/ActiveUser;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0}, Lcom/com2us/module/activeuser/ActiveUser$10;->start()V

    .line 619
    return-void
.end method

.method private runGetDIDCallback(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runGetDIDCallback : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 673
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/ActiveUser;->sendAgreementLog(I)V

    .line 675
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->activeUserNotifier:Lcom/com2us/module/activeuser/ActiveUserNotifier;

    if-eqz v0, :cond_0

    .line 676
    if-nez p1, :cond_2

    .line 677
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->activeUserNotifier:Lcom/com2us/module/activeuser/ActiveUserNotifier;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/com2us/module/activeuser/ActiveUserNotifier;->onActiveUserResult(I)V

    .line 683
    :cond_0
    :goto_0
    iget v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->jniActiveUserNotifierPointer:I

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->viewEx:Lcom/com2us/module/view/SurfaceViewWrapper;

    new-instance v1, Lcom/com2us/module/activeuser/ActiveUser$11;

    invoke-direct {v1, p0, p1}, Lcom/com2us/module/activeuser/ActiveUser$11;-><init>(Lcom/com2us/module/activeuser/ActiveUser;I)V

    invoke-virtual {v0, v1}, Lcom/com2us/module/view/SurfaceViewWrapper;->queueEvent(Ljava/lang/Runnable;)V

    .line 696
    :cond_1
    return-void

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->activeUserNotifier:Lcom/com2us/module/activeuser/ActiveUserNotifier;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/com2us/module/activeuser/ActiveUserNotifier;->onActiveUserResult(I)V

    goto :goto_0
.end method

.method private sendAgreementLog(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 704
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendAgreementLog : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 706
    const-string v1, "agreement_log_property"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "agreementLogProperty":Ljava/lang/String;
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendAgreementLog - agreementLogProperty : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 710
    if-nez p1, :cond_0

    const-string v1, "agreement_log_completed"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/com2us/module/activeuser/ActiveUser$12;

    invoke-direct {v2, p0}, Lcom/com2us/module/activeuser/ActiveUser$12;-><init>(Lcom/com2us/module/activeuser/ActiveUser;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 731
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 734
    :cond_0
    return-void
.end method

.method private setJNIActiveUserNotifier(I)V
    .locals 0
    .param p1, "callbackPointer"    # I

    .prologue
    .line 437
    iput p1, p0, Lcom/com2us/module/activeuser/ActiveUser;->jniActiveUserNotifierPointer:I

    .line 438
    return-void
.end method

.method private setJNIUserAgreeNotifier(I)V
    .locals 0
    .param p1, "callbackPointer"    # I

    .prologue
    .line 423
    iput p1, p0, Lcom/com2us/module/activeuser/ActiveUser;->jniUserAgreeNotifierPointer:I

    .line 424
    return-void
.end method

.method private startConfigurationThread()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "startConfigurationThread"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/activeuser/ActiveUser$3;

    invoke-direct {v1, p0}, Lcom/com2us/module/activeuser/ActiveUser$3;-><init>(Lcom/com2us/module/activeuser/ActiveUser;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 291
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 292
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 755
    iget-boolean v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->isDestroyed:Z

    if-nez v1, :cond_1

    .line 756
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->viewEx:Lcom/com2us/module/view/SurfaceViewWrapper;

    if-eqz v1, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/com2us/module/activeuser/ActiveUser;->jniUninitialize()V

    .line 758
    :cond_0
    iput-object v2, p0, Lcom/com2us/module/activeuser/ActiveUser;->activity:Landroid/app/Activity;

    .line 759
    iput-object v2, p0, Lcom/com2us/module/activeuser/ActiveUser;->viewEx:Lcom/com2us/module/view/SurfaceViewWrapper;

    .line 761
    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->auModuleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 763
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->isDestroyed:Z

    .line 765
    :cond_1
    return-void

    .line 761
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/activeuser/ActiveUserModule;

    .line 762
    .local v0, "module":Lcom/com2us/module/activeuser/ActiveUserModule;
    invoke-interface {v0}, Lcom/com2us/module/activeuser/ActiveUserModule;->destroy()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    const-string v0, "ActiveUser"

    return-object v0
.end method

.method public getPermission()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUser;->PERMISSION:[Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUser;->Version:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityStarted()V
    .locals 2

    .prologue
    .line 738
    invoke-super {p0}, Lcom/com2us/module/AppStateAdapter;->onActivityStarted()V

    .line 739
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "onActivityStarted"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->sessionCheck:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->onActivityStarted()V

    .line 742
    return-void
.end method

.method public onActivityStopped()V
    .locals 2

    .prologue
    .line 745
    invoke-super {p0}, Lcom/com2us/module/AppStateAdapter;->onActivityStopped()V

    .line 746
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "onActivityStopped"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->sessionCheck:Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/sessioncheck/SessionCheck;->onActivityStoped()V

    .line 748
    return-void
.end method

.method public onCletResumed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->isOpenedUserAgreeUI:Z

    if-eqz v0, :cond_0

    .line 150
    iput-boolean v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->isOpenedUserAgreeUI:Z

    .line 151
    iget v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->jniUserAgreeNotifierPointer:I

    invoke-direct {p0, v0, v1}, Lcom/com2us/module/activeuser/ActiveUser;->jniUserAgreeNotifier(II)V

    .line 153
    :cond_0
    return-void
.end method

.method public resetUserAgree()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->resetUserAgree()V

    .line 484
    return-void
.end method

.method public setActiveUserNotifier(Lcom/com2us/module/activeuser/ActiveUserNotifier;)V
    .locals 0
    .param p1, "notifier"    # Lcom/com2us/module/activeuser/ActiveUserNotifier;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser;->activeUserNotifier:Lcom/com2us/module/activeuser/ActiveUserNotifier;

    .line 445
    return-void
.end method

.method public setAppIdForIdentity(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 805
    invoke-static {p1}, Lcom/com2us/module/activeuser/ActiveUserData;->setAppid(Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public setAppVersionCheckListener(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    return-void
.end method

.method public setEnableUserAgreeUI()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/com2us/module/activeuser/ActiveUser;->setEnableUserAgreeUI(I)V

    .line 470
    return-void
.end method

.method public setEnableUserAgreeUI(I)V
    .locals 1
    .param p1, "colorType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-virtual {v0, p1}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->setEnable(I)V

    .line 477
    return-void
.end method

.method public setLogged(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 787
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0, p1}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 788
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "ActiveUser"

    const-string v2, "Enable Logging"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_0
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 3
    .param p1, "server_id"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setServerId] : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 511
    invoke-static {p1}, Lcom/com2us/module/activeuser/ActiveUserData;->setServerId(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public setUseTestServer()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "[setUseTestServer] is deprecated."

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public setUserAgreeNotifier(Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;)V
    .locals 0
    .param p1, "notifier"    # Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeNotifier:Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;

    .line 431
    return-void
.end method

.method public showAppVersionCheckDialog()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    return-void
.end method

.method public showUserAgreeTerms()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->showUserAgreeTerms(Landroid/content/Context;)V

    .line 814
    return-void
.end method

.method public showUserAgreeTerms(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUser;->userAgreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->showUserAgreeTerms(Landroid/content/Context;Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 170
    iget-boolean v1, p0, Lcom/com2us/module/activeuser/ActiveUser;->isDestroyed:Z

    if-nez v1, :cond_1

    .line 172
    const-string v1, "send_referrer"

    invoke-static {v1}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "sendReferrer":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    new-instance v1, Lcom/com2us/module/activeuser/ActiveUser$2;

    invoke-direct {v1, p0}, Lcom/com2us/module/activeuser/ActiveUser$2;-><init>(Lcom/com2us/module/activeuser/ActiveUser;)V

    .line 191
    invoke-virtual {v1}, Lcom/com2us/module/activeuser/ActiveUser$2;->start()V

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/com2us/module/activeuser/ActiveUser;->startConfigurationThread()V

    .line 220
    .end local v0    # "sendReferrer":Ljava/lang/String;
    :cond_1
    return-void
.end method
