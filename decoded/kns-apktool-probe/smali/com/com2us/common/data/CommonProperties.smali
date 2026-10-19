.class public final Lcom/com2us/common/data/CommonProperties;
.super Ljava/lang/Object;
.source "CommonProperties.java"


# static fields
.field private static final COMMON_DATA:Ljava/lang/String; = "CommonData.dat"

.field private static final COMMON_DATA_PROPERTIES:Ljava/lang/String;

.field private static properties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "CommonData.dat"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/com2us/common/data/CommonProperties;->COMMON_DATA_PROPERTIES:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/com2us/common/data/CommonProperties;->properties:Ljava/util/Properties;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v1, Lcom/com2us/common/data/CommonProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/com2us/common/data/CommonProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized loadProperties(Landroid/content/Context;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-class v10, Lcom/com2us/common/data/CommonProperties;

    monitor-enter v10

    const/4 v7, 0x0

    .line 29
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "/data/data/"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lcom/com2us/common/data/CommonProperties;->COMMON_DATA_PROPERTIES:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_1

    .line 57
    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .end local v6    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v10

    return-void

    .line 35
    .restart local v6    # "file":Ljava/io/File;
    :cond_1
    :try_start_2
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    const/16 v9, 0x8

    :try_start_3
    new-array v2, v9, [B

    .line 38
    .local v2, "crc32":[B
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v9, v12

    add-int/lit8 v9, v9, -0x8

    new-array v5, v9, [B

    .line 40
    .local v5, "encryptedData":[B
    const/4 v9, 0x0

    const/16 v11, 0x8

    invoke-virtual {v8, v2, v9, v11}, Ljava/io/FileInputStream;->read([BII)I

    .line 41
    invoke-virtual {v8, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "android_id"

    invoke-static {v9, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "androidId":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 47
    :goto_1
    const-string v9, "AES"

    invoke-static {v9, v0, v5}, Lcom/com2us/common/security/Crypto;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v3

    .line 48
    .local v3, "decryptedData":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 50
    .local v1, "bytebuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    invoke-static {v3}, Lcom/com2us/common/security/Crypto;->generateCRC32([B)J

    move-result-wide v14

    cmp-long v9, v12, v14

    if-nez v9, :cond_2

    .line 52
    sget-object v9, Lcom/com2us/common/data/CommonProperties;->properties:Ljava/util/Properties;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v9, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 57
    :cond_2
    if-eqz v8, :cond_5

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 45
    .end local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "decryptedData":[B
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :try_start_5
    const-string v0, "CommonData.dat"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 54
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v2    # "crc32":[B
    .end local v5    # "encryptedData":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 55
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 57
    if-eqz v7, :cond_0

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v9

    goto :goto_0

    .line 56
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 57
    :goto_3
    if-eqz v7, :cond_4

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 58
    :cond_4
    :goto_4
    :try_start_9
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 27
    :catchall_1
    move-exception v9

    :goto_5
    monitor-exit v10

    throw v9

    .line 57
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "crc32":[B
    .restart local v3    # "decryptedData":[B
    .restart local v5    # "encryptedData":[B
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "crc32":[B
    .end local v3    # "decryptedData":[B
    .end local v5    # "encryptedData":[B
    :catch_3
    move-exception v9

    goto :goto_0

    .end local v6    # "file":Ljava/io/File;
    :catch_4
    move-exception v11

    goto :goto_4

    .line 56
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 54
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 27
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "crc32":[B
    .restart local v3    # "decryptedData":[B
    .restart local v5    # "encryptedData":[B
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :cond_5
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static declared-synchronized removeProperty(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v1, Lcom/com2us/common/data/CommonProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/com2us/common/data/CommonProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v1

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v1, Lcom/com2us/common/data/CommonProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/com2us/common/data/CommonProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v1

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized storeProperties(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-class v10, Lcom/com2us/common/data/CommonProperties;

    monitor-enter v10

    const/4 v7, 0x0

    .line 79
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "/data/data/"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lcom/com2us/common/data/CommonProperties;->COMMON_DATA_PROPERTIES:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v6, "file":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v3, "data":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Lcom/com2us/common/data/CommonProperties;->properties:Ljava/util/Properties;

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v11}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 85
    const/16 v9, 0x8

    new-array v2, v9, [B

    .line 86
    .local v2, "crc32":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 87
    .local v1, "bytebuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/common/security/Crypto;->generateCRC32([B)J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "android_id"

    invoke-static {v9, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "androidId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 92
    :goto_0
    const-string v9, "AES"

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-static {v9, v0, v11}, Lcom/com2us/common/security/Crypto;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v5

    .line 94
    .local v5, "encryptData":[B
    invoke-virtual {v8, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 95
    invoke-virtual {v8, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 100
    if-eqz v8, :cond_3

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v7, v8

    .line 102
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "crc32":[B
    .end local v3    # "data":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "encryptData":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    monitor-exit v10

    return-void

    .line 90
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "crc32":[B
    .restart local v3    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_3
    const-string v0, "CommonData.dat"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 97
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "crc32":[B
    .end local v3    # "data":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 98
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    if-eqz v7, :cond_0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v9

    goto :goto_1

    .line 99
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 100
    :goto_3
    if-eqz v7, :cond_2

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 101
    :cond_2
    :goto_4
    :try_start_7
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 77
    :catchall_1
    move-exception v9

    :goto_5
    monitor-exit v10

    throw v9

    .line 100
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "crc32":[B
    .restart local v3    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "encryptData":[B
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "crc32":[B
    .end local v3    # "data":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "encryptData":[B
    .end local v6    # "file":Ljava/io/File;
    :catch_3
    move-exception v11

    goto :goto_4

    .line 99
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 97
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 77
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "crc32":[B
    .restart local v3    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "encryptData":[B
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v9

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static declared-synchronized tooString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    const-class v1, Lcom/com2us/common/data/CommonProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/com2us/common/data/CommonProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
