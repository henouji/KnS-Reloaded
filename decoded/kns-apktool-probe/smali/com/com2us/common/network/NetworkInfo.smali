.class public final Lcom/com2us/common/network/NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/common/network/NetworkInfo$ENetworkType;
    }
.end annotation


# static fields
.field private static final DEFAULT_TRY_COUNT:I = 0x14

.field private static final DEFAULT_TRY_DELAY:I = 0x1f4

.field private static final MAC_ADDRESS_LENGTH:I = 0x11

.field private static final MAC_ADDRESS_SEPARATOR_LENGTH:I = 0x5

.field private static mMacAddress:Ljava/lang/String;

.field private static mNonModifiedMacAddress:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _getMacAddress(Landroid/content/Context;IJ)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tryCount"    # I
    .param p2, "tryDelay"    # J

    .prologue
    .line 153
    :try_start_0
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 154
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 156
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "macAddress":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 160
    invoke-static {v0}, Lcom/com2us/common/network/NetworkInfo;->isEnableWifi(Landroid/net/ConnectivityManager;)Z

    move-result v1

    .line 161
    .local v1, "currentState":Z
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 163
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, p1, :cond_2

    .line 181
    :cond_0
    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "currentState":Z
    .end local v3    # "i":I
    .end local v4    # "macAddress":Ljava/lang/String;
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_1
    return-object v4

    .line 167
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v1    # "currentState":Z
    .restart local v3    # "i":I
    .restart local v4    # "macAddress":Ljava/lang/String;
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    :try_start_1
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 175
    if-nez v4, :cond_0

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 185
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "currentState":Z
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "macAddress":Ljava/lang/String;
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v2

    .line 187
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static compile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "temp":Ljava/lang/String;
    const-string p0, ""

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 146
    return-object p0

    .line 135
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 136
    .local v1, "currentChar":C
    const/16 v4, 0x30

    if-lt v1, v4, :cond_1

    const/16 v4, 0x39

    if-le v1, v4, :cond_2

    :cond_1
    const/16 v4, 0x61

    if-lt v1, v4, :cond_3

    const/16 v4, 0x66

    if-gt v1, v4, :cond_3

    .line 138
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 140
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_3

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getActiveNetwork(Landroid/net/ConnectivityManager;)Lcom/com2us/common/network/NetworkInfo$ENetworkType;
    .locals 5
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 200
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_3

    .line 202
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 204
    .local v0, "allNetworkInfo":[Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 225
    :cond_0
    if-nez v2, :cond_3

    .line 227
    sget-object v3, Lcom/com2us/common/network/NetworkInfo$ENetworkType;->NONE:Lcom/com2us/common/network/NetworkInfo$ENetworkType;

    .line 244
    .end local v0    # "allNetworkInfo":[Landroid/net/NetworkInfo;
    .end local v1    # "i":I
    :goto_1
    return-object v3

    .line 206
    .restart local v0    # "allNetworkInfo":[Landroid/net/NetworkInfo;
    .restart local v1    # "i":I
    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 219
    :cond_2
    :goto_2
    :pswitch_0
    if-nez v2, :cond_0

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :pswitch_1
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    aget-object v2, v0, v1

    goto :goto_2

    .line 231
    .end local v0    # "allNetworkInfo":[Landroid/net/NetworkInfo;
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 233
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 235
    sget-object v3, Lcom/com2us/common/network/NetworkInfo$ENetworkType;->WIFI:Lcom/com2us/common/network/NetworkInfo$ENetworkType;

    goto :goto_1

    .line 239
    :cond_4
    sget-object v3, Lcom/com2us/common/network/NetworkInfo$ENetworkType;->MOBILE:Lcom/com2us/common/network/NetworkInfo$ENetworkType;

    goto :goto_1

    .line 244
    :cond_5
    sget-object v3, Lcom/com2us/common/network/NetworkInfo$ENetworkType;->NONE:Lcom/com2us/common/network/NetworkInfo$ENetworkType;

    goto :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/com2us/common/network/NetworkInfo;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getNonModifiedMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/com2us/common/network/NetworkInfo;->mNonModifiedMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static isEnableWifi(Landroid/net/ConnectivityManager;)Z
    .locals 2
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 193
    invoke-static {p0}, Lcom/com2us/common/network/NetworkInfo;->getActiveNetwork(Landroid/net/ConnectivityManager;)Lcom/com2us/common/network/NetworkInfo$ENetworkType;

    move-result-object v0

    sget-object v1, Lcom/com2us/common/network/NetworkInfo$ENetworkType;->WIFI:Lcom/com2us/common/network/NetworkInfo$ENetworkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static store(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 32
    const-string v1, "Non-Modified-MacAddress"

    invoke-static {v1}, Lcom/com2us/common/data/CommonProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/com2us/common/network/NetworkInfo;->mNonModifiedMacAddress:Ljava/lang/String;

    .line 33
    const-string v1, "MacAddress"

    invoke-static {v1}, Lcom/com2us/common/data/CommonProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/com2us/common/network/NetworkInfo;->mMacAddress:Ljava/lang/String;

    .line 35
    sget-object v1, Lcom/com2us/common/network/NetworkInfo;->mMacAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/com2us/common/network/NetworkInfo;->varifyMacAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/com2us/common/network/NetworkInfo;->mNonModifiedMacAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/com2us/common/network/NetworkInfo;->varifyNonModifiedMacAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    :cond_0
    sput-object v2, Lcom/com2us/common/network/NetworkInfo;->mMacAddress:Ljava/lang/String;

    .line 38
    sput-object v2, Lcom/com2us/common/network/NetworkInfo;->mNonModifiedMacAddress:Ljava/lang/String;

    .line 41
    :cond_1
    sget-object v1, Lcom/com2us/common/network/NetworkInfo;->mMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/com2us/common/network/NetworkInfo;->mNonModifiedMacAddress:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 43
    :cond_2
    const/16 v1, 0x14

    const-wide/16 v2, 0x1f4

    invoke-static {p0, v1, v2, v3}, Lcom/com2us/common/network/NetworkInfo;->_getMacAddress(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "nonModifiedMacAddress":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 47
    sget-object v1, Lcom/com2us/common/network/NetworkInfo;->mNonModifiedMacAddress:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 49
    sput-object v0, Lcom/com2us/common/network/NetworkInfo;->mNonModifiedMacAddress:Ljava/lang/String;

    .line 50
    const-string v1, "Non-Modified-MacAddress"

    sget-object v2, Lcom/com2us/common/network/NetworkInfo;->mNonModifiedMacAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/com2us/common/data/CommonProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    sget-object v1, Lcom/com2us/common/network/NetworkInfo;->mMacAddress:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 55
    invoke-static {v0}, Lcom/com2us/common/network/NetworkInfo;->compile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/com2us/common/network/NetworkInfo;->mMacAddress:Ljava/lang/String;

    .line 56
    const-string v1, "MacAddress"

    sget-object v2, Lcom/com2us/common/network/NetworkInfo;->mMacAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/com2us/common/data/CommonProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_4
    invoke-static {p0}, Lcom/com2us/common/data/CommonProperties;->storeProperties(Landroid/content/Context;)V

    .line 62
    .end local v0    # "nonModifiedMacAddress":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static varifyMacAddress(Ljava/lang/String;)Z
    .locals 5
    .param p0, "macAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    if-eq v3, v4, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 99
    const/4 v2, 0x1

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 84
    .local v0, "currentChar":C
    add-int/lit8 v3, v1, 0x1

    rem-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_4

    .line 86
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_0

    .line 81
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    :cond_4
    const/16 v3, 0x30

    if-lt v0, v3, :cond_5

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    .line 92
    :cond_5
    const/16 v3, 0x61

    if-lt v0, v3, :cond_0

    const/16 v3, 0x66

    if-le v0, v3, :cond_3

    goto :goto_0
.end method

.method private static varifyNonModifiedMacAddress(Ljava/lang/String;)Z
    .locals 6
    .param p0, "nonModifiedMacAddress"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 104
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v3

    .line 109
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 110
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 112
    .local v2, "separator":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 124
    const/4 v3, 0x1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 115
    .local v0, "currentChar":C
    add-int/lit8 v4, v1, 0x1

    rem-int/lit8 v4, v4, 0x3

    if-nez v4, :cond_3

    if-eq v0, v2, :cond_5

    .line 116
    :cond_3
    const/16 v4, 0x30

    if-lt v0, v4, :cond_4

    const/16 v4, 0x39

    if-le v0, v4, :cond_5

    .line 117
    :cond_4
    const/16 v4, 0x61

    if-lt v0, v4, :cond_0

    const/16 v4, 0x66

    if-gt v0, v4, :cond_0

    .line 112
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
