.class public Lcom/com2us/module/inapp/lebi/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final RANDOM:Ljava/security/SecureRandom;

.field public static final STRING_CHARGE_NAME:I = 0x2

.field public static final STRING_CHARGE_TEST_NAME:I = 0x3

.field public static final STRING_PD_VALUE:I = 0x5

.field public static final STRING_REQUEST_NAME:I = 0x0

.field public static final STRING_REQUEST_TEST_NAME:I = 0x1

.field private static final STRING_SET:[[I

.field public static final STRING_SYS_ID:I = 0x4

.field public static final STRING_TEST_PD_VALUE:I = 0x7

.field public static final STRING_TEST_SYS_ID:I = 0x6

.field private static mNonces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x4c

    const/16 v5, 0x48

    const/16 v4, 0x14

    const/16 v3, 0x10

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x0

    .line 21
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 22
    new-array v2, v6, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 23
    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 24
    new-array v2, v6, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 25
    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 26
    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 27
    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 28
    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    .line 20
    sput-object v0, Lcom/com2us/module/inapp/lebi/Utility;->STRING_SET:[[I

    .line 32
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/com2us/module/inapp/lebi/Utility;->RANDOM:Ljava/security/SecureRandom;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/com2us/module/inapp/lebi/Utility;->mNonces:Ljava/util/HashSet;

    return-void

    .line 21
    nop

    :array_0
    .array-data 4
        0x41
        0x68
        0x72
        0x39
        0x43
        0x68
        0x6d
        0x33
        0x6c
        0x59
        0x30
        0x54
        0x6c
        0x4d
        0x6a
        0x50
        0x42
        0x67
        0x58
        0x48
        0x43
        0x68
        0x61
        0x55
        0x79
        0x37
        0x30
        0x54
        0x6d
        0x4e
        0x76
        0x5a
        0x6c
        0x4d
        0x6e
        0x56
        0x42
        0x73
        0x30
        0x54
        0x42
        0x37
        0x72
        0x38
        0x42
        0x67
        0x75
        0x56
        0x71
        0x4d
        0x4c
        0x53
        0x42
        0x66
        0x6a
        0x4c
        0x43
        0x78
        0x76
        0x4c
        0x43
        0x36
        0x71
        0x59
        0x6c
        0x4d
        0x6d
        0x59
        0x43
        0x57
        0x3d
        0x3d
    .end array-data

    .line 22
    :array_1
    .array-data 4
        0x41
        0x68
        0x72
        0x39
        0x43
        0x64
        0x4f
        0x56
        0x6c
        0x36
        0x72
        0x4c
        0x43
        0x36
        0x71
        0x55
        0x42
        0x73
        0x34
        0x49
        0x41
        0x77
        0x58
        0x53
        0x79
        0x78
        0x62
        0x57
        0x6c
        0x4d
        0x6e
        0x56
        0x42
        0x74
        0x6a
        0x38
        0x43
        0x59
        0x34
        0x4a
        0x42
        0x37
        0x39
        0x56
        0x42
        0x77
        0x30
        0x4b
        0x44
        0x77
        0x58
        0x4c
        0x6c
        0x39
        0x6a
        0x50
        0x42
        0x67
        0x58
        0x73
        0x7a
        0x78
        0x66
        0x38
        0x7a
        0x78
        0x6e
        0x39
        0x6d
        0x49
        0x34
        0x4a
        0x6d
        0x4e
        0x6d
        0x3d
    .end array-data

    .line 23
    :array_2
    .array-data 4
        0x41
        0x68
        0x72
        0x39
        0x43
        0x68
        0x6d
        0x33
        0x6c
        0x59
        0x30
        0x54
        0x6c
        0x4d
        0x6a
        0x50
        0x42
        0x67
        0x57
        0x55
        0x79
        0x37
        0x30
        0x54
        0x6d
        0x4e
        0x76
        0x5a
        0x6c
        0x4d
        0x6e
        0x56
        0x42
        0x73
        0x30
        0x4a
        0x42
        0x49
        0x30
        0x53
        0x42
        0x37
        0x44
        0x50
        0x42
        0x49
        0x30
        0x63
        0x41
        0x77
        0x58
        0x53
        0x74
        0x67
        0x30
        0x4e
        0x41
        0x77
        0x34
        0x46
        0x74
        0x4d
        0x76
        0x36
        0x6c
        0x4d
        0x50
        0x5a
        0x43
        0x61
        0x3d
        0x3d
    .end array-data

    .line 24
    :array_3
    .array-data 4
        0x41
        0x68
        0x72
        0x39
        0x43
        0x64
        0x4f
        0x56
        0x6c
        0x36
        0x72
        0x4c
        0x43
        0x36
        0x71
        0x55
        0x42
        0x73
        0x34
        0x49
        0x41
        0x77
        0x58
        0x53
        0x6c
        0x4d
        0x6e
        0x56
        0x42
        0x74
        0x6a
        0x38
        0x43
        0x59
        0x34
        0x4a
        0x42
        0x37
        0x39
        0x56
        0x79
        0x37
        0x35
        0x56
        0x42
        0x67
        0x30
        0x4e
        0x41
        0x77
        0x35
        0x56
        0x71
        0x4d
        0x4c
        0x53
        0x42
        0x65
        0x58
        0x56
        0x7a
        0x37
        0x4c
        0x55
        0x78
        0x39
        0x34
        0x4c
        0x44
        0x59
        0x34
        0x51
        0x43
        0x36
        0x61
        0x3d
    .end array-data

    .line 25
    :array_4
    .array-data 4
        0x79
        0x37
        0x30
        0x54
        0x6d
        0x4e
        0x76
        0x5a
        0x79
        0x4d
        0x4c
        0x53
        0x42
        0x67
        0x4c
        0x55
        0x7a
        0x57
        0x3d
        0x3d
    .end array-data

    .line 26
    :array_5
    .array-data 4
        0x43
        0x77
        0x58
        0x4d
        0x7a
        0x4d
        0x58
        0x4b
        0x6d
        0x4a
        0x61
        0x58
        0x6d
        0x73
        0x4f
        0x48
        0x46
        0x47
        0x3d
        0x3d
    .end array-data

    .line 27
    :array_6
    .array-data 4
        0x44
        0x67
        0x76
        0x5a
        0x44
        0x67
        0x6a
        0x50
        0x42
        0x67
        0x58
        0x48
        0x43
        0x68
        0x61
        0x3d
    .end array-data

    .line 28
    :array_7
    .array-data 4
        0x45
        0x68
        0x62
        0x39
        0x42
        0x78
        0x48
        0x54
        0x7a
        0x68
        0x4c
        0x4b
        0x46
        0x47
        0x3d
        0x3d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNonce()J
    .locals 4

    .prologue
    .line 37
    sget-object v2, Lcom/com2us/module/inapp/lebi/Utility;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 38
    .local v0, "nonce":J
    sget-object v2, Lcom/com2us/module/inapp/lebi/Utility;->mNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    return-wide v0
.end method

.method public static decodeBase64([B)[B
    .locals 8
    .param p0, "base64Data"    # [B

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 99
    .local v2, "buf":[B
    :try_start_0
    const-string v6, "org.apache.commons.codec.binary.Base64"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 100
    .local v1, "Base64":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    .line 101
    .local v5, "parameterTypes":[Ljava/lang/Class;
    const-string v6, "decodeBase64"

    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 102
    .local v3, "decodeBase64":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "Base64":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "decodeBase64":Ljava/lang/reflect/Method;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 104
    :catch_0
    move-exception v4

    .line 105
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 8
    .param p0, "stringNumber"    # I

    .prologue
    .line 52
    const-string v3, ""

    .line 53
    .local v3, "ret":Ljava/lang/String;
    sget-object v6, Lcom/com2us/module/inapp/lebi/Utility;->STRING_SET:[[I

    aget-object v6, v6, p0

    array-length v6, v6

    new-array v0, v6, [B

    .line 54
    .local v0, "buf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v6, Lcom/com2us/module/inapp/lebi/Utility;->STRING_SET:[[I

    aget-object v6, v6, p0

    array-length v6, v6

    if-lt v2, v6, :cond_0

    .line 68
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/Utility;->decodeBase64([B)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "ret":Ljava/lang/String;
    .local v4, "ret":Ljava/lang/String;
    move-object v3, v4

    .line 73
    .end local v4    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 56
    :cond_0
    sget-object v6, Lcom/com2us/module/inapp/lebi/Utility;->STRING_SET:[[I

    aget-object v6, v6, p0

    aget v6, v6, v2

    int-to-byte v5, v6

    .line 57
    .local v5, "temp":B
    const/16 v6, 0x41

    if-lt v5, v6, :cond_2

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_2

    .line 58
    add-int/lit8 v6, v5, 0x20

    int-to-byte v5, v6

    .line 64
    :cond_1
    :goto_2
    aput-byte v5, v0, v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_2
    const/16 v6, 0x61

    if-lt v5, v6, :cond_3

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_3

    .line 60
    add-int/lit8 v6, v5, -0x20

    int-to-byte v5, v6

    goto :goto_2

    .line 61
    :cond_3
    const/16 v6, 0x30

    if-lt v5, v6, :cond_1

    const/16 v6, 0x39

    if-gt v5, v6, :cond_1

    .line 62
    rsub-int/lit8 v6, v5, 0x69

    int-to-byte v5, v6

    goto :goto_2

    .line 69
    .end local v5    # "temp":B
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 47
    sget-object v0, Lcom/com2us/module/inapp/lebi/Utility;->mNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeNonce(J)V
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 43
    sget-object v0, Lcom/com2us/module/inapp/lebi/Utility;->mNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method
