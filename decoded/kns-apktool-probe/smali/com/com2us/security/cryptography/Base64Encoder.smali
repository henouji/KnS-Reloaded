.class public final Lcom/com2us/security/cryptography/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"


# static fields
.field private static final BASE64_CHARS:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

.field private static final BASE64_PADDING:C = '='


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 12
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 112
    :cond_0
    const/4 v10, 0x0

    new-array v6, v10, [B

    .line 191
    :cond_1
    :goto_0
    return-object v6

    .line 115
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    rem-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_3

    .line 116
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "The length of a Base64 string must be a multiple of 4."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 119
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v5, v10, :cond_7

    .line 139
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    div-int/lit8 v10, v10, 0x4

    mul-int/lit8 v9, v10, 0x3

    .line 140
    .local v9, "requiredSize":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_5

    .line 141
    add-int/lit8 v9, v9, -0x1

    .line 143
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_6

    .line 144
    add-int/lit8 v9, v9, -0x1

    .line 147
    :cond_6
    new-array v6, v9, [B

    .line 150
    .local v6, "output":[B
    const/4 v7, 0x0

    .local v7, "outputIndex":I
    const/4 v2, 0x0

    .line 151
    .local v2, "bufferIndex":I
    const/4 v10, 0x4

    new-array v1, v10, [C

    .line 154
    .local v1, "buffer":[C
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 156
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bufferIndex":I
    .local v3, "bufferIndex":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aput-char v10, v1, v2

    .line 159
    const/4 v10, 0x4

    if-ne v3, v10, :cond_d

    .line 161
    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v11, 0x0

    aget-char v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 162
    .local v0, "base64CharIndex":I
    shl-int/lit8 v10, v0, 0x2

    int-to-byte v10, v10

    aput-byte v10, v6, v7

    .line 164
    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v11, 0x1

    aget-char v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 165
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputIndex":I
    .local v8, "outputIndex":I
    aget-byte v10, v6, v7

    ushr-int/lit8 v11, v0, 0x4

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v6, v7

    .line 168
    const/4 v10, 0x2

    aget-char v10, v1, v10

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_b

    move v2, v3

    .end local v3    # "bufferIndex":I
    .restart local v2    # "bufferIndex":I
    move v7, v8

    .line 169
    .end local v8    # "outputIndex":I
    .restart local v7    # "outputIndex":I
    goto/16 :goto_0

    .line 120
    .end local v0    # "base64CharIndex":I
    .end local v1    # "buffer":[C
    .end local v2    # "bufferIndex":I
    .end local v6    # "output":[B
    .end local v7    # "outputIndex":I
    .end local v9    # "requiredSize":I
    :cond_7
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 123
    .local v4, "chr":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v5, v10, :cond_8

    const/16 v10, 0x3d

    if-eq v4, v10, :cond_4

    .line 127
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    if-ne v5, v10, :cond_9

    const/16 v10, 0x3d

    if-ne v4, v10, :cond_9

    .line 128
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3d

    if-eq v10, v11, :cond_4

    .line 132
    :cond_9
    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_a

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 135
    :cond_a
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "An invalid character is found in the Base64 string."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 171
    .end local v4    # "chr":C
    .restart local v0    # "base64CharIndex":I
    .restart local v1    # "buffer":[C
    .restart local v3    # "bufferIndex":I
    .restart local v6    # "output":[B
    .restart local v8    # "outputIndex":I
    .restart local v9    # "requiredSize":I
    :cond_b
    and-int/lit8 v10, v0, 0xf

    shl-int/lit8 v10, v10, 0x4

    int-to-byte v10, v10

    aput-byte v10, v6, v8

    .line 173
    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v11, 0x2

    aget-char v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 174
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputIndex":I
    .restart local v7    # "outputIndex":I
    aget-byte v10, v6, v8

    ushr-int/lit8 v11, v0, 0x2

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v6, v8

    .line 177
    const/4 v10, 0x3

    aget-char v10, v1, v10

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_c

    move v2, v3

    .line 178
    .end local v3    # "bufferIndex":I
    .restart local v2    # "bufferIndex":I
    goto/16 :goto_0

    .line 180
    .end local v2    # "bufferIndex":I
    .restart local v3    # "bufferIndex":I
    :cond_c
    and-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x6

    int-to-byte v10, v10

    aput-byte v10, v6, v7

    .line 182
    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v11, 0x3

    aget-char v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 183
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputIndex":I
    .restart local v8    # "outputIndex":I
    aget-byte v10, v6, v7

    or-int/2addr v10, v0

    int-to-byte v10, v10

    aput-byte v10, v6, v7

    .line 186
    const/4 v2, 0x0

    .end local v3    # "bufferIndex":I
    .restart local v2    # "bufferIndex":I
    move v7, v8

    .line 154
    .end local v0    # "base64CharIndex":I
    .end local v8    # "outputIndex":I
    .restart local v7    # "outputIndex":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .end local v2    # "bufferIndex":I
    .restart local v3    # "bufferIndex":I
    :cond_d
    move v2, v3

    .end local v3    # "bufferIndex":I
    .restart local v2    # "bufferIndex":I
    goto :goto_3
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 12
    .param p0, "value"    # [B

    .prologue
    .line 49
    if-eqz p0, :cond_0

    array-length v10, p0

    if-nez v10, :cond_1

    .line 50
    :cond_0
    const-string v10, ""

    .line 97
    :goto_0
    return-object v10

    .line 53
    :cond_1
    array-length v10, p0

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v9, v10, 0x4

    .line 54
    .local v9, "requiredSize":I
    array-length v10, p0

    rem-int/lit8 v10, v10, 0x3

    if-lez v10, :cond_2

    .line 55
    add-int/lit8 v9, v9, 0x4

    .line 58
    :cond_2
    new-array v6, v9, [C

    .line 61
    .local v6, "output":[C
    const/4 v7, 0x0

    .local v7, "outputIndex":I
    const/4 v2, 0x0

    .line 62
    .local v2, "bufferIndex":I
    const/4 v10, 0x3

    new-array v1, v10, [I

    .line 65
    .local v1, "buffer":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, p0

    if-lt v4, v10, :cond_3

    .line 97
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 67
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bufferIndex":I
    .local v3, "bufferIndex":I
    aget-byte v10, p0, v4

    and-int/lit16 v10, v10, 0xff

    aput v10, v1, v2

    .line 70
    const/4 v10, 0x3

    if-eq v3, v10, :cond_4

    array-length v10, p0

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_8

    .line 72
    :cond_4
    const/4 v10, 0x0

    aget v10, v1, v10

    ushr-int/lit8 v0, v10, 0x2

    .line 73
    .local v0, "base64CharIndex":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputIndex":I
    .local v8, "outputIndex":I
    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aput-char v10, v6, v7

    .line 76
    const/4 v10, 0x0

    aget v10, v1, v10

    and-int/lit8 v10, v10, 0x3

    shl-int/lit8 v10, v10, 0x4

    const/4 v11, 0x1

    aget v11, v1, v11

    ushr-int/lit8 v11, v11, 0x4

    or-int v0, v10, v11

    .line 77
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputIndex":I
    .restart local v7    # "outputIndex":I
    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aput-char v10, v6, v8

    .line 80
    const/4 v10, 0x1

    aget v10, v1, v10

    and-int/lit8 v10, v10, 0xf

    shl-int/lit8 v10, v10, 0x2

    const/4 v11, 0x2

    aget v11, v1, v11

    ushr-int/lit8 v11, v11, 0x6

    or-int v0, v10, v11

    .line 81
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputIndex":I
    .restart local v8    # "outputIndex":I
    const/4 v10, 0x1

    if-le v3, v10, :cond_5

    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 82
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 81
    :goto_2
    aput-char v10, v6, v7

    .line 85
    const/4 v10, 0x2

    aget v10, v1, v10

    and-int/lit8 v0, v10, 0x3f

    .line 86
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputIndex":I
    .restart local v7    # "outputIndex":I
    const/4 v10, 0x2

    if-le v3, v10, :cond_6

    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 87
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 86
    :goto_3
    aput-char v10, v6, v8

    .line 90
    const/4 v2, 0x0

    .line 91
    .end local v3    # "bufferIndex":I
    .restart local v2    # "bufferIndex":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    array-length v10, v1

    if-lt v5, v10, :cond_7

    .line 65
    .end local v0    # "base64CharIndex":I
    .end local v5    # "j":I
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 82
    .end local v2    # "bufferIndex":I
    .end local v7    # "outputIndex":I
    .restart local v0    # "base64CharIndex":I
    .restart local v3    # "bufferIndex":I
    .restart local v8    # "outputIndex":I
    :cond_5
    const/16 v10, 0x3d

    goto :goto_2

    .line 87
    .end local v8    # "outputIndex":I
    .restart local v7    # "outputIndex":I
    :cond_6
    const/16 v10, 0x3d

    goto :goto_3

    .line 92
    .end local v3    # "bufferIndex":I
    .restart local v2    # "bufferIndex":I
    .restart local v5    # "j":I
    :cond_7
    const/4 v10, 0x0

    aput v10, v1, v5

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v0    # "base64CharIndex":I
    .end local v2    # "bufferIndex":I
    .end local v5    # "j":I
    .restart local v3    # "bufferIndex":I
    :cond_8
    move v2, v3

    .end local v3    # "bufferIndex":I
    .restart local v2    # "bufferIndex":I
    goto :goto_5
.end method
