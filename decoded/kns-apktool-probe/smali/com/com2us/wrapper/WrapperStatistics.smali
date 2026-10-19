.class public Lcom/com2us/wrapper/WrapperStatistics;
.super Ljava/lang/Object;
.source "WrapperStatistics.java"


# static fields
.field private static agentVersion:I = 0x0

.field private static final flurryVersion:Ljava/lang/String; = "vAndroid.3.2.1"

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/wrapper/WrapperStatistics;->mContext:Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/com2us/wrapper/WrapperStatistics;->agentVersion:I

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FlurryEnd()V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/com2us/wrapper/WrapperStatistics;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v0, Lcom/com2us/wrapper/WrapperStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static FlurrySend(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 5
    .param p0, "strEventID"    # Ljava/lang/String;
    .param p1, "i32DataNum"    # I
    .param p2, "strData"    # [Ljava/lang/String;

    .prologue
    .line 57
    sget-object v3, Lcom/com2us/wrapper/WrapperStatistics;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, p1, :cond_2

    .line 75
    sget v3, Lcom/com2us/wrapper/WrapperStatistics;->agentVersion:I

    const/16 v4, 0x82

    if-ge v3, v4, :cond_3

    .line 78
    invoke-static {p0, v2}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 72
    :cond_2
    mul-int/lit8 v1, v0, 0x2

    .line 73
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    aget-object v4, p2, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_3
    invoke-static {p0, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static FlurrySetAge(I)V
    .locals 1
    .param p0, "age"    # I

    .prologue
    .line 89
    sget-object v0, Lcom/com2us/wrapper/WrapperStatistics;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->setAge(I)V

    goto :goto_0
.end method

.method public static FlurrySetGender(B)V
    .locals 1
    .param p0, "gender"    # B

    .prologue
    .line 99
    sget-object v0, Lcom/com2us/wrapper/WrapperStatistics;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 104
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 114
    :goto_1
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->setGender(B)V

    goto :goto_0

    .line 107
    :pswitch_0
    const/4 p0, 0x0

    .line 108
    goto :goto_1

    .line 110
    :pswitch_1
    const/4 p0, 0x1

    goto :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static FlurryStart(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "strAppID"    # Ljava/lang/String;
    .param p1, "isRocation"    # Z

    .prologue
    const/4 v2, 0x1

    .line 34
    sget-object v0, Lcom/com2us/wrapper/WrapperStatistics;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->setUseHttps(Z)V

    .line 42
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->setReportLocation(Z)V

    .line 45
    sget v0, Lcom/com2us/wrapper/WrapperStatistics;->agentVersion:I

    const/16 v1, 0x82

    if-le v0, v1, :cond_1

    .line 47
    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    .line 48
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setLogLevel(I)V

    .line 49
    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->setLogEvents(Z)V

    .line 52
    :cond_1
    sget-object v0, Lcom/com2us/wrapper/WrapperStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getFlurryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "vAndroid.3.2.1"

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getAgentVersion()I

    move-result v0

    sput v0, Lcom/com2us/wrapper/WrapperStatistics;->agentVersion:I

    .line 29
    sput-object p0, Lcom/com2us/wrapper/WrapperStatistics;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method
