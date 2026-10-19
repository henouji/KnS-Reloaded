.class public Lcom/com2us/peppermint/util/PeppermintEncryption;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "AES"

.field private static a:Ljava/security/spec/AlgorithmParameterSpec; = null

.field private static final b:Ljava/lang/String; = "PKCS7Padding"

.field private static final c:Ljava/lang/String; = "CBC"

.field private static final d:Ljava/lang/String; = "AES/CBC/PKCS7Padding"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/com2us/peppermint/util/PeppermintEncryption;->a:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/com2us/peppermint/util/PeppermintEncryption;->b(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/com2us/peppermint/util/PeppermintEncryption;->a(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const-string v1, "DESede"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public static creaetSecretKeyAES([B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "org.apache.commons.codec.binary.Base64"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    const-string v3, "decodeBase64"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "decodeBase64 decodeBase64 is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static decryptAES([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0}, Lcom/com2us/peppermint/util/PeppermintEncryption;->creaetSecretKeyAES([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    sget-object v3, Lcom/com2us/peppermint/util/PeppermintEncryption;->a:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "org.apache.commons.codec.binary.Base64"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    const-string v3, "encodeBase64"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "encodeBase64 encodeBase64 is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static encryptAES([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/com2us/peppermint/util/PeppermintEncryption;->creaetSecretKeyAES([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    sget-object v3, Lcom/com2us/peppermint/util/PeppermintEncryption;->a:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getMD5Hash([B)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "getMD5Hash digest is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v3, v2, v0

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public decryptDES(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "DESede/ECB/PKCS5Padding"

    :goto_1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/com2us/peppermint/util/PeppermintEncryption;->a(Ljava/lang/String;Z)Ljava/security/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "UTF8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintEncryption;->decodeBase64([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "DES/ECB/PKCS5Padding"

    goto :goto_1
.end method

.method public encryptDES(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "DESede/ECB/PKCS5Padding"

    :goto_1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3}, Lcom/com2us/peppermint/util/PeppermintEncryption;->a(Ljava/lang/String;Z)Ljava/security/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "UTF8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintEncryption;->encodeBase64([B)[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "DES/ECB/PKCS5Padding"

    goto :goto_1
.end method
