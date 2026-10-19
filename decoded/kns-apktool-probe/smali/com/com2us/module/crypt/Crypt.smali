.class public Lcom/com2us/module/crypt/Crypt;
.super Ljava/lang/Object;
.source "Crypt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Decrypt([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/com2us/module/crypt/Crypt;->crypt(Z[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static Encrypt([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/com2us/module/crypt/Crypt;->crypt(Z[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static byt2short([B)S
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "newValue":S
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    int-to-short v1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 214
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    int-to-short v1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 215
    return v0
.end method

.method public static byt2str([B)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # [B

    .prologue
    .line 227
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "ba"    # [B

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x10

    .line 263
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-object v3

    .line 268
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 269
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p0

    if-lt v2, v4, :cond_2

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 271
    :cond_2
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v7, :cond_3

    .line 272
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    :cond_3
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 277
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static crypt(Z[B[B)[B
    .locals 11
    .param p0, "isEncryption"    # Z
    .param p1, "Packet"    # [B
    .param p2, "_key"    # [B

    .prologue
    const/16 v3, 0x10

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 58
    invoke-static {p1}, Lcom/com2us/module/crypt/Crypt;->isNull([B)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/com2us/module/crypt/Crypt;->isNull([B)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 89
    :goto_0
    return-object v4

    .line 63
    :cond_1
    invoke-static {p2}, Lcom/com2us/module/crypt/Crypt;->byt2str([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/com2us/module/crypt/Crypt;->padnulls(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/crypt/Crypt;->str2byt(Ljava/lang/String;)[B

    move-result-object v7

    .line 65
    .local v7, "key":[B
    array-length v1, v7

    if-eq v1, v3, :cond_2

    array-length v1, v7

    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    .line 66
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n  *** key must be illegal *** "

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    :cond_2
    invoke-static {p2}, Lcom/com2us/module/crypt/Crypt;->byt2str([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/com2us/module/crypt/Crypt;->padnulls(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/crypt/Crypt;->str2byt(Ljava/lang/String;)[B

    move-result-object v9

    .line 75
    .local v9, "nonce":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v5, :cond_3

    .line 80
    new-instance v8, Lcom/com2us/module/crypt/params/KeyParameter;

    invoke-direct {v8, v7}, Lcom/com2us/module/crypt/params/KeyParameter;-><init>([B)V

    .line 81
    .local v8, "keyparam":Lcom/com2us/module/crypt/params/KeyParameter;
    new-instance v10, Lcom/com2us/module/crypt/params/ParametersWithIV;

    invoke-direct {v10, v8, v9}, Lcom/com2us/module/crypt/params/ParametersWithIV;-><init>(Lcom/com2us/module/crypt/CipherParameters;[B)V

    .line 83
    .local v10, "params":Lcom/com2us/module/crypt/params/ParametersWithIV;
    new-instance v0, Lcom/com2us/module/crypt/engines/Salsa20Engine;

    invoke-direct {v0}, Lcom/com2us/module/crypt/engines/Salsa20Engine;-><init>()V

    .line 84
    .local v0, "salsa":Lcom/com2us/module/crypt/StreamCipher;
    invoke-interface {v0, p0, v10}, Lcom/com2us/module/crypt/StreamCipher;->init(ZLcom/com2us/module/crypt/CipherParameters;)V

    .line 86
    array-length v1, p1

    new-array v4, v1, [B

    .line 87
    .local v4, "cryptData":[B
    array-length v3, p1

    move-object v1, p1

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/com2us/module/crypt/StreamCipher;->processBytes([BII[BI)V

    goto :goto_0

    .line 76
    .end local v0    # "salsa":Lcom/com2us/module/crypt/StreamCipher;
    .end local v4    # "cryptData":[B
    .end local v8    # "keyparam":Lcom/com2us/module/crypt/params/KeyParameter;
    .end local v10    # "params":Lcom/com2us/module/crypt/params/ParametersWithIV;
    :cond_3
    aput-byte v2, v7, v6

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private cvtKey([B)[B
    .locals 6
    .param p1, "key"    # [B

    .prologue
    .line 286
    const/4 v2, 0x0

    .line 287
    .local v2, "keyLen":I
    const/4 v4, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 288
    const/4 v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 289
    new-array v0, v2, [B

    .line 290
    .local v0, "cvtKey":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 294
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_1

    .line 301
    return-object v0

    .line 291
    :cond_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    aget-byte v4, p1, v4

    aput-byte v4, v0, v1

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    rem-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_2

    .line 296
    add-int/lit8 v4, v1, -0x1

    aget-byte v3, v0, v4

    .line 297
    .local v3, "temp":B
    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v0, v1

    aput-byte v5, v0, v4

    .line 298
    aput-byte v3, v0, v1

    .line 294
    .end local v3    # "temp":B
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getCRC32Value([B)[B
    .locals 14
    .param p1, "packetData"    # [B

    .prologue
    .line 174
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 175
    .local v2, "crc":Ljava/util/zip/Checksum;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 178
    .local v0, "bai":Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 179
    .local v7, "in":Ljava/io/BufferedInputStream;
    const/16 v9, 0x100

    new-array v1, v9, [B

    .line 180
    .local v1, "buffer":[B
    const/4 v8, 0x0

    .line 182
    .local v8, "length":I
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    if-gez v8, :cond_0

    .line 184
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "buffer":[B
    .end local v7    # "in":Ljava/io/BufferedInputStream;
    .end local v8    # "length":I
    :goto_1
    const-string v9, "%02X%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "hexString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    new-array v3, v9, [B

    .line 192
    .local v3, "crc32Value":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v9, v3

    if-lt v6, v9, :cond_1

    .line 197
    return-object v3

    .line 183
    .end local v3    # "crc32Value":[B
    .end local v5    # "hexString":Ljava/lang/String;
    .end local v6    # "i":I
    .restart local v1    # "buffer":[B
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v8    # "length":I
    :cond_0
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v2, v1, v9, v8}, Ljava/util/zip/Checksum;->update([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 185
    .end local v1    # "buffer":[B
    .end local v7    # "in":Ljava/io/BufferedInputStream;
    .end local v8    # "length":I
    :catch_0
    move-exception v4

    .line 186
    .local v4, "e":Ljava/io/IOException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 194
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "crc32Value":[B
    .restart local v5    # "hexString":Ljava/lang/String;
    .restart local v6    # "i":I
    :cond_1
    mul-int/lit8 v9, v6, 0x2

    mul-int/lit8 v10, v6, 0x2

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    .line 193
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v3, v6

    .line 192
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 9
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 237
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v4, v5

    .line 257
    :cond_1
    :goto_0
    return-object v4

    .line 241
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 246
    :cond_3
    const/4 v1, 0x0

    .line 247
    .local v1, "i":I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    new-array v4, v6, [B

    .line 248
    .local v4, "results":[B
    const/4 v2, 0x0

    .local v2, "k":I
    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 250
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    aput-byte v6, v4, v1

    .line 251
    aget-byte v6, v4, v1

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    int-to-byte v7, v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    .end local v3    # "k":I
    .end local v4    # "results":[B
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v4, v5

    .line 257
    goto :goto_0
.end method

.method private static isNull([B)Z
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 305
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static nullstring(I)Ljava/lang/String;
    .locals 3
    .param p0, "len"    # I

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "zero":B
    new-array v0, p0, [B

    .line 203
    .local v0, "nulls":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 204
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static padnulls(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 208
    invoke-static {p1}, Lcom/com2us/module/crypt/Crypt;->nullstring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static short2byt(S)[B
    .locals 3
    .param p0, "s"    # S

    .prologue
    .line 220
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 221
    .local v0, "short2byt":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 222
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 223
    return-object v0
.end method

.method public static str2byt(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 231
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
