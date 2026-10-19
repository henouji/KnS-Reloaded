.class public final Lcom/com2us/common/security/Crypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GetKey([B)[B
    .locals 6
    .param p0, "suggestedKey"    # [B

    .prologue
    .line 76
    move-object v3, p0

    .line 77
    .local v3, "kRaw":[B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "kList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x80

    if-lt v1, v4, :cond_0

    .line 84
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [B

    .line 85
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 88
    return-object v0

    .line 81
    .end local v0    # "byteArray":[B
    :cond_0
    div-int/lit8 v4, v1, 0x8

    array-length v5, v3

    rem-int/2addr v4, v5

    aget-byte v4, v3, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 86
    .restart local v0    # "byteArray":[B
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v0, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/com2us/common/security/base64/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 129
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/com2us/common/security/base64/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "keyData"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 50
    :try_start_0
    const-string v4, "AES"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/common/security/Crypto;->GetKey([B)[B

    move-result-object v3

    .line 60
    .local v3, "privateKey":[B
    :goto_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, v3, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 61
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 62
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 64
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 71
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "privateKey":[B
    :goto_1
    return-object v4

    .line 56
    :cond_0
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "privateKey":[B
    goto :goto_0

    .line 66
    .end local v3    # "privateKey":[B
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 94
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/com2us/common/security/base64/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64toString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 114
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/com2us/common/security/base64/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "keyData"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 21
    :try_start_0
    const-string v4, "AES"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/common/security/Crypto;->GetKey([B)[B

    move-result-object v3

    .line 31
    .local v3, "privateKey":[B
    :goto_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, v3, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 32
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 33
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 35
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 42
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "privateKey":[B
    :goto_1
    return-object v4

    .line 27
    :cond_0
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "privateKey":[B
    goto :goto_0

    .line 37
    .end local v3    # "privateKey":[B
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static generateCRC32([B)J
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 164
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 165
    .local v0, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 166
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public static generateCRC32toHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 171
    const-string v0, "%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/com2us/common/security/Crypto;->generateCRC32([B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
