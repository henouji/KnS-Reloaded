.class public Lcom/com2us/module/util/DeviceIdentity;
.super Ljava/lang/Object;
.source "DeviceIdentity.java"


# static fields
.field private static DID:Ljava/lang/String; = null

.field private static final DID_PROPERTY:Ljava/lang/String; = "did_data"

.field private static final ENC_FORMAT:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final GATEWAY_LIVE_SERVER:Ljava/lang/String; = "http://10.0.2.2:8080/gateway.php"

.field private static final GATEWAY_TEST_SERVER:Ljava/lang/String; = "http://10.0.2.2:8080/gateway.php"

.field private static final PROPERTIES:Ljava/lang/String; = "activeuser.props"

.field private static TARGET_PROPERTIES:Ljava/lang/String; = null

.field private static TARGET_SERVER:Ljava/lang/String; = null

.field private static final cryptAlgorithm:Ljava/lang/String; = "AES"

.field private static final cryptMode:Ljava/lang/String; = "CBC"

.field private static final cryptPadding:Ljava/lang/String; = "PKCS7Padding"

.field private static getDIDThread:Ljava/lang/Thread;

.field private static isTestServer:Z

.field private static logger:Lcom/com2us/module/util/Logger;

.field private static prop:Ljava/util/Properties;

.field private static spec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, ""

    sput-object v0, Lcom/com2us/module/util/DeviceIdentity;->DID:Ljava/lang/String;

    .line 51
    const-string v0, "ModuleManager"

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/module/util/DeviceIdentity;->isTestServer:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/module/util/DeviceIdentity;->getDIDThread:Ljava/lang/Thread;

    .line 57
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/com2us/module/util/DeviceIdentity;->prop:Ljava/util/Properties;

    .line 60
    const-string v0, "activeuser.props"

    sput-object v0, Lcom/com2us/module/util/DeviceIdentity;->TARGET_PROPERTIES:Ljava/lang/String;

    .line 64
    const-string v0, "http://10.0.2.2:8080/gateway.php"

    sput-object v0, Lcom/com2us/module/util/DeviceIdentity;->TARGET_SERVER:Ljava/lang/String;

    .line 68
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/com2us/module/util/DeviceIdentity;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    invoke-static {p0}, Lcom/com2us/module/util/DeviceIdentity;->processNetworkTask(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lcom/com2us/module/util/DeviceIdentity;->DID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/com2us/module/util/DeviceIdentity;->DID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-static {p0, p1, p2}, Lcom/com2us/module/util/DeviceIdentity;->setProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 272
    invoke-static {p0}, Lcom/com2us/module/util/DeviceIdentity;->storeProperties(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$5()Lcom/com2us/module/util/Logger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    return-object v0
.end method

.method private static creaetSecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 526
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static createHash(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 10
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 531
    const/4 v2, 0x0

    .line 533
    .local v2, "md":Ljava/security/MessageDigest;
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 537
    :goto_0
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 539
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 541
    .local v3, "mdByte":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 542
    .local v4, "mdStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 543
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-lt v1, v5, :cond_1

    .line 548
    .end local v1    # "i":I
    :cond_0
    return-object v4

    .line 534
    .end local v3    # "mdByte":[B
    .end local v4    # "mdStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 544
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "i":I
    .restart local v3    # "mdByte":[B
    .restart local v4    # "mdStr":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v9, v3, v1

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static decrypt(Ljava/lang/String;[B)[B
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 562
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 563
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    invoke-static {p0}, Lcom/com2us/module/util/DeviceIdentity;->creaetSecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 564
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method private static encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 554
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 555
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/com2us/module/util/DeviceIdentity;->creaetSecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 556
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-class v0, Lcom/com2us/module/util/DeviceIdentity;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/com2us/module/util/DeviceIdentity;->getDIDSynchronized(Landroid/content/Context;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDID(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useTestServer"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    const-class v1, Lcom/com2us/module/util/DeviceIdentity;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDID useTest - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 101
    sget-boolean v0, Lcom/com2us/module/util/DeviceIdentity;->isTestServer:Z

    if-eq v0, p1, :cond_0

    .line 102
    sput-boolean p1, Lcom/com2us/module/util/DeviceIdentity;->isTestServer:Z

    .line 103
    if-eqz p1, :cond_1

    const-string v0, "http://10.0.2.2:8080/gateway.php"

    :goto_0
    sput-object v0, Lcom/com2us/module/util/DeviceIdentity;->TARGET_SERVER:Ljava/lang/String;

    .line 104
    if-eqz p1, :cond_2

    const-string v0, "testactiveuser.props"

    :goto_1
    sput-object v0, Lcom/com2us/module/util/DeviceIdentity;->TARGET_PROPERTIES:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0, p1}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 106
    const-string v0, ""

    sput-object v0, Lcom/com2us/module/util/DeviceIdentity;->DID:Ljava/lang/String;

    .line 107
    const-string v0, "did_data"

    invoke-static {v0}, Lcom/com2us/module/util/DeviceIdentity;->removeProperty(Ljava/lang/String;)V

    .line 110
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/com2us/module/util/DeviceIdentity;->getDIDSynchronized(Landroid/content/Context;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 103
    :cond_1
    :try_start_1
    const-string v0, "http://10.0.2.2:8080/gateway.php"

    goto :goto_0

    .line 104
    :cond_2
    const-string v0, "activeuser.props"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getDIDSynchronized(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sync"    # Z

    .prologue
    .line 114
    const-class v4, Lcom/com2us/module/util/DeviceIdentity;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDIDSynchronized sync - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 116
    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->DID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    invoke-static {p0}, Lcom/com2us/module/util/DeviceIdentity;->loadProperties(Landroid/content/Context;)V

    .line 134
    const-string v3, "did_data"

    invoke-static {p0, v3}, Lcom/com2us/module/util/DeviceIdentity;->getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/com2us/module/util/DeviceIdentity;->DID:Ljava/lang/String;

    .line 136
    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->DID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    if-eqz p1, :cond_1

    .line 141
    :try_start_1
    invoke-static {p0}, Lcom/com2us/module/util/DeviceIdentity;->processNetworkTask(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 143
    .local v2, "msg":Ljava/lang/String;
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v3, "errno"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 145
    const-string v3, "did"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/com2us/module/util/DeviceIdentity;->DID:Ljava/lang/String;

    .line 148
    const-string v3, "did_data"

    sget-object v5, Lcom/com2us/module/util/DeviceIdentity;->DID:Ljava/lang/String;

    invoke-static {p0, v3, v5}, Lcom/com2us/module/util/DeviceIdentity;->setProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {p0}, Lcom/com2us/module/util/DeviceIdentity;->storeProperties(Landroid/content/Context;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :cond_0
    :try_start_3
    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->DID:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "msg":Ljava/lang/String;
    :goto_0
    monitor-exit v4

    return-object v3

    .line 152
    .restart local v2    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDID responseMsg JSONException : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    :try_start_5
    const-string v3, ""

    goto :goto_0

    .line 157
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDID processNetworkTask Exception : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 159
    const-string v3, ""

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->getDIDThread:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->getDIDThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    const-string v3, ""

    goto :goto_0

    .line 169
    :cond_2
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/com2us/module/util/DeviceIdentity$1;

    invoke-direct {v5, p0}, Lcom/com2us/module/util/DeviceIdentity$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v3, Lcom/com2us/module/util/DeviceIdentity;->getDIDThread:Ljava/lang/Thread;

    .line 194
    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->getDIDThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 196
    const-string v3, ""

    goto :goto_0

    .line 202
    :cond_3
    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->DID:Ljava/lang/String;

    goto :goto_0

    .line 204
    :cond_4
    sget-object v3, Lcom/com2us/module/util/DeviceIdentity;->DID:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    sget-object v4, Lcom/com2us/module/util/DeviceIdentity;->prop:Ljava/util/Properties;

    invoke-virtual {v4, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    invoke-static {v3}, Lcom/com2us/module/crypt/Crypt;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/com2us/module/crypt/Crypt;->Decrypt([B[B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/crypt/Crypt;->byt2str([B)Ljava/lang/String;

    move-result-object v3

    .line 214
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 215
    .local v0, "didValue":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "didValue":J
    :cond_0
    :goto_0
    return-object v3

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V

    .line 218
    const-string v3, ""

    .line 219
    const-string v4, "did_data"

    invoke-static {v4}, Lcom/com2us/module/util/DeviceIdentity;->removeProperty(Ljava/lang/String;)V

    .line 220
    invoke-static {p0}, Lcom/com2us/module/util/DeviceIdentity;->storeProperties(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static loadProperties(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    const/4 v2, 0x0

    sput-object v2, Lcom/com2us/module/util/DeviceIdentity;->prop:Ljava/util/Properties;

    .line 249
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lcom/com2us/module/util/DeviceIdentity;->prop:Ljava/util/Properties;

    .line 252
    const/4 v1, 0x0

    .line 254
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    sget-object v2, Lcom/com2us/module/util/DeviceIdentity;->TARGET_PROPERTIES:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 255
    sget-object v2, Lcom/com2us/module/util/DeviceIdentity;->prop:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 265
    :cond_0
    :goto_0
    sget-object v2, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[DeviceIdentity][loadProperties]"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/com2us/module/util/DeviceIdentity;->prop:Ljava/util/Properties;

    invoke-virtual {v4}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V

    .line 266
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v2, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[DeviceIdentity][loadProperties]"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0

    .line 260
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 263
    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    :catch_5
    move-exception v2

    goto :goto_0

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 263
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 264
    :cond_1
    :goto_1
    throw v2

    .line 263
    :catch_6
    move-exception v3

    goto :goto_1

    :catch_7
    move-exception v2

    goto :goto_0
.end method

.method private static makeSendData(Landroid/content/Context;)Ljava/lang/String;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 423
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 426
    .local v5, "dataMap":Lorg/json/JSONObject;
    :try_start_0
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 427
    .local v16, "teleManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/com2us/module/ModuleManager;->getInstance()Lcom/com2us/module/ModuleManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/com2us/module/ModuleManager;->getAppIdForIdentity()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "appid":Ljava/lang/String;
    const-string v11, ""

    .line 430
    .local v11, "mdn":Ljava/lang/String;
    const-string v8, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 432
    .local v8, "imei":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v11

    .line 433
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 439
    :goto_0
    :try_start_2
    const-string v7, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 440
    .local v7, "id":Ljava/lang/String;
    const/4 v9, 0x0

    .line 443
    .local v9, "isLAT":Z
    const/4 v4, 0x0

    .line 444
    .local v4, "cls_Info":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v15, 0x0

    .line 449
    .local v15, "obj_Info":Ljava/lang/Object;
    :try_start_3
    const-string v17, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 450
    .local v3, "cls_AdvertisingIdClient":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v17, "getAdvertisingIdInfo"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Landroid/content/Context;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 451
    .local v12, "mdthod_getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    const-string v17, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 453
    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p0, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 454
    const-string v17, "getId"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 455
    .local v13, "mdthod_getId":Ljava/lang/reflect/Method;
    const-string v17, "isLimitAdTrackingEnabled"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 456
    .local v14, "mdthod_isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 457
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 459
    const-string v17, "advertising_id"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string v17, "is_limit_ad_tracking"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 503
    .end local v3    # "cls_AdvertisingIdClient":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "mdthod_getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    .end local v13    # "mdthod_getId":Ljava/lang/reflect/Method;
    .end local v14    # "mdthod_isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    .end local v15    # "obj_Info":Ljava/lang/Object;
    :goto_1
    :try_start_4
    const-string v17, "appid"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "appid":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    const-string v17, "api"

    const-string v18, "get_did"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v17, "platform"

    const-string v18, "A"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    const-string v17, "mac"

    invoke-static/range {p0 .. p0}, Lcom/com2us/module/util/WrapperUtility;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const-string v17, "mdn"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string v17, "imei"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    const-string v17, "android_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "android_id"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    const-string v17, "osversion"

    sget-object v18, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    const-string v17, "device"

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    const-string v18, "hacking"

    invoke-static {}, Lcom/com2us/module/util/WrapperUtility;->IsCracked()Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "1"

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 519
    .end local v4    # "cls_Info":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v9    # "isLAT":Z
    .end local v11    # "mdn":Ljava/lang/String;
    .end local v16    # "teleManager":Landroid/telephony/TelephonyManager;
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, "jsonStr":Ljava/lang/String;
    sget-object v17, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "[DeviceIdentity][makeSendData]"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 521
    return-object v10

    .line 434
    .end local v10    # "jsonStr":Ljava/lang/String;
    .restart local v2    # "appid":Ljava/lang/String;
    .restart local v8    # "imei":Ljava/lang/String;
    .restart local v11    # "mdn":Ljava/lang/String;
    .restart local v16    # "teleManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v6

    .line 435
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 514
    .end local v2    # "appid":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v11    # "mdn":Ljava/lang/String;
    .end local v16    # "teleManager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v6

    .line 515
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 516
    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "dataMap":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .restart local v5    # "dataMap":Lorg/json/JSONObject;
    goto :goto_3

    .line 462
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "appid":Ljava/lang/String;
    .restart local v4    # "cls_Info":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "id":Ljava/lang/String;
    .restart local v8    # "imei":Ljava/lang/String;
    .restart local v9    # "isLAT":Z
    .restart local v11    # "mdn":Ljava/lang/String;
    .restart local v16    # "teleManager":Landroid/telephony/TelephonyManager;
    :catch_2
    move-exception v6

    .line 463
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 464
    const-string v17, "advertising_id"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    const-string v17, "is_limit_ad_tracking"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 512
    .end local v2    # "appid":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v17, "0"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2
.end method

.method private static declared-synchronized processNetworkTask(Landroid/content/Context;)Ljava/lang/String;
    .locals 32
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 322
    const-class v26, Lcom/com2us/module/util/DeviceIdentity;

    monitor-enter v26

    const/16 v21, 0x0

    .line 323
    .local v21, "responseStr":Ljava/lang/String;
    const/4 v13, 0x0

    .line 324
    .local v13, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v5, 0x0

    .line 326
    .local v5, "client":Lorg/apache/http/client/HttpClient;
    const/16 v18, 0x0

    .line 327
    .local v18, "recvTimeStamp":Ljava/lang/String;
    const/16 v16, 0x0

    .line 329
    .local v16, "recvHash":Ljava/lang/String;
    :try_start_0
    new-instance v12, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v12}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 330
    .local v12, "httpClientParams":Lorg/apache/http/params/HttpParams;
    const/16 v25, 0x2710

    move/from16 v0, v25

    invoke-static {v12, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 331
    const/16 v25, 0x2710

    move/from16 v0, v25

    invoke-static {v12, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 332
    invoke-static/range {p0 .. p0}, Lcom/com2us/module/util/DeviceIdentity;->makeSendData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 333
    .local v23, "sendData":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v25

    if-eqz v25, :cond_0

    const/16 v25, 0x0

    .line 413
    :goto_0
    monitor-exit v26

    return-object v25

    .line 335
    :cond_0
    :try_start_1
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .local v6, "client":Lorg/apache/http/client/HttpClient;
    const/4 v9, 0x0

    .line 339
    .local v9, "entity":Lorg/apache/http/entity/StringEntity;
    :try_start_2
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    sget-object v25, Lcom/com2us/module/util/DeviceIdentity;->TARGET_SERVER:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 340
    .end local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v14, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_3
    const-string v25, "Content-type"

    const-string v27, "text/html"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    .line 343
    .local v24, "timestamp":Ljava/lang/String;
    const-string v25, "MD5"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/com2us/module/util/DeviceIdentity;->createHash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v11

    .line 344
    .local v11, "hash":Ljava/lang/String;
    const-string v25, "MD5"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/com2us/module/util/DeviceIdentity;->createHash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, 0x10

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 346
    .local v15, "key":Ljava/lang/String;
    const-string v25, "REQ-TIMESTAMP"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v25, "REQ-AUTHKEY"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 349
    const/4 v4, 0x0

    .line 351
    .local v4, "base64Data":[B
    :try_start_4
    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/com2us/module/util/DeviceIdentity;->encrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v25

    const/16 v27, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v4

    .line 356
    :goto_1
    :try_start_5
    sget-object v25, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "[DeviceIdentity][processNetworkTask] send data : "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 358
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    const-string v27, "UTF-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .local v10, "entity":Lorg/apache/http/entity/StringEntity;
    move-object v9, v10

    .end local v10    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v13, v14

    .line 364
    .end local v4    # "base64Data":[B
    .end local v11    # "hash":Ljava/lang/String;
    .end local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v15    # "key":Ljava/lang/String;
    .end local v24    # "timestamp":Ljava/lang/String;
    .restart local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_2
    :try_start_6
    invoke-virtual {v13, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 366
    invoke-interface {v6, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 368
    .local v19, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    const/16 v27, 0xc8

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 370
    const-string v25, "REQ-TIMESTAMP"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 371
    const-string v25, "REQ-AUTHKEY"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 373
    sget-object v25, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "[DeviceIdentity][processNetworkTask] recvTimeStamp="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", recvHash="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 375
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    .line 376
    .local v20, "responseEntity":Lorg/apache/http/HttpEntity;
    if-eqz v20, :cond_1

    .line 377
    invoke-static/range {v20 .. v20}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v21

    .line 378
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 388
    .end local v20    # "responseEntity":Lorg/apache/http/HttpEntity;
    :cond_1
    :try_start_7
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    move-object/from16 v22, v21

    .line 391
    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "responseStr":Ljava/lang/String;
    .local v22, "responseStr":Ljava/lang/String;
    :goto_3
    if-eqz v22, :cond_3

    .line 393
    :try_start_8
    const-string v25, "MD5"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/com2us/module/util/DeviceIdentity;->createHash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, 0x10

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 395
    .restart local v15    # "key":Ljava/lang/String;
    const/4 v7, 0x0

    .line 396
    .local v7, "decodeBase64byte":[B
    const/16 v25, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 398
    new-instance v21, Ljava/lang/String;

    invoke-static {v15, v7}, Lcom/com2us/module/util/DeviceIdentity;->decrypt(Ljava/lang/String;[B)[B

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 399
    .end local v22    # "responseStr":Ljava/lang/String;
    .restart local v21    # "responseStr":Ljava/lang/String;
    :try_start_9
    sget-object v25, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "[DeviceIdentity][processNetworkTask] gateway responseStr (getDID) : "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 401
    const-string v25, "MD5"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/com2us/module/util/DeviceIdentity;->createHash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v17

    .line 403
    .local v17, "recvMsgHash":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 404
    sget-object v25, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    const-string v27, "[DeviceIdentity][processNetworkTask] gateway response hash equals true"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v25, v21

    .line 405
    goto/16 :goto_0

    .line 352
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v7    # "decodeBase64byte":[B
    .end local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v17    # "recvMsgHash":Ljava/lang/String;
    .restart local v4    # "base64Data":[B
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v11    # "hash":Ljava/lang/String;
    .restart local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v24    # "timestamp":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 353
    .local v8, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_1

    .line 360
    .end local v4    # "base64Data":[B
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "hash":Ljava/lang/String;
    .end local v15    # "key":Ljava/lang/String;
    .end local v24    # "timestamp":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v13, v14

    .line 361
    .end local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    .restart local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_4
    :try_start_b
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_2

    .line 382
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v8

    move-object v5, v6

    .line 383
    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    .local v8, "e":Ljava/lang/RuntimeException;
    :goto_5
    :try_start_c
    sget-object v25, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    const-string v27, "[DeviceIdentity][processNetworkTask]"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 384
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 388
    :try_start_d
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object/from16 v22, v21

    .end local v21    # "responseStr":Ljava/lang/String;
    .restart local v22    # "responseStr":Ljava/lang/String;
    goto/16 :goto_3

    .line 385
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "responseStr":Ljava/lang/String;
    .restart local v21    # "responseStr":Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 386
    .local v8, "e":Ljava/io/IOException;
    :goto_6
    :try_start_e
    sget-object v25, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    const-string v27, "[DeviceIdentity][processNetworkTask]"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 388
    :try_start_f
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object/from16 v22, v21

    .end local v21    # "responseStr":Ljava/lang/String;
    .restart local v22    # "responseStr":Ljava/lang/String;
    goto/16 :goto_3

    .line 387
    .end local v8    # "e":Ljava/io/IOException;
    .end local v22    # "responseStr":Ljava/lang/String;
    .restart local v21    # "responseStr":Ljava/lang/String;
    :catchall_0
    move-exception v25

    .line 388
    :goto_7
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 389
    throw v25
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 322
    .end local v12    # "httpClientParams":Lorg/apache/http/params/HttpParams;
    .end local v23    # "sendData":Ljava/lang/String;
    :catchall_1
    move-exception v25

    :goto_8
    monitor-exit v26

    throw v25

    .line 407
    .restart local v7    # "decodeBase64byte":[B
    .restart local v12    # "httpClientParams":Lorg/apache/http/params/HttpParams;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v17    # "recvMsgHash":Ljava/lang/String;
    .restart local v23    # "sendData":Ljava/lang/String;
    :cond_2
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 409
    .end local v7    # "decodeBase64byte":[B
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "recvMsgHash":Ljava/lang/String;
    .end local v21    # "responseStr":Ljava/lang/String;
    .restart local v22    # "responseStr":Ljava/lang/String;
    :catch_4
    move-exception v8

    move-object/from16 v21, v22

    .line 410
    .end local v22    # "responseStr":Ljava/lang/String;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v21    # "responseStr":Ljava/lang/String;
    :goto_9
    :try_start_10
    sget-object v25, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    const-string v27, "[DeviceIdentity][processNetworkTask]"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 413
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_a
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 409
    .restart local v7    # "decodeBase64byte":[B
    .restart local v15    # "key":Ljava/lang/String;
    :catch_5
    move-exception v8

    goto :goto_9

    .line 387
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v7    # "decodeBase64byte":[B
    .end local v15    # "key":Ljava/lang/String;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    :catchall_2
    move-exception v25

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_7

    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catchall_3
    move-exception v25

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    move-object v13, v14

    .end local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_7

    .line 385
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    :catch_6
    move-exception v8

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_6

    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_7
    move-exception v8

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    move-object v13, v14

    .end local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_6

    .line 382
    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_8
    move-exception v8

    goto :goto_5

    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_9
    move-exception v8

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    move-object v13, v14

    .end local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_5

    .line 360
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    :catch_a
    move-exception v8

    goto :goto_4

    .line 322
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    :catchall_4
    move-exception v25

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_8

    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "responseStr":Ljava/lang/String;
    .restart local v22    # "responseStr":Ljava/lang/String;
    :catchall_5
    move-exception v25

    move-object/from16 v21, v22

    .end local v22    # "responseStr":Ljava/lang/String;
    .restart local v21    # "responseStr":Ljava/lang/String;
    goto :goto_8

    .end local v21    # "responseStr":Ljava/lang/String;
    .restart local v22    # "responseStr":Ljava/lang/String;
    :cond_3
    move-object/from16 v21, v22

    .end local v22    # "responseStr":Ljava/lang/String;
    .restart local v21    # "responseStr":Ljava/lang/String;
    goto :goto_a
.end method

.method private static removeProperty(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 239
    sget-object v0, Lcom/com2us/module/util/DeviceIdentity;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method private static setProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 227
    sget-object v0, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[DeviceIdentity][setProperty]name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V

    .line 228
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/com2us/module/util/DeviceIdentity;->prop:Ljava/util/Properties;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    :goto_0
    return-void

    .line 231
    :cond_0
    sget-object v0, Lcom/com2us/module/util/DeviceIdentity;->prop:Ljava/util/Properties;

    .line 233
    invoke-static {p2}, Lcom/com2us/module/crypt/Crypt;->str2byt(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/crypt/Crypt;->Encrypt([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/crypt/Crypt;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static declared-synchronized storeProperties(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    const-class v3, Lcom/com2us/module/util/DeviceIdentity;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/com2us/module/util/DeviceIdentity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[DeviceIdentity][storeProperties]"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/com2us/module/util/DeviceIdentity;->prop:Ljava/util/Properties;

    invoke-virtual {v5}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    const/4 v1, 0x0

    .line 278
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v2, Lcom/com2us/module/util/DeviceIdentity;->TARGET_PROPERTIES:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 279
    sget-object v2, Lcom/com2us/module/util/DeviceIdentity;->prop:Ljava/util/Properties;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 289
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    .line 282
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 287
    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 287
    if-eqz v1, :cond_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catch_5
    move-exception v2

    goto :goto_0

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 287
    if-eqz v1, :cond_1

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 288
    :cond_1
    :goto_1
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 275
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 287
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    goto :goto_1

    :catch_7
    move-exception v2

    goto :goto_0
.end method
