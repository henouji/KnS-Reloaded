.class public Lcom/com2us/module/util/WrapperUtility;
.super Ljava/lang/Object;
.source "WrapperUtility.java"


# static fields
.field private static final MAC_ADDRESS_LENGTH:I = 0x11

.field private static isMacAddressLoaded:Z

.field private static logger:Lcom/com2us/module/util/Logger;

.field private static mMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "ModuleManager"

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/util/WrapperUtility;->logger:Lcom/com2us/module/util/Logger;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/module/util/WrapperUtility;->isMacAddressLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetActiveWifi(Landroid/net/ConnectivityManager;)C
    .locals 5
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 409
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 410
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 412
    .local v1, "ret":Z
    if-nez v0, :cond_0

    .line 417
    :goto_0
    return v3

    .line 415
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 417
    :goto_1
    if-eqz v1, :cond_2

    :goto_2
    int-to-char v3, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 415
    goto :goto_1

    :cond_2
    move v2, v3

    .line 417
    goto :goto_2
.end method

.method private static GetKey([B)[B
    .locals 6
    .param p0, "suggestedKey"    # [B

    .prologue
    .line 529
    move-object v3, p0

    .line 530
    .local v3, "kRaw":[B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v2, "kList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x80

    if-lt v1, v4, :cond_0

    .line 537
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [B

    .line 538
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 541
    return-object v0

    .line 534
    .end local v0    # "byteArray":[B
    :cond_0
    div-int/lit8 v4, v1, 0x8

    array-length v5, v3

    rem-int/2addr v4, v5

    aget-byte v4, v3, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 539
    .restart local v0    # "byteArray":[B
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v0, v1

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static IsCracked()Z
    .locals 6

    .prologue
    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "ret":Z
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/su"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "/system/app/Superuser.apk"

    aput-object v5, v3, v4

    .line 47
    .local v3, "rootingInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_0

    .line 53
    return v2

    .line 49
    :cond_0
    new-instance v0, Ljava/io/File;

    aget-object v4, v3, v1

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    or-int/2addr v2, v4

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static _getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 240
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "macAddress":Ljava/lang/String;
    sget-object v2, Lcom/com2us/module/util/WrapperUtility;->logger:Lcom/com2us/module/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[WrapperUtility][getMacAddress]"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 242
    return-object v0
.end method

.method public static compileMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 590
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "temp":Ljava/lang/String;
    const-string p0, ""

    .line 592
    const/4 v0, 0x0

    .line 594
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 607
    return-object p0

    .line 596
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 597
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

    .line 599
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 600
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

    .line 601
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_3

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 594
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "keyData"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 505
    :try_start_0
    const-string v4, "AES"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 507
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/util/WrapperUtility;->GetKey([B)[B

    move-result-object v3

    .line 513
    .local v3, "privateKey":[B
    :goto_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, v3, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 514
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 515
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 517
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 524
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "privateKey":[B
    :goto_1
    return-object v4

    .line 511
    :cond_0
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "privateKey":[B
    goto :goto_0

    .line 519
    .end local v3    # "privateKey":[B
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "keyData"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 470
    :try_start_0
    const-string v4, "AES"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 472
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/util/WrapperUtility;->GetKey([B)[B

    move-result-object v3

    .line 478
    .local v3, "privateKey":[B
    :goto_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, v3, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 479
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 480
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 482
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 489
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "privateKey":[B
    :goto_1
    return-object v4

    .line 476
    :cond_0
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "privateKey":[B
    goto :goto_0

    .line 484
    .end local v3    # "privateKey":[B
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static generateCRC32([B)J
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 388
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 389
    .local v0, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 390
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public static generateCRC32toHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 400
    const-string v0, "%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/com2us/module/util/WrapperUtility;->generateCRC32([B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHash([BLjava/lang/String;)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 553
    const/4 v1, 0x0

    .line 555
    .local v1, "ret":[B
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 556
    .local v2, "verify":Ljava/security/MessageDigest;
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 557
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    .line 563
    .end local v2    # "verify":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getHashHex([BLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 575
    const-string v2, ""

    .line 576
    .local v2, "ret":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/com2us/module/util/WrapperUtility;->getHash([BLjava/lang/String;)[B

    move-result-object v0

    .line 577
    .local v0, "hash":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 580
    return-object v2

    .line 578
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v0, v1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 67
    .local v2, "isCommonTaskRunnerStarted":Z
    sget-object v5, Lcom/com2us/module/util/WrapperUtility;->mMacAddress:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 69
    :try_start_0
    const-string v5, "com.com2us.common.CommonTaskRunner"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "isStarted"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 71
    .local v4, "me":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 81
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "me":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v2, :cond_1

    .line 83
    :try_start_1
    const-string v5, "com.com2us.common.network.NetworkInfo"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getMacAddress"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 85
    .restart local v4    # "me":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/com2us/module/util/WrapperUtility;->mMacAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "me":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    sget-object v5, Lcom/com2us/module/util/WrapperUtility;->mMacAddress:Ljava/lang/String;

    return-object v5

    .line 75
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 90
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v5, "com.com2us.wrapper.WrapperJinterface"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getMacAddressEx"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 99
    .restart local v4    # "me":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/com2us/module/util/WrapperUtility;->mMacAddress:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 114
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "me":Ljava/lang/reflect/Method;
    :cond_2
    :goto_2
    sget-object v5, Lcom/com2us/module/util/WrapperUtility;->mMacAddress:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 115
    invoke-static {p0}, Lcom/com2us/module/util/WrapperUtility;->_getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "macAddress":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 117
    invoke-static {p0, v3}, Lcom/com2us/module/util/WrapperUtility;->saveMacAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/com2us/module/util/WrapperUtility;->mMacAddress:Ljava/lang/String;

    goto :goto_1

    .line 100
    .end local v3    # "macAddress":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-boolean v5, Lcom/com2us/module/util/WrapperUtility;->isMacAddressLoaded:Z

    if-nez v5, :cond_2

    .line 105
    invoke-static {p0}, Lcom/com2us/module/util/WrapperUtility;->loadMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/com2us/module/util/WrapperUtility;->mMacAddress:Ljava/lang/String;

    .line 106
    const/4 v5, 0x1

    sput-boolean v5, Lcom/com2us/module/util/WrapperUtility;->isMacAddressLoaded:Z

    goto :goto_2

    .line 109
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    goto :goto_1

    .line 72
    :catch_5
    move-exception v5

    goto :goto_0
.end method

.method private static initializeCommonData(Landroid/app/Activity;II)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tryCount"    # I
    .param p2, "tryDelay"    # I

    .prologue
    .line 137
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "CommonData.dat"

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v1, "commonDataFile":Ljava/io/File;
    invoke-static {p0, v1}, Lcom/com2us/module/util/WrapperUtility;->loadCommonData(Landroid/content/Context;Ljava/io/File;)Ljava/util/Properties;

    move-result-object v2

    .line 139
    .local v2, "loadedCommonProperties":Ljava/util/Properties;
    const-string v6, "MacAddress"

    invoke-virtual {v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/com2us/module/util/WrapperUtility;->mMacAddress:Ljava/lang/String;

    .line 141
    sget-object v6, Lcom/com2us/module/util/WrapperUtility;->mMacAddress:Ljava/lang/String;

    invoke-static {v6}, Lcom/com2us/module/util/WrapperUtility;->varifyMacAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 143
    const/4 v6, 0x0

    sput-object v6, Lcom/com2us/module/util/WrapperUtility;->mMacAddress:Ljava/lang/String;

    .line 146
    :cond_0
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 147
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 149
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "macAddress":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 197
    invoke-static {v3}, Lcom/com2us/module/util/WrapperUtility;->compileMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 201
    .local v4, "saveCommonProperties":Ljava/util/Properties;
    const-string v6, "MacAddress"

    invoke-virtual {v4, v6, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    invoke-static {p0, v4, v1}, Lcom/com2us/module/util/WrapperUtility;->saveCommonData(Landroid/content/Context;Ljava/util/Properties;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 206
    sput-object v3, Lcom/com2us/module/util/WrapperUtility;->mMacAddress:Ljava/lang/String;

    .line 210
    .end local v4    # "saveCommonProperties":Ljava/util/Properties;
    :cond_1
    return-void
.end method

.method private static loadCommonData(Landroid/content/Context;Ljava/io/File;)Ljava/util/Properties;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 278
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 280
    .local v8, "properties":Ljava/util/Properties;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 282
    const/4 v6, 0x0

    .line 286
    .local v6, "fis":Ljava/io/FileInputStream;
    const/16 v9, 0x8

    :try_start_0
    new-array v2, v9, [B

    .line 287
    .local v2, "crc32":[B
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    add-int/lit8 v9, v9, -0x8

    new-array v5, v9, [B

    .line 289
    .local v5, "encryptedData":[B
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    const/16 v10, 0x8

    :try_start_1
    invoke-virtual {v7, v2, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    .line 291
    invoke-virtual {v7, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "androidId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 297
    :goto_0
    const-string v9, "AES"

    invoke-static {v9, v0, v5}, Lcom/com2us/module/util/WrapperUtility;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v3

    .line 298
    .local v3, "decryptedData":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 300
    .local v1, "bytebuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    invoke-static {v3}, Lcom/com2us/module/util/WrapperUtility;->generateCRC32([B)J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    .line 302
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 316
    :cond_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 327
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "crc32":[B
    .end local v3    # "decryptedData":[B
    .end local v5    # "encryptedData":[B
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-object v8

    .line 295
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v2    # "crc32":[B
    .restart local v5    # "encryptedData":[B
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    const-string v0, "CommonData.dat"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 305
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v2    # "crc32":[B
    .end local v5    # "encryptedData":[B
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 307
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 318
    :catch_1
    move-exception v4

    .line 320
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 313
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 316
    :goto_3
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 322
    :goto_4
    throw v9

    .line 318
    :catch_2
    move-exception v4

    .line 320
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 318
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "crc32":[B
    .restart local v3    # "decryptedData":[B
    .restart local v5    # "encryptedData":[B
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    .line 320
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 313
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "decryptedData":[B
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 305
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static loadMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "CommonData.dat"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v0, "commonDataFile":Ljava/io/File;
    invoke-static {p0, v0}, Lcom/com2us/module/util/WrapperUtility;->loadCommonData(Landroid/content/Context;Ljava/io/File;)Ljava/util/Properties;

    move-result-object v1

    .line 222
    .local v1, "loadedCommonProperties":Ljava/util/Properties;
    const-string v3, "MacAddress"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "macAddress":Ljava/lang/String;
    invoke-static {v2}, Lcom/com2us/module/util/WrapperUtility;->varifyMacAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    const/4 v2, 0x0

    .line 228
    :cond_0
    sget-object v3, Lcom/com2us/module/util/WrapperUtility;->logger:Lcom/com2us/module/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[WrapperUtility][loadMacAddress]"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 229
    return-object v2
.end method

.method private static saveCommonData(Landroid/content/Context;Ljava/util/Properties;Ljava/io/File;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 338
    const/4 v6, 0x0

    .line 342
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 343
    .local v3, "data":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    invoke-virtual {p1, v3, v8}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 346
    const/16 v8, 0x8

    new-array v2, v8, [B

    .line 347
    .local v2, "crc32":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 348
    .local v1, "bytebuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcom/com2us/module/util/WrapperUtility;->generateCRC32([B)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "androidId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 353
    :goto_0
    const-string v8, "AES"

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v8, v0, v9}, Lcom/com2us/module/util/WrapperUtility;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v5

    .line 356
    .local v5, "encryptData":[B
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v7, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 358
    invoke-virtual {v7, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 371
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 361
    :goto_1
    const/4 v8, 0x1

    move-object v6, v7

    .line 379
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "crc32":[B
    .end local v3    # "data":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "encryptData":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    return v8

    .line 351
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "crc32":[B
    .restart local v3    # "data":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_3
    const-string v0, "CommonData.dat"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 373
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "encryptData":[B
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 375
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 363
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "crc32":[B
    .end local v3    # "data":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "encryptData":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 365
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 371
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 379
    :goto_4
    const/4 v8, 0x0

    goto :goto_2

    .line 373
    :catch_2
    move-exception v4

    .line 375
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 368
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 371
    :goto_5
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 377
    :goto_6
    throw v8

    .line 373
    :catch_3
    move-exception v4

    .line 375
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 368
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "crc32":[B
    .restart local v3    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "encryptData":[B
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 363
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private static saveMacAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_macAddress"    # Ljava/lang/String;

    .prologue
    .line 253
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "CommonData.dat"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    .local v0, "commonDataFile":Ljava/io/File;
    invoke-static {p1}, Lcom/com2us/module/util/WrapperUtility;->compileMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "macAddress":Ljava/lang/String;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 259
    .local v2, "saveCommonProperties":Ljava/util/Properties;
    const-string v3, "MacAddress"

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    invoke-static {p0, v2, v0}, Lcom/com2us/module/util/WrapperUtility;->saveCommonData(Landroid/content/Context;Ljava/util/Properties;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    const/4 v1, 0x0

    .line 266
    :cond_0
    sget-object v3, Lcom/com2us/module/util/WrapperUtility;->logger:Lcom/com2us/module/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[WrapperUtility][saveMacAddress]"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 267
    return-object v1
.end method

.method public static varifyMacAddress(Ljava/lang/String;)Z
    .locals 5
    .param p0, "macAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 616
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    if-eq v3, v4, :cond_1

    .line 639
    :cond_0
    :goto_0
    return v2

    .line 621
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 639
    const/4 v2, 0x1

    goto :goto_0

    .line 623
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 624
    .local v0, "currentChar":C
    add-int/lit8 v3, v1, 0x1

    rem-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_4

    .line 626
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_0

    .line 621
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 631
    :cond_4
    const/16 v3, 0x30

    if-lt v0, v3, :cond_5

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    .line 632
    :cond_5
    const/16 v3, 0x61

    if-lt v0, v3, :cond_0

    const/16 v3, 0x66

    if-le v0, v3, :cond_3

    goto :goto_0
.end method
