.class public Lcom/com2us/security/cryptography/StringEncrypter;
.super Ljava/lang/Object;
.source "StringEncrypter.java"


# instance fields
.field private initalVector:Ljavax/crypto/spec/IvParameterSpec;

.field private key:Ljavax/crypto/spec/SecretKeySpec;

.field private rijndael:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "initialVector"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "The key can not be null or an empty string."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "The initial vector can not be null or an empty string."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_3
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/security/cryptography/StringEncrypter;->rijndael:Ljavax/crypto/Cipher;

    .line 68
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 69
    .local v0, "md5":Ljava/security/MessageDigest;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "UTF8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/com2us/security/cryptography/StringEncrypter;->key:Ljavax/crypto/spec/SecretKeySpec;

    .line 70
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "UTF8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v1, p0, Lcom/com2us/security/cryptography/StringEncrypter;->initalVector:Ljavax/crypto/spec/IvParameterSpec;

    .line 71
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "The cipher string can not be null or an empty string."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/com2us/security/cryptography/StringEncrypter;->rijndael:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/com2us/security/cryptography/StringEncrypter;->key:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Lcom/com2us/security/cryptography/StringEncrypter;->initalVector:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 114
    invoke-static {p1}, Lcom/com2us/security/cryptography/Base64Encoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 117
    .local v1, "encryptedValue":[B
    iget-object v2, p0, Lcom/com2us/security/cryptography/StringEncrypter;->rijndael:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 120
    .local v0, "decryptedValue":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const-string p1, ""

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/com2us/security/cryptography/StringEncrypter;->rijndael:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/com2us/security/cryptography/StringEncrypter;->key:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Lcom/com2us/security/cryptography/StringEncrypter;->initalVector:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 89
    const-string v2, "UTF8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 92
    .local v1, "utf8Value":[B
    iget-object v2, p0, Lcom/com2us/security/cryptography/StringEncrypter;->rijndael:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 95
    .local v0, "encryptedValue":[B
    invoke-static {v0}, Lcom/com2us/security/cryptography/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
