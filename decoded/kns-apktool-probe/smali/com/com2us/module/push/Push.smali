.class public Lcom/com2us/module/push/Push;
.super Lcom/com2us/module/AppStateAdapter;
.source "Push.java"

# interfaces
.implements Lcom/com2us/module/Modulable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/push/Push$RegisterState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$com2us$module$push$Push$RegisterState:[I = null

.field public static final DEFAULT_FALSE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_TRUE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GCMPush:I = 0x1

.field public static final LocalPush:I = 0x2

.field public static final USER_FALSE:I = 0x2

.field public static final USER_TRUE:I = 0x3

.field private static appid:Ljava/lang/String;

.field private static glView:Lcom/com2us/module/view/SurfaceViewWrapper;

.field private static isInitialized:Z

.field private static isPush:I

.field protected static isRegistrationing:Z

.field private static isSound:I

.field private static isVib:I

.field private static pushCallback:Lcom/com2us/module/push/PushCallback;

.field private static pushCallbackRef:I

.field protected static registerState:Lcom/com2us/module/push/Push$RegisterState;

.field private static sendThread:Ljava/lang/Thread;

.field protected static senderID:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;


# direct methods
.method static synthetic $SWITCH_TABLE$com$com2us$module$push$Push$RegisterState()[I
    .locals 3

    .prologue
    .line 71
    sget-object v0, Lcom/com2us/module/push/Push;->$SWITCH_TABLE$com$com2us$module$push$Push$RegisterState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/com2us/module/push/Push$RegisterState;->values()[Lcom/com2us/module/push/Push$RegisterState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->LOGIN:Lcom/com2us/module/push/Push$RegisterState;

    invoke-virtual {v1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->LOGOUT:Lcom/com2us/module/push/Push$RegisterState;

    invoke-virtual {v1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->REGISTER:Lcom/com2us/module/push/Push$RegisterState;

    invoke-virtual {v1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->SENDER:Lcom/com2us/module/push/Push$RegisterState;

    invoke-virtual {v1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->UNREGISTER:Lcom/com2us/module/push/Push$RegisterState;

    invoke-virtual {v1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/com2us/module/push/Push;->$SWITCH_TABLE$com$com2us$module$push$Push$RegisterState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    sput-object v2, Lcom/com2us/module/push/Push;->glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    .line 77
    sput-object v2, Lcom/com2us/module/push/Push;->pushCallback:Lcom/com2us/module/push/PushCallback;

    .line 78
    sput v1, Lcom/com2us/module/push/Push;->pushCallbackRef:I

    .line 97
    sput v0, Lcom/com2us/module/push/Push;->isPush:I

    .line 98
    sput v0, Lcom/com2us/module/push/Push;->isSound:I

    .line 99
    sput v0, Lcom/com2us/module/push/Push;->isVib:I

    .line 108
    const-string v0, ""

    sput-object v0, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    .line 110
    const-string v0, ""

    sput-object v0, Lcom/com2us/module/push/Push;->appid:Ljava/lang/String;

    .line 112
    sput-object v2, Lcom/com2us/module/push/Push;->sendThread:Ljava/lang/Thread;

    .line 118
    sget-object v0, Lcom/com2us/module/push/Push$RegisterState;->REGISTER:Lcom/com2us/module/push/Push$RegisterState;

    sput-object v0, Lcom/com2us/module/push/Push;->registerState:Lcom/com2us/module/push/Push$RegisterState;

    .line 121
    sput-boolean v1, Lcom/com2us/module/push/Push;->isInitialized:Z

    .line 122
    sput-boolean v1, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "useTestServer"    # Z
    .param p3, "_glView"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/com2us/module/push/Push;-><init>(Landroid/content/Context;ZZLcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/com2us/module/push/Push;-><init>(Landroid/content/Context;ZZLcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useTestServer"    # Z
    .param p3, "useCLibrary"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/com2us/module/push/Push;-><init>(Landroid/content/Context;ZZLcom/com2us/module/view/SurfaceViewWrapper;)V

    .line 142
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZLcom/com2us/module/view/SurfaceViewWrapper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useTestServer"    # Z
    .param p3, "useCLibrary"    # Z
    .param p4, "glView"    # Lcom/com2us/module/view/SurfaceViewWrapper;

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/com2us/module/AppStateAdapter;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    .line 76
    iput-object v1, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    .line 156
    sput-object p4, Lcom/com2us/module/push/Push;->glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    .line 158
    if-eqz p3, :cond_0

    invoke-static {p0}, Lcom/com2us/module/push/Push;->jniPushInitialize(Lcom/com2us/module/push/Push;)V

    .line 165
    :cond_0
    invoke-static {p1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getInstance(Landroid/content/Context;)Lcom/com2us/module/push/PushConfig$PropertyUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    .line 166
    iget-object v1, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    invoke-virtual {v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->loadProperty()V

    .line 168
    iget-object v1, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/com2us/module/push/Push;->appid:Ljava/lang/String;

    .line 169
    sget-object v1, Lcom/com2us/module/push/Push;->appid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Lcom/com2us/module/push/Push;->appid:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v2, "senderID"

    invoke-virtual {v1, v2}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    .line 172
    sget-object v1, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_1
    sput-object v1, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/push/Push;->setUseTestServer(Landroid/content/Context;Z)V

    .line 179
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/com2us/module/push/PushConfig;->setBadge(Landroid/content/Context;I)V

    .line 181
    invoke-direct {p0, p1}, Lcom/com2us/module/push/Push;->loadConfig(Landroid/content/Context;)V

    .line 183
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/com2us/module/push/Push$1;

    invoke-direct {v2, p0, p1}, Lcom/com2us/module/push/Push$1;-><init>(Lcom/com2us/module/push/Push;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/com2us/module/push/Push;->sendThread:Ljava/lang/Thread;

    .line 192
    sget-object v1, Lcom/com2us/module/push/Push;->sendThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_2
    return-void

    .line 169
    :cond_1
    sget-object v1, Lcom/com2us/module/push/Push;->appid:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_2
    sget-object v1, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 121
    sput-boolean p0, Lcom/com2us/module/push/Push;->isInitialized:Z

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/com2us/module/push/Push;->isPush:I

    return v0
.end method

.method static synthetic access$2(Lcom/com2us/module/push/Push;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/com2us/module/push/Push;->pushCallbackRef:I

    return v0
.end method

.method static synthetic access$4(IIII)V
    .locals 0

    .prologue
    .line 127
    invoke-static {p0, p1, p2, p3}, Lcom/com2us/module/push/Push;->jniPushCallback(IIII)V

    return-void
.end method

.method private isChangedLanguage(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 845
    const-string v6, "isChangedLanguage"

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 847
    invoke-static {p1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getInstance(Landroid/content/Context;)Lcom/com2us/module/push/PushConfig$PropertyUtil;

    move-result-object v2

    .line 848
    .local v2, "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    const-string v6, "language"

    invoke-virtual {v2, v6}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, "storedLanguage":Ljava/lang/String;
    const-string v6, "country"

    invoke-virtual {v2, v6}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, "storedCountry":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "country":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isChangedLanguage - storedLanguage : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 853
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isChangedLanguage - storedCountry : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 854
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isChangedLanguage - language : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 855
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isChangedLanguage - country : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 857
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 858
    const-string v6, "isChangedLanguage : false"

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 865
    :goto_0
    return v5

    .line 861
    :cond_0
    const-string v6, "language"

    invoke-virtual {v2, v6, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v6, "country"

    invoke-virtual {v2, v6, v0}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-static {p1, v5}, Lcom/google/android/gcm/GCMRegistrar;->setRegisteredOnServer(Landroid/content/Context;Z)V

    .line 864
    const-string v5, "isChangedLanguage true"

    invoke-static {v5}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 865
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static native jniPushCallback(IIII)V
.end method

.method private static native jniPushInitialize(Lcom/com2us/module/push/Push;)V
.end method

.method private static native jniPushUninitialize()V
.end method

.method private loadConfig(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 801
    const-string v7, "loadConfig"

    invoke-static {v7}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 804
    :try_start_0
    iget-object v7, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v9, "isPush"

    invoke-virtual {v7, v9}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    move v7, v8

    :goto_0
    sput v7, Lcom/com2us/module/push/Push;->isPush:I

    .line 805
    iget-object v7, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v9, "isSound"

    invoke-virtual {v7, v9}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    move v7, v8

    :goto_1
    sput v7, Lcom/com2us/module/push/Push;->isSound:I

    .line 806
    iget-object v7, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v9, "isVib"

    invoke-virtual {v7, v9}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    move v7, v8

    :goto_2
    sput v7, Lcom/com2us/module/push/Push;->isVib:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isPush + isSound + isVib : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/com2us/module/push/Push;->isPush:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/com2us/module/push/Push;->isSound:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/com2us/module/push/Push;->isVib:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/com2us/module/push/PushResourceHandler;->load(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 828
    .local v4, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/com2us/module/push/PushResource;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 840
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/com2us/module/push/PushResourceHandler;->save(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    .line 841
    return-void

    .line 804
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/com2us/module/push/PushResource;>;"
    .end local v4    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v9, "isPush"

    invoke-virtual {v7, v9}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    .line 805
    :cond_1
    iget-object v7, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v9, "isSound"

    invoke-virtual {v7, v9}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    .line 806
    :cond_2
    iget-object v7, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v9, "isVib"

    invoke-virtual {v7, v9}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    goto :goto_2

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 812
    sput v8, Lcom/com2us/module/push/Push;->isPush:I

    .line 813
    sput v8, Lcom/com2us/module/push/Push;->isSound:I

    .line 814
    sput v8, Lcom/com2us/module/push/Push;->isVib:I

    goto :goto_3

    .line 829
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/com2us/module/push/PushResource;>;"
    .restart local v4    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/com2us/module/push/PushResource;

    .line 833
    .local v6, "res":Lcom/com2us/module/push/PushResource;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/com2us/module/push/LocalPushReceiver;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 834
    .local v2, "localpushIntent":Landroid/content/Intent;
    iget-object v7, v6, Lcom/com2us/module/push/PushResource;->noticeID:Ljava/lang/String;

    invoke-static {v2, v7, v4}, Lcom/com2us/module/push/PushResourceHandler;->putIntentExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;)Landroid/content/Intent;

    move-result-object v2

    .line 835
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v6, Lcom/com2us/module/push/PushResource;->noticeID:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 837
    .local v5, "operation":Landroid/app/PendingIntent;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 838
    .local v3, "manager":Landroid/app/AlarmManager;
    const/4 v7, 0x2

    iget-wide v8, v6, Lcom/com2us/module/push/PushResource;->elapsedRealtime:J

    iget-wide v10, v6, Lcom/com2us/module/push/PushResource;->triggerAtTime:J

    add-long/2addr v8, v10

    invoke-virtual {v3, v7, v8, v9, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_4
.end method

.method private declared-synchronized registrationAccount(Landroid/content/Context;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 698
    monitor-enter p0

    :try_start_0
    const-string v6, "registrationAccount"

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 700
    sget-boolean v6, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/com2us/module/push/Push;->isInitialized:Z

    if-nez v6, :cond_2

    .line 701
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Request registrationAccount ignore, because registrationing:("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") or not isInitialized:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/com2us/module/push/Push;->isInitialized:Z

    if-eqz v7, :cond_1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 702
    sget v4, Lcom/com2us/module/push/Push;->isPush:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :goto_1
    monitor-exit p0

    return v4

    :cond_1
    move v4, v5

    .line 701
    goto :goto_0

    .line 705
    :cond_2
    const/4 v4, 0x1

    :try_start_1
    sput-boolean v4, Lcom/com2us/module/push/Push;->isRegistrationing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    :try_start_2
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 709
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 710
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, "regId":Ljava/lang/String;
    invoke-static {p1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getInstance(Landroid/content/Context;)Lcom/com2us/module/push/PushConfig$PropertyUtil;

    move-result-object v2

    .line 713
    .local v2, "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    invoke-virtual {v2}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->loadProperty()V

    .line 714
    const-string v4, "senderID"

    invoke-virtual {v2, v4}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "oldSenderID":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "registrationAccount - RegistrationId : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 717
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "registrationAccount - old senderID : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 718
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "registrationAccount - new senderID : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 720
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 721
    :cond_3
    const-string v4, "registrationAccount : request register"

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 722
    const-string v4, "senderID"

    sget-object v5, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    .line 724
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {p1, v4}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 756
    .end local v1    # "oldSenderID":Ljava/lang/String;
    .end local v2    # "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    .end local v3    # "regId":Ljava/lang/String;
    :cond_4
    :goto_2
    :try_start_3
    sget v4, Lcom/com2us/module/push/Push;->isPush:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 727
    .restart local v1    # "oldSenderID":Ljava/lang/String;
    .restart local v2    # "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    .restart local v3    # "regId":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    :try_start_4
    sput-boolean v4, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    .line 728
    const-string v4, "registrationAccount : Already registered"

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 730
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->isRegisteredOnServer(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p1}, Lcom/com2us/module/push/Push;->isChangedLanguage(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 731
    :cond_6
    sget-object v4, Lcom/com2us/module/push/Push;->registerState:Lcom/com2us/module/push/Push$RegisterState;

    invoke-static {p1, v4, v3}, Lcom/com2us/module/push/Push;->sendToServer(Landroid/content/Context;Lcom/com2us/module/push/Push$RegisterState;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 735
    .end local v1    # "oldSenderID":Ljava/lang/String;
    .end local v2    # "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    .end local v3    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 737
    const/4 v4, 0x0

    sput-boolean v4, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "registrationAccount - Registeration failed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 698
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected static declared-synchronized sendCallback(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 620
    const-class v12, Lcom/com2us/module/push/Push;

    monitor-enter v12

    :try_start_0
    const-string v11, "sendCallback"

    invoke-static {v11}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 622
    sget-object v11, Lcom/com2us/module/push/Push;->pushCallback:Lcom/com2us/module/push/PushCallback;

    if-nez v11, :cond_1

    sget v11, Lcom/com2us/module/push/Push;->pushCallbackRef:I

    if-nez v11, :cond_1

    .line 623
    const-string v11, "sendCallback all null"

    invoke-static {v11}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    :cond_0
    monitor-exit v12

    return-void

    .line 628
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getInstance(Landroid/content/Context;)Lcom/com2us/module/push/PushConfig$PropertyUtil;

    move-result-object v5

    .line 629
    .local v5, "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    invoke-virtual {v5}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->loadProperty()V

    .line 630
    const-string v11, "receivedPush"

    invoke-virtual {v5, v11}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 631
    .local v7, "receivedPush":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "receivedPushIDs : "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 633
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x1

    if-lt v11, v13, :cond_0

    .line 635
    const-string v11, "receivedPush"

    const-string v13, ""

    invoke-virtual {v5, v11, v13}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    .line 638
    const/4 v6, -0x1

    .line 639
    .local v6, "pushID":I
    const/4 v8, -0x1

    .line 640
    .local v8, "remainPushCallback":I
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v11, "|"

    invoke-direct {v10, v7, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .local v10, "tokens":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreElements()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-eqz v11, :cond_0

    .line 643
    const/4 v4, 0x0

    .line 645
    .local v4, "isGCMPush":Z
    :try_start_2
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 646
    .local v9, "strPushID":Ljava/lang/String;
    const-string v11, "gcm"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 647
    const/4 v4, 0x1

    .line 648
    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 653
    :goto_1
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->countTokens()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    .line 661
    .end local v9    # "strPushID":Ljava/lang/String;
    :goto_2
    :try_start_3
    sget-object v11, Lcom/com2us/module/push/Push;->pushCallback:Lcom/com2us/module/push/PushCallback;

    if-eqz v11, :cond_4

    .line 662
    if-eqz v4, :cond_3

    .line 663
    sget-object v11, Lcom/com2us/module/push/Push;->pushCallback:Lcom/com2us/module/push/PushCallback;

    invoke-interface {v11, v6, v8}, Lcom/com2us/module/push/PushCallback;->onReceivedGCMPush(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 620
    .end local v4    # "isGCMPush":Z
    .end local v5    # "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    .end local v6    # "pushID":I
    .end local v7    # "receivedPush":Ljava/lang/String;
    .end local v8    # "remainPushCallback":I
    .end local v10    # "tokens":Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 650
    .restart local v4    # "isGCMPush":Z
    .restart local v5    # "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    .restart local v6    # "pushID":I
    .restart local v7    # "receivedPush":Ljava/lang/String;
    .restart local v8    # "remainPushCallback":I
    .restart local v9    # "strPushID":Ljava/lang/String;
    .restart local v10    # "tokens":Ljava/util/StringTokenizer;
    :cond_2
    const/4 v4, 0x0

    .line 651
    const/4 v11, 0x5

    :try_start_4
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    goto :goto_1

    .line 654
    .end local v9    # "strPushID":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 655
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 656
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Received PushID Error. : "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 657
    const/4 v6, -0x1

    .line 658
    const/4 v8, -0x1

    goto :goto_2

    .line 665
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v11, Lcom/com2us/module/push/Push;->pushCallback:Lcom/com2us/module/push/PushCallback;

    invoke-interface {v11, v6, v8}, Lcom/com2us/module/push/PushCallback;->onReceivedLocalPush(II)V

    goto :goto_0

    .line 668
    :cond_4
    sget v11, Lcom/com2us/module/push/Push;->pushCallbackRef:I

    if-eqz v11, :cond_6

    .line 669
    sget-object v11, Lcom/com2us/module/push/Push;->glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    if-eqz v11, :cond_5

    .line 670
    move v0, v6

    .line 671
    .local v0, "cbPushID":I
    move v1, v8

    .line 672
    .local v1, "cbremainPushCallback":I
    move v2, v4

    .line 673
    .local v2, "dummyIsGCMPush":Z
    sget-object v11, Lcom/com2us/module/push/Push;->glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    new-instance v13, Lcom/com2us/module/push/Push$3;

    invoke-direct {v13, v2, v0, v1}, Lcom/com2us/module/push/Push$3;-><init>(ZII)V

    invoke-virtual {v11, v13}, Lcom/com2us/module/view/SurfaceViewWrapper;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 686
    .end local v0    # "cbPushID":I
    .end local v1    # "cbremainPushCallback":I
    .end local v2    # "dummyIsGCMPush":Z
    :cond_5
    const-string v11, "SurfaceViewWrapper does not Exist."

    invoke-static {v11}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_6
    const-string v11, "CallbackHandler does not Exist."

    invoke-static {v11}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method protected static declared-synchronized sendToServer(Landroid/content/Context;Lcom/com2us/module/push/Push$RegisterState;Ljava/lang/String;)I
    .locals 35
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sendType"    # Lcom/com2us/module/push/Push$RegisterState;
    .param p2, "regId"    # Ljava/lang/String;

    .prologue
    .line 871
    const-class v32, Lcom/com2us/module/push/Push;

    monitor-enter v32

    :try_start_0
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "sendToServer sendType : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 873
    const/16 v25, 0x1

    .line 875
    .local v25, "ret":I
    const-string v29, ""

    .line 876
    .local v29, "verifyString":Ljava/lang/String;
    const-string v24, ""

    .line 877
    .local v24, "responseStr":Ljava/lang/String;
    const-string v4, ""

    .line 878
    .local v4, "URL":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/com2us/module/push/PushConfig;->getDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 879
    .local v3, "DID":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/push/PushConfig;->getVID(Lcom/com2us/module/push/Push$RegisterState;)Ljava/lang/String;

    move-result-object v5

    .line 888
    .local v5, "VID":Ljava/lang/String;
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 891
    .local v14, "jsonObject":Lorg/json/JSONObject;
    const-string v31, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 892
    .local v8, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    .line 893
    .local v18, "netInfo":Landroid/net/NetworkInfo;
    if-nez v18, :cond_0

    .line 894
    const-string v31, "Network Inactive"

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    const/16 v31, 0x1

    .line 1155
    :goto_0
    monitor-exit v32

    return v31

    .line 900
    :cond_0
    :try_start_1
    const-string v31, "Network Active"

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 904
    sget-boolean v31, Lcom/com2us/module/push/PushConfig;->isUseTestServer:Z

    if-eqz v31, :cond_2

    .line 905
    const-string v4, "http://10.0.2.2:8080/api/"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    :goto_1
    :try_start_2
    const-string v31, "appid"

    sget-object v33, Lcom/com2us/module/push/Push;->appid:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 917
    :try_start_3
    invoke-static {}, Lcom/com2us/module/push/Push;->$SWITCH_TABLE$com$com2us$module$push$Push$RegisterState()[I

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v33

    aget v31, v31, v33
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    packed-switch v31, :pswitch_data_0

    .line 1059
    :goto_2
    :try_start_4
    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1060
    .local v11, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v31, 0x2710

    move/from16 v0, v31

    invoke-static {v11, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1061
    const/16 v31, 0x2710

    move/from16 v0, v31

    invoke-static {v11, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1063
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 1064
    .local v7, "client":Lorg/apache/http/client/HttpClient;
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v12, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v12, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    const-string v31, "UTF-8"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v10, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    .local v10, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v31, "Content-type"

    const-string v33, "text/html"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v12, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1069
    invoke-interface {v7, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 1071
    .local v22, "response":Lorg/apache/http/HttpResponse;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "response StatusCode : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 1073
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v23

    .line 1074
    .local v23, "responseEntity":Lorg/apache/http/HttpEntity;
    invoke-static/range {v23 .. v23}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v24

    .line 1076
    invoke-static {}, Lcom/com2us/module/push/Push;->$SWITCH_TABLE$com$com2us$module$push$Push$RegisterState()[I

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v33

    aget v31, v31, v33
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    packed-switch v31, :pswitch_data_1

    .line 1154
    .end local v7    # "client":Lorg/apache/http/client/HttpClient;
    .end local v10    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v11    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    .end local v23    # "responseEntity":Lorg/apache/http/HttpEntity;
    :cond_1
    :goto_3
    :try_start_5
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "responseStr : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    move/from16 v31, v25

    .line 1155
    goto/16 :goto_0

    .line 907
    :cond_2
    sget-object v31, Lcom/com2us/module/push/Push$RegisterState;->SENDER:Lcom/com2us/module/push/Push$RegisterState;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_3

    const-string v4, "http://10.0.2.2:8080/api/"

    :goto_4
    goto/16 :goto_1

    :cond_3
    const-string v4, "http://10.0.2.2:8080/api/"

    goto :goto_4

    .line 912
    :catch_0
    move-exception v9

    .line 913
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 914
    const-string v31, "create json data Failed (appid)"

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 915
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 920
    .end local v9    # "e":Ljava/lang/Exception;
    :pswitch_0
    :try_start_6
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "sender.php"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 922
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 924
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "sender verifyString : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 925
    :catch_1
    move-exception v9

    .line 926
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 927
    const-string v31, "sender create json data Failed"

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 928
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 937
    .end local v9    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_8
    const-string v6, ""
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 939
    .local v6, "appversion":Ljava/lang/String;
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 940
    .local v13, "i":Landroid/content/pm/PackageInfo;
    iget-object v6, v13, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 946
    .end local v13    # "i":Landroid/content/pm/PackageInfo;
    :goto_5
    :try_start_a
    const-string v31, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    .line 947
    .local v27, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v19

    .line 948
    .local v19, "networkOperator":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v31

    const/16 v33, 0x5

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v26

    .line 949
    .local v26, "simOperator":Ljava/lang/String;
    :goto_6
    const-string v20, ""

    .line 951
    .local v20, "operator":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_6

    .line 952
    move-object/from16 v20, v19

    .line 953
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "get networkOperator = "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 961
    :goto_7
    const/16 v16, 0x0

    .line 962
    .local v16, "mcc":I
    const/16 v17, 0x0

    .line 964
    .local v17, "mnc":I
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v31

    if-nez v31, :cond_8

    .line 966
    const/16 v31, 0x0

    const/16 v33, 0x3

    :try_start_b
    move-object/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 967
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "mcc = "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 968
    const/16 v31, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 969
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "mnc = "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 980
    :goto_8
    const/16 v30, 0x0

    .line 981
    .local v30, "vidStatus":Ljava/lang/String;
    :try_start_c
    invoke-static {}, Lcom/com2us/module/push/Push;->$SWITCH_TABLE$com$com2us$module$push$Push$RegisterState()[I

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v33

    aget v31, v31, v33

    packed-switch v31, :pswitch_data_2

    .line 992
    :pswitch_2
    const-string v30, "register"

    .line 993
    :goto_9
    new-instance v31, Ljava/lang/StringBuilder;

    .line 996
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "register.php"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 998
    const-string v31, "udid"

    invoke-static/range {p0 .. p0}, Lcom/com2us/module/push/PushConfig;->getUDID(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 999
    invoke-static/range {p0 .. p0}, Lcom/com2us/module/push/PushConfig;->GetMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 1000
    .local v15, "mac":Ljava/lang/String;
    if-eqz v15, :cond_4

    const-string v31, "mac"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1001
    :cond_4
    const-string v31, "androidid"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "android_id"

    invoke-static/range {v33 .. v34}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1002
    const-string v31, "registration_id"

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1003
    const-string v31, "language"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v33

    sget-object v34, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1004
    const-string v31, "country"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v33

    sget-object v34, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1005
    const-string v31, "device"

    sget-object v33, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1006
    const-string v31, "libver"

    const-string v33, "2.5.5"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1007
    const-string v31, "appver"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    const-string v31, "platform"

    const-string v33, "gcm"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1009
    const-string v31, "did"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1010
    const-string v31, "vid"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1011
    const-string v31, "mcc"

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1012
    const-string v31, "mnc"

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1013
    const-string v31, "sender"

    sget-object v33, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1014
    const-string v31, "vidstatus"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1016
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1018
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "register verifyString : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 1019
    .end local v6    # "appversion":Ljava/lang/String;
    .end local v15    # "mac":Ljava/lang/String;
    .end local v16    # "mcc":I
    .end local v17    # "mnc":I
    .end local v19    # "networkOperator":Ljava/lang/String;
    .end local v20    # "operator":Ljava/lang/String;
    .end local v26    # "simOperator":Ljava/lang/String;
    .end local v27    # "tel":Landroid/telephony/TelephonyManager;
    .end local v30    # "vidStatus":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 1020
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1021
    const-string v31, "register create json data Failed"

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1022
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 941
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "appversion":Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 942
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_e
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_5

    .line 871
    .end local v3    # "DID":Ljava/lang/String;
    .end local v4    # "URL":Ljava/lang/String;
    .end local v5    # "VID":Ljava/lang/String;
    .end local v6    # "appversion":Ljava/lang/String;
    .end local v8    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v18    # "netInfo":Landroid/net/NetworkInfo;
    .end local v24    # "responseStr":Ljava/lang/String;
    .end local v25    # "ret":I
    .end local v29    # "verifyString":Ljava/lang/String;
    :catchall_0
    move-exception v31

    monitor-exit v32

    throw v31

    .line 948
    .restart local v3    # "DID":Ljava/lang/String;
    .restart local v4    # "URL":Ljava/lang/String;
    .restart local v5    # "VID":Ljava/lang/String;
    .restart local v6    # "appversion":Ljava/lang/String;
    .restart local v8    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v18    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v19    # "networkOperator":Ljava/lang/String;
    .restart local v24    # "responseStr":Ljava/lang/String;
    .restart local v25    # "ret":I
    .restart local v27    # "tel":Landroid/telephony/TelephonyManager;
    .restart local v29    # "verifyString":Ljava/lang/String;
    :cond_5
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 954
    .restart local v20    # "operator":Ljava/lang/String;
    .restart local v26    # "simOperator":Ljava/lang/String;
    :cond_6
    :try_start_f
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_7

    .line 955
    move-object/from16 v20, v26

    .line 956
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "get simOperator = "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 958
    :cond_7
    const-string v20, ""

    goto/16 :goto_7

    .line 970
    .restart local v16    # "mcc":I
    .restart local v17    # "mnc":I
    :catch_4
    move-exception v9

    .line 971
    .local v9, "e":Ljava/lang/Exception;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "mcc | mnc parse exception : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 972
    const/16 v16, 0x0

    .line 973
    const/16 v17, 0x0

    .line 975
    goto/16 :goto_8

    .line 976
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v31, "getOperator is empty"

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 983
    .restart local v30    # "vidStatus":Ljava/lang/String;
    :pswitch_3
    const-string v30, "register"

    .line 984
    goto/16 :goto_9

    .line 986
    :pswitch_4
    const-string v30, "login"

    .line 987
    goto/16 :goto_9

    .line 989
    :pswitch_5
    const-string v30, "logout"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 990
    goto/16 :goto_9

    .line 1028
    .end local v6    # "appversion":Ljava/lang/String;
    .end local v16    # "mcc":I
    .end local v17    # "mnc":I
    .end local v19    # "networkOperator":Ljava/lang/String;
    .end local v20    # "operator":Ljava/lang/String;
    .end local v26    # "simOperator":Ljava/lang/String;
    .end local v27    # "tel":Landroid/telephony/TelephonyManager;
    .end local v30    # "vidStatus":Ljava/lang/String;
    :pswitch_6
    :try_start_10
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "unregister.php"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1030
    const-string v31, "udid"

    invoke-static/range {p0 .. p0}, Lcom/com2us/module/push/PushConfig;->getUDID(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1031
    invoke-static/range {p0 .. p0}, Lcom/com2us/module/push/PushConfig;->GetMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 1032
    .restart local v15    # "mac":Ljava/lang/String;
    if-eqz v15, :cond_9

    const-string v31, "mac"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1033
    :cond_9
    const-string v31, "androidid"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "android_id"

    invoke-static/range {v33 .. v34}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1034
    const-string v31, "registration_id"

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1035
    const-string v31, "libver"

    const-string v33, "2.5.5"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1036
    const-string v31, "platform"

    const-string v33, "gcm"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1037
    const-string v31, "did"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1038
    const-string v31, "vid"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1039
    const-string v31, "sender"

    sget-object v33, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1040
    const-string v31, "vidstatus"

    const-string v33, "unregister"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1042
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1044
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "unregister verifyString : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 1045
    .end local v15    # "mac":Ljava/lang/String;
    :catch_5
    move-exception v9

    .line 1046
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_11
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1047
    const-string v31, "unregister create json data Failed"

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1048
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 1079
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v10    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v11    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    .restart local v23    # "responseEntity":Lorg/apache/http/HttpEntity;
    :pswitch_7
    :try_start_12
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1

    .line 1080
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1081
    .local v28, "toBeSenderParsed":Lorg/json/JSONObject;
    const-string v31, "sender"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_a

    const-string v31, "sender"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    :goto_a
    sput-object v31, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    .line 1082
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "senderAccount : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_3

    .line 1102
    .end local v28    # "toBeSenderParsed":Lorg/json/JSONObject;
    :catch_6
    move-exception v9

    .line 1103
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_13
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1104
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, "senderAccount : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_3

    .line 1150
    .end local v7    # "client":Lorg/apache/http/client/HttpClient;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v11    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    .end local v23    # "responseEntity":Lorg/apache/http/HttpEntity;
    :catch_7
    move-exception v9

    .line 1151
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_14
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1152
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v33, " Send To Failed"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_3

    .line 1081
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v10    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v11    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    .restart local v23    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v28    # "toBeSenderParsed":Lorg/json/JSONObject;
    :cond_a
    :try_start_15
    sget-object v31, Lcom/com2us/module/push/Push;->senderID:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_a

    .line 1112
    .end local v28    # "toBeSenderParsed":Lorg/json/JSONObject;
    :pswitch_8
    :try_start_16
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 1113
    const/16 v31, 0x0

    const/16 v33, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    const-string v33, "OK"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 1114
    const/16 v25, 0x0

    .line 1115
    invoke-static {}, Lcom/com2us/module/push/Push;->$SWITCH_TABLE$com$com2us$module$push$Push$RegisterState()[I

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v33

    aget v31, v31, v33

    packed-switch v31, :pswitch_data_3

    .line 1129
    :goto_b
    :pswitch_9
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 1131
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v33, " Send To Server OK : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_3

    .line 1138
    :catch_8
    move-exception v9

    .line 1139
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_17
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1140
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMRegistrar;->setRegisteredOnServer(Landroid/content/Context;Z)V

    .line 1141
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v33, " Send To Failed : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1142
    const/16 v25, 0x1

    .line 1144
    goto/16 :goto_3

    .line 1120
    .end local v9    # "e":Ljava/lang/Exception;
    :pswitch_a
    const/16 v31, 0x0

    :try_start_18
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMRegistrar;->setRegisteredOnServer(Landroid/content/Context;Z)V

    .line 1121
    invoke-static/range {p0 .. p0}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getInstance(Landroid/content/Context;)Lcom/com2us/module/push/PushConfig$PropertyUtil;

    move-result-object v21

    .line 1122
    .local v21, "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    const-string v31, "VID"

    invoke-static/range {p1 .. p1}, Lcom/com2us/module/push/PushConfig;->getVID(Lcom/com2us/module/push/Push$RegisterState;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const/16 v31, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1134
    .end local v21    # "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    :cond_b
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMRegistrar;->setRegisteredOnServer(Landroid/content/Context;Z)V

    .line 1135
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v33, " Send To Failed : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1136
    const/16 v25, 0x1

    goto/16 :goto_3

    .line 917
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1076
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 981
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1115
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private setUseTestServer(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useTestServer"    # Z

    .prologue
    .line 251
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/com2us/module/push/Push;->setLogged(Z)V

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUseTestServer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 255
    sput-boolean p2, Lcom/com2us/module/push/PushConfig;->isUseTestServer:Z

    .line 256
    iget-object v1, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v2, "isUseTestServer"

    if-eqz p2, :cond_2

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    .line 258
    sget-boolean v0, Lcom/com2us/module/push/PushConfig;->isUseTestServer:Z

    if-eqz v0, :cond_1

    .line 259
    const-string v0, "Push"

    const-string v1, "Push v2.5.5,  TestServer is Active."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    return-void

    .line 256
    :cond_2
    const-string v0, "false"

    goto :goto_0
.end method

.method private declared-synchronized unRegistrationAccount(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 761
    monitor-enter p0

    :try_start_0
    const-string v3, "unRegistrationAccount"

    invoke-static {v3}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 763
    sget-boolean v3, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/com2us/module/push/Push;->isInitialized:Z

    if-nez v3, :cond_2

    .line 764
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Request unRegistrationAccount ignore, because registrationing:("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") or not isInitialized:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/com2us/module/push/Push;->isInitialized:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 765
    sget v1, Lcom/com2us/module/push/Push;->isPush:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    :goto_1
    monitor-exit p0

    return v1

    :cond_1
    move v1, v2

    .line 764
    goto :goto_0

    .line 768
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/com2us/module/push/Push;->isRegistrationing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    :try_start_2
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 772
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 774
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 775
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 796
    :goto_2
    :try_start_3
    sget v1, Lcom/com2us/module/push/Push;->isPush:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 777
    :cond_3
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    .line 778
    const-string v1, "unRegistrationAccount : Already unregistered"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 782
    const/4 v1, 0x0

    sput-boolean v1, Lcom/com2us/module/push/Push;->isRegistrationing:Z

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unRegistrationAccount - Unregisteration failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 761
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 1181
    const-string v0, "destroy"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->onDestroy(Landroid/content/Context;)V

    .line 1183
    sget-object v0, Lcom/com2us/module/push/Push;->glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/com2us/module/push/Push;->jniPushUninitialize()V

    .line 1184
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1160
    const-string v0, "Push"

    return-object v0
.end method

.method public declared-synchronized getOperationGCMPushOnRunning()Z
    .locals 5

    .prologue
    .line 596
    monitor-enter p0

    const/4 v1, 0x1

    .line 597
    .local v1, "isOperation":Z
    :try_start_0
    const-string v2, "false"

    iget-object v3, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v4, "isGCMOperation"

    invoke-virtual {v3, v4}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 598
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOperationGCMPushOnRunning : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    monitor-exit p0

    return v1

    .line 597
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0

    .line 596
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getOperationLocalPushOnRunning()Z
    .locals 5

    .prologue
    .line 588
    monitor-enter p0

    const/4 v1, 0x1

    .line 589
    .local v1, "isOperation":Z
    :try_start_0
    const-string v2, "false"

    iget-object v3, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v4, "isOperation"

    invoke-virtual {v3, v4}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 590
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOperationLocalPushOnRunning : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    monitor-exit p0

    return v1

    .line 589
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0

    .line 588
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getPermission()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1188
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1189
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".permission.C2D_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 1190
    const-string v2, "com.google.android.c2dm.permission.RECEIVE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 1191
    const-string v2, "android.permission.VIBRATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 1192
    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    .line 1194
    .local v0, "pushPermission":[Ljava/lang/String;
    return-object v0
.end method

.method public getPush()I
    .locals 2

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPush : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/com2us/module/push/Push;->isPush:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 375
    sget v0, Lcom/com2us/module/push/Push;->isPush:I

    return v0
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 612
    const-string v1, "getRegistrationId"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "regId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RegistrationId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 615
    return-object v0
.end method

.method public getSound()I
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSound : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/com2us/module/push/Push;->isSound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 381
    sget v0, Lcom/com2us/module/push/Push;->isSound:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string v0, "getVersion : 2.5.5"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 246
    const-string v0, "2.5.5"

    return-object v0
.end method

.method public getVib()I
    .locals 2

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getVib : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/com2us/module/push/Push;->isVib:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 387
    sget v0, Lcom/com2us/module/push/Push;->isVib:I

    return v0
.end method

.method public declared-synchronized registerCallbackHandler(I)V
    .locals 1
    .param p1, "_pushCallbackRef"    # I

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    const-string v0, "registerCallbackHandler"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 521
    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/module/push/Push;->pushCallback:Lcom/com2us/module/push/PushCallback;

    .line 522
    sput p1, Lcom/com2us/module/push/Push;->pushCallbackRef:I

    .line 524
    sget-boolean v0, Lcom/com2us/module/push/Push;->isInitialized:Z

    if-nez v0, :cond_0

    .line 525
    const-string v0, "is not initialized"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :goto_0
    monitor-exit p0

    return-void

    .line 529
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/com2us/module/push/Push;->sendCallback(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCallbackHandler(Lcom/com2us/module/push/PushCallback;)V
    .locals 1
    .param p1, "_pushCallback"    # Lcom/com2us/module/push/PushCallback;

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    const-string v0, "registerCallbackHandler"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 537
    sput-object p1, Lcom/com2us/module/push/Push;->pushCallback:Lcom/com2us/module/push/PushCallback;

    .line 538
    const/4 v0, 0x0

    sput v0, Lcom/com2us/module/push/Push;->pushCallbackRef:I

    .line 540
    sget-boolean v0, Lcom/com2us/module/push/Push;->isInitialized:Z

    if-nez v0, :cond_0

    .line 541
    const-string v0, "is not initialized"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :goto_0
    monitor-exit p0

    return-void

    .line 545
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/com2us/module/push/Push;->sendCallback(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 17
    .param p1, "noticeID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "ticker"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "icon"    # Ljava/lang/String;
    .param p7, "sound"    # Ljava/lang/String;
    .param p8, "active"    # Ljava/lang/String;
    .param p9, "after"    # J

    .prologue
    .line 449
    monitor-enter p0

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    :try_start_0
    invoke-virtual/range {v0 .. v15}, Lcom/com2us/module/push/Push;->registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 17
    .param p1, "noticeID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "ticker"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "icon"    # Ljava/lang/String;
    .param p7, "sound"    # Ljava/lang/String;
    .param p8, "active"    # Ljava/lang/String;
    .param p9, "after"    # J
    .param p11, "broadcastAction"    # Ljava/lang/String;

    .prologue
    .line 452
    monitor-enter p0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    :try_start_0
    invoke-virtual/range {v0 .. v15}, Lcom/com2us/module/push/Push;->registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16
    .param p1, "noticeID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "bigmsg"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "icon"    # Ljava/lang/String;
    .param p8, "sound"    # Ljava/lang/String;
    .param p9, "active"    # Ljava/lang/String;
    .param p10, "after"    # J

    .prologue
    .line 455
    monitor-enter p0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    :try_start_0
    invoke-virtual/range {v0 .. v15}, Lcom/com2us/module/push/Push;->registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 16
    .param p1, "noticeID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "bigmsg"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "icon"    # Ljava/lang/String;
    .param p8, "sound"    # Ljava/lang/String;
    .param p9, "active"    # Ljava/lang/String;
    .param p10, "after"    # J
    .param p12, "broadcastAction"    # Ljava/lang/String;

    .prologue
    .line 458
    monitor-enter p0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    :try_start_0
    invoke-virtual/range {v0 .. v15}, Lcom/com2us/module/push/Push;->registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;II)V
    .locals 16
    .param p1, "noticeID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "bigmsg"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "icon"    # Ljava/lang/String;
    .param p8, "sound"    # Ljava/lang/String;
    .param p9, "active"    # Ljava/lang/String;
    .param p10, "after"    # J
    .param p12, "broadcastAction"    # Ljava/lang/String;
    .param p13, "buckettype"    # I
    .param p14, "bucketsize"    # I

    .prologue
    .line 461
    monitor-enter p0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    :try_start_0
    invoke-virtual/range {v0 .. v15}, Lcom/com2us/module/push/Push;->registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    monitor-exit p0

    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILjava/lang/String;)V
    .locals 30
    .param p1, "noticeID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "bigmsg"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "icon"    # Ljava/lang/String;
    .param p8, "sound"    # Ljava/lang/String;
    .param p9, "active"    # Ljava/lang/String;
    .param p10, "after"    # J
    .param p12, "broadcastAction"    # Ljava/lang/String;
    .param p13, "buckettype"    # I
    .param p14, "bucketsize"    # I
    .param p15, "bigpicture"    # Ljava/lang/String;

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerLocalpush start : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 465
    sget v2, Lcom/com2us/module/push/Push;->isPush:I

    if-eqz v2, :cond_0

    sget v2, Lcom/com2us/module/push/Push;->isPush:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 484
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 467
    :cond_1
    :try_start_1
    new-instance v24, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/com2us/module/push/LocalPushReceiver;

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    .local v24, "localpushIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 470
    .local v14, "elapsedRealtime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 471
    .local v16, "savedCurrentTime":J
    const-wide/16 v2, 0x3e8

    mul-long v18, p10, v2

    .line 473
    .local v18, "triggerAtTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/push/PushResourceHandler;->load(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v26

    .line 474
    .local v26, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    new-instance v2, Lcom/com2us/module/push/PushResource;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v20, p12

    move/from16 v21, p13

    move/from16 v22, p14

    move-object/from16 v23, p15

    invoke-direct/range {v2 .. v23}, Lcom/com2us/module/push/PushResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/com2us/module/push/PushResourceHandler;->save(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    .line 477
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v2, v1}, Lcom/com2us/module/push/PushResourceHandler;->putIntentExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;)Landroid/content/Intent;

    move-result-object v24

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x8000000

    move/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v27

    .line 481
    .local v27, "operation":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AlarmManager;

    .line 483
    .local v25, "manager":Landroid/app/AlarmManager;
    const/4 v2, 0x2

    add-long v4, v14, v18

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 464
    .end local v14    # "elapsedRealtime":J
    .end local v16    # "savedCurrentTime":J
    .end local v18    # "triggerAtTime":J
    .end local v24    # "localpushIntent":Landroid/content/Intent;
    .end local v25    # "manager":Landroid/app/AlarmManager;
    .end local v26    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    .end local v27    # "operation":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerLocalpush(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "pushData"    # Landroid/os/Bundle;

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v20, "registerLocalpush (pushData) : "

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 431
    const-string v4, "noticeID"

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 432
    .local v5, "noticeID":I
    const-string v4, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, "title":Ljava/lang/String;
    const-string v4, "msg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 434
    .local v7, "msg":Ljava/lang/String;
    const-string v4, "bigmsg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 435
    .local v8, "bigmsg":Ljava/lang/String;
    const-string v4, "ticker"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 436
    .local v9, "ticker":Ljava/lang/String;
    const-string v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 437
    .local v10, "type":Ljava/lang/String;
    const-string v4, "icon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 438
    .local v11, "icon":Ljava/lang/String;
    const-string v4, "sound"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 439
    .local v12, "sound":Ljava/lang/String;
    const-string v4, "active"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 440
    .local v13, "active":Ljava/lang/String;
    const-string v4, "after"

    const-wide/16 v20, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 441
    .local v14, "after":J
    const-string v4, "broadcastAction"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 442
    .local v16, "broadcastAction":Ljava/lang/String;
    const-string v4, "buckettype"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 443
    .local v17, "buckettype":I
    const-string v4, "bucketsize"

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 444
    .local v18, "bucketsize":I
    const-string v4, "bigpicture"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "bigpicture":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 446
    invoke-virtual/range {v4 .. v19}, Lcom/com2us/module/push/Push;->registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    .line 429
    .end local v5    # "noticeID":I
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "bigmsg":Ljava/lang/String;
    .end local v9    # "ticker":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "icon":Ljava/lang/String;
    .end local v12    # "sound":Ljava/lang/String;
    .end local v13    # "active":Ljava/lang/String;
    .end local v14    # "after":J
    .end local v16    # "broadcastAction":Ljava/lang/String;
    .end local v17    # "buckettype":I
    .end local v18    # "bucketsize":I
    .end local v19    # "bigpicture":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized registerLocalpush(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonStringPushData"    # Ljava/lang/String;

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerLocalpush (jsonStringPushData) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    const/4 v1, 0x0

    .line 395
    .local v1, "pushData":Lorg/json/JSONObject;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "pushData":Lorg/json/JSONObject;
    .local v2, "pushData":Lorg/json/JSONObject;
    move-object v1, v2

    .line 400
    .end local v2    # "pushData":Lorg/json/JSONObject;
    .restart local v1    # "pushData":Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/com2us/module/push/Push;->registerLocalpush(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    :cond_0
    monitor-exit p0

    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerLocalpush String param Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 391
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pushData":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized registerLocalpush(Lorg/json/JSONObject;)V
    .locals 24
    .param p1, "jsonPushData"    # Lorg/json/JSONObject;

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v21, "registerLocalpush (jsonPushData) : "

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    const/4 v5, 0x1

    .line 407
    .local v5, "noticeID":I
    :try_start_1
    const-string v4, "noticeID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 412
    :goto_0
    :try_start_2
    const-string v4, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, "title":Ljava/lang/String;
    const-string v4, "msg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, "msg":Ljava/lang/String;
    const-string v4, "bigmsg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 415
    .local v8, "bigmsg":Ljava/lang/String;
    const-string v4, "ticker"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 416
    .local v9, "ticker":Ljava/lang/String;
    const-string v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 417
    .local v10, "type":Ljava/lang/String;
    const-string v4, "icon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 418
    .local v11, "icon":Ljava/lang/String;
    const-string v4, "sound"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 419
    .local v12, "sound":Ljava/lang/String;
    const-string v4, "active"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 420
    .local v13, "active":Ljava/lang/String;
    const-string v4, "after"

    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 421
    .local v14, "after":J
    const-string v4, "broadcastAction"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 422
    .local v16, "broadcastAction":Ljava/lang/String;
    const-string v4, "buckettype"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 423
    .local v17, "buckettype":I
    const-string v4, "bucketsize"

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    .line 424
    .local v18, "bucketsize":I
    const-string v4, "bigpicture"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "bigpicture":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 426
    invoke-virtual/range {v4 .. v19}, Lcom/com2us/module/push/Push;->registerLocalpush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    .line 408
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "bigmsg":Ljava/lang/String;
    .end local v9    # "ticker":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "icon":Ljava/lang/String;
    .end local v12    # "sound":Ljava/lang/String;
    .end local v13    # "active":Ljava/lang/String;
    .end local v14    # "after":J
    .end local v16    # "broadcastAction":Ljava/lang/String;
    .end local v17    # "buckettype":I
    .end local v18    # "bucketsize":I
    .end local v19    # "bigpicture":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 409
    .local v20, "e":Lorg/json/JSONException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v21, "registerLocalpush JSONObject param Exception : "

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 403
    .end local v5    # "noticeID":I
    .end local v20    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setAppIdForIdentity(Ljava/lang/String;)V
    .locals 3
    .param p1, "_appid"    # Ljava/lang/String;

    .prologue
    .line 1174
    sput-object p1, Lcom/com2us/module/push/Push;->appid:Ljava/lang/String;

    .line 1175
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v1, "appid"

    sget-object v2, Lcom/com2us/module/push/Push;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    .line 1177
    return-void
.end method

.method public setLogged(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 1165
    sget-object v0, Lcom/com2us/module/push/PushConfig;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0, p1}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 1166
    sput-boolean p1, Lcom/com2us/module/push/PushConfig;->LOG:Z

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Push Module Version : v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/com2us/module/push/Push;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v1, "log"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    .line 1170
    return-void
.end method

.method public declared-synchronized setOperationGCMPushOnRunning(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOperationGCMPushOnRunning : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v2, "isGCMOperation"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    monitor-exit p0

    return-void

    .line 582
    :cond_0
    :try_start_1
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOperationLocalPushOnRunning(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOperationLocalPushOnRunning : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v2, "isOperation"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    .line 575
    :cond_0
    :try_start_1
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOperationOnRunning(Z)V
    .locals 3
    .param p1, "b"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOperationOnRunning : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v2, "isOperation"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v2, "isGCMOperation"

    if-eqz p1, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    .line 567
    :cond_0
    :try_start_1
    const-string v0, "false"

    goto :goto_0

    .line 568
    :cond_1
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPush(I)V
    .locals 3
    .param p1, "push"    # I

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPush : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 267
    sput p1, Lcom/com2us/module/push/Push;->isPush:I

    .line 269
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v1, "isPush"

    sget v2, Lcom/com2us/module/push/Push;->isPush:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    .line 272
    packed-switch p1, :pswitch_data_0

    .line 333
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "storedPush : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/com2us/module/push/Push;->isPush:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 275
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/com2us/module/push/Push;->unRegistrationAccount(Landroid/content/Context;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 280
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/com2us/module/push/Push;->registrationAccount(Landroid/content/Context;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setSound(I)V
    .locals 3
    .param p1, "sound"    # I

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSound : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 346
    sput p1, Lcom/com2us/module/push/Push;->isSound:I

    .line 348
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v1, "isSound"

    sget v2, Lcom/com2us/module/push/Push;->isSound:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "storedSound : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/com2us/module/push/Push;->isSound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVID(Ljava/lang/String;)V
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string v2, "setVID"

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VID : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 210
    invoke-static {p1}, Lcom/com2us/module/push/PushConfig;->setVID(Ljava/lang/String;)V

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/com2us/module/push/Push$RegisterState;->LOGOUT:Lcom/com2us/module/push/Push$RegisterState;

    :goto_0
    sput-object v2, Lcom/com2us/module/push/Push;->registerState:Lcom/com2us/module/push/Push$RegisterState;

    .line 214
    iget-object v2, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v3, "VID"

    invoke-virtual {v2, v3}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "storedVID":Ljava/lang/String;
    sget-boolean v2, Lcom/com2us/module/push/Push;->isInitialized:Z

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gcm/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/com2us/module/push/Push$2;

    invoke-direct {v2, p0}, Lcom/com2us/module/push/Push$2;-><init>(Lcom/com2us/module/push/Push;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    .local v0, "registrationThreadForVID":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 240
    .end local v0    # "registrationThreadForVID":Ljava/lang/Thread;
    :goto_1
    return-void

    .line 212
    .end local v1    # "storedVID":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/com2us/module/push/Push$RegisterState;->LOGIN:Lcom/com2us/module/push/Push$RegisterState;

    goto :goto_0

    .line 236
    .restart local v1    # "storedVID":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registrationThreadForVID ignore. because : isInitialized : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/com2us/module/push/Push;->isInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    const-string v3, ", stored VID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    const-string v3, ", input VID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized setVib(I)V
    .locals 3
    .param p1, "vib"    # I

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVib : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 364
    sput p1, Lcom/com2us/module/push/Push;->isVib:I

    .line 366
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const-string v1, "isVib"

    sget v2, Lcom/com2us/module/push/Push;->isVib:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/com2us/module/push/Push;->propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "storedVib : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/com2us/module/push/Push;->isVib:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unRegisterAllLocalpush()V
    .locals 3

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    const-string v2, "unRegisterAllLocalpush start"

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/push/PushResourceHandler;->load(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 512
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/com2us/module/push/PushResource;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 515
    monitor-exit p0

    return-void

    .line 513
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/com2us/module/push/PushResource;

    iget-object v2, v2, Lcom/com2us/module/push/PushResource;->pushID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/com2us/module/push/Push;->unRegisterLocalpush(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 508
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/com2us/module/push/PushResource;>;"
    .end local v1    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unRegisterCallbackHandler()V
    .locals 1

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    const-string v0, "unRegisterCallbackHandler"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 554
    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/module/push/Push;->pushCallback:Lcom/com2us/module/push/PushCallback;

    .line 555
    const/4 v0, 0x0

    sput v0, Lcom/com2us/module/push/Push;->pushCallbackRef:I

    .line 557
    sget-boolean v0, Lcom/com2us/module/push/Push;->isInitialized:Z

    if-nez v0, :cond_0

    .line 558
    const-string v0, "is not initialized"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    :cond_0
    monitor-exit p0

    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unRegisterLocalpush(I)V
    .locals 6
    .param p1, "pushID"    # I

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unRegisterLocalpush start : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 489
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/com2us/module/push/LocalPushReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    .local v3, "unRegiPushIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-static {v4, p1, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 492
    .local v2, "operation":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 494
    .local v0, "manager":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/push/PushResourceHandler;->load(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 495
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v4, p0, Lcom/com2us/module/push/Push;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/com2us/module/push/PushResourceHandler;->save(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    .line 498
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    .line 488
    .end local v0    # "manager":Landroid/app/AlarmManager;
    .end local v1    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    .end local v2    # "operation":Landroid/app/PendingIntent;
    .end local v3    # "unRegiPushIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
