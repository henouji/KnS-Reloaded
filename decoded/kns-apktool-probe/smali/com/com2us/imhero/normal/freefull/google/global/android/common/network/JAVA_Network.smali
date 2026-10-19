.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;
.super Ljava/lang/Object;
.source "JAVA_Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;,
        Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;
    }
.end annotation


# static fields
.field public static i32NetProtocol:I

.field private static java_Network:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;


# instance fields
.field headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

.field protected mainActivity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;

    invoke-direct {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;-><init>()V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->java_Network:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;

    .line 267
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetNetProtocol()I
    .locals 1

    .prologue
    .line 308
    sget v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->i32NetProtocol:I

    return v0
.end method

.method public static getInstance()Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->java_Network:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;

    return-object v0
.end method


# virtual methods
.method public Request(Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;)Z
    .locals 3
    .param p1, "ptSend"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;

    .prologue
    .line 292
    iget v2, p1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;->i32SendProtocol:I

    invoke-static {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;->getProtocol(I)Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;

    move-result-object v0

    .line 298
    .local v0, "netState":Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;
    new-instance v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;

    invoke-direct {v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;-><init>()V

    .line 299
    .local v1, "post":Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    invoke-virtual {v1, p1, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->request(Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;)Z

    .line 301
    iget v2, p1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;->i32SendProtocol:I

    invoke-static {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;->getProtocol(I)Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;->getOrder()I

    move-result v2

    sput v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->i32NetProtocol:I

    .line 302
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_SENDING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->getOrder()I

    move-result v2

    invoke-static {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetNetState(I)V

    .line 303
    const/4 v2, 0x1

    return v2
.end method

.method public SetHeaderInfo(Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;)V
    .locals 2
    .param p1, "ptHeaderInfo"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    iget v1, p1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->i32UserNo:I

    iput v1, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->i32UserNo:I

    .line 283
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    iget-object v1, p1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strBundleID:Ljava/lang/String;

    iput-object v1, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strBundleID:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    iget-object v1, p1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strClientVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strClientVersion:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    iget-object v1, p1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strLanguage:Ljava/lang/String;

    iput-object v1, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strLanguage:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    iget-object v1, p1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strSessionKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strSessionKey:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setMainActivity(Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;)V
    .locals 1
    .param p1, "mainActivity"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->mainActivity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    .line 272
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    invoke-direct {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;-><init>()V

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    .line 273
    return-void
.end method
