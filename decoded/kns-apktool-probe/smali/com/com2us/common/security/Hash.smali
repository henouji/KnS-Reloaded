.class public final Lcom/com2us/common/security/Hash;
.super Ljava/lang/Object;
.source "Hash.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateHash([BLjava/lang/String;)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 12
    move-object v2, v3

    check-cast v2, [B

    .line 15
    .local v2, "ret":[B
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 16
    .local v1, "hash":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 17
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 25
    .end local v1    # "hash":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 19
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateHashtoHexString([BLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "ret":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/com2us/common/security/Hash;->generateHash([BLjava/lang/String;)[B

    move-result-object v0

    .line 33
    .local v0, "hash":[B
    if-eqz v0, :cond_0

    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 41
    .end local v1    # "i":I
    :cond_0
    return-object v2

    .line 37
    .restart local v1    # "i":I
    :cond_1
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

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
