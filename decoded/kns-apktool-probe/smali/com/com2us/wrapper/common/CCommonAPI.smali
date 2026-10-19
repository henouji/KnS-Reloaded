.class public Lcom/com2us/wrapper/common/CCommonAPI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/common/CCommonAPI$1;
    }
.end annotation


# static fields
.field private static a:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/wrapper/common/CCommonAPI;->a:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Lcom/com2us/common/security/Crypto;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1

    invoke-static {p0}, Lcom/com2us/common/security/Crypto;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/com2us/common/security/Crypto;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1

    invoke-static {p0}, Lcom/com2us/common/security/Crypto;->encodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64toString([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/com2us/common/security/Crypto;->encodeBase64toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/com2us/common/security/Crypto;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateCRC32([B)J
    .locals 2

    invoke-static {p0}, Lcom/com2us/common/security/Crypto;->generateCRC32([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static generateCRC32toHexString([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/com2us/common/security/Crypto;->generateCRC32toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateHash([BLjava/lang/String;)[B
    .locals 1

    invoke-static {p0, p1}, Lcom/com2us/common/security/Hash;->generateHash([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateHashtoHexString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/com2us/common/security/Hash;->generateHashtoHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActiveNetwork()I
    .locals 2

    sget-object v0, Lcom/com2us/wrapper/common/CCommonAPI$1;->a:[I

    sget-object v1, Lcom/com2us/wrapper/common/CCommonAPI;->a:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/com2us/common/network/NetworkInfo;->getActiveNetwork(Landroid/net/ConnectivityManager;)Lcom/com2us/common/network/NetworkInfo$ENetworkType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/common/network/NetworkInfo$ENetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/com2us/common/network/NetworkInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNonModifiedMacAddress()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/com2us/common/network/NetworkInfo;->getNonModifiedMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/com2us/wrapper/common/CCommonAPI;->a:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/com2us/wrapper/common/CCommonAPI;->nativeInitialize()V

    return-void
.end method

.method private static native nativeInitialize()V
.end method

.method private static native nativeUninitialize()V
.end method

.method public static uninitialize()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/wrapper/common/CCommonAPI;->a:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/com2us/wrapper/common/CCommonAPI;->nativeUninitialize()V

    return-void
.end method
