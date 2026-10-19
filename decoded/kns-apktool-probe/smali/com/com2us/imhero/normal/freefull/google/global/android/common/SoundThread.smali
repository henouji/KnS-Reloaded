.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;
.super Ljava/lang/Thread;
.source "SoundThread.java"


# static fields
.field private static byAesIV:[B


# instance fields
.field private final DATA_FILE_HEADER_SIZE:I

.field cSoundManager:Lcom/com2us/wrapper/media/CSoundManager;

.field cSoundPlayManager:Lcom/com2us/wrapper/media/CSoundManager;

.field private count:I

.field private fileSize:J

.field private nArrayCount:I

.field private nStructureSize:I

.field private soundindex:I

.field private strAESKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->byAesIV:[B

    return-void

    :array_0
    .array-data 1
        -0x22t
        0x29t
        0x51t
        0x6t
        -0x2dt
        -0x79t
        0x2ft
        -0x6ct
        -0x69t
        -0x7dt
        -0x6ct
        0x2ft
        -0x24t
        -0x61t
        0x1t
        -0x1et
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    const/16 v0, 0xc

    iput v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->DATA_FILE_HEADER_SIZE:I

    .line 32
    const-string v0, "ImHeroDataEncryp"

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->strAESKey:Ljava/lang/String;

    .line 37
    iput p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->soundindex:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->count:I

    .line 39
    const/16 v0, 0x6c

    iput v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->nStructureSize:I

    .line 40
    return-void
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .locals 5
    .param p0, "cipherText"    # [B
    .param p1, "encryptionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 218
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 219
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->byAesIV:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 220
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public ReadInt([BI)I
    .locals 5
    .param p1, "pbyBuf"    # [B
    .param p2, "i"    # I

    .prologue
    .line 192
    const/4 v2, 0x0

    .local v2, "i32Value":I
    const/4 v0, 0x0

    .line 197
    .local v0, "i32Idx":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i32Idx":I
    .local v1, "i32Idx":I
    add-int v3, p2, v0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 198
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i32Idx":I
    .restart local v0    # "i32Idx":I
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 199
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 200
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 202
    return v2
.end method

.method public ReadWord([BI)I
    .locals 3
    .param p1, "pbyBuf"    # [B
    .param p2, "i"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "i16NewValue":I
    aget-byte v1, p1, p2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 210
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 211
    return v0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 62
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "SoundThread run"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    const/4 v9, 0x0

    .line 67
    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetDownPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->strResFolderName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "dt_soundinfo.dat"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v12, "r"

    invoke-direct {v10, v7, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    int-to-long v12, v12

    iput-wide v12, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->fileSize:J

    .line 78
    iget-wide v12, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->fileSize:J

    long-to-int v12, v12

    add-int/lit8 v12, v12, -0xc

    new-array v8, v12, [B

    .line 81
    .local v8, "ptbyte":[B
    const-wide/16 v12, 0xc

    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 82
    invoke-virtual {v10, v8}, Ljava/io/RandomAccessFile;->read([B)I

    .line 83
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 86
    iget-object v12, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->strAESKey:Ljava/lang/String;

    invoke-static {v8, v12}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->decrypt([BLjava/lang/String;)[B

    move-result-object v0

    .line 87
    .local v0, "bytedecrypt":[B
    const/4 v1, 0x0

    .line 89
    .local v1, "byteindex":I
    add-int/lit8 v1, v1, 0x4

    .line 90
    add-int/lit8 v1, v1, 0x2

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->ReadWord([BI)I

    move-result v12

    iput v12, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->nArrayCount:I

    add-int/lit8 v1, v1, 0x2

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->ReadWord([BI)I

    move-result v12

    iput v12, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->nStructureSize:I

    add-int/lit8 v1, v1, 0x2

    .line 95
    add-int/lit8 v1, v1, 0x2

    .line 97
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SoundThread nArrayCount "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->nArrayCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SoundThread nStructureSize "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->nStructureSize:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v12, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->nArrayCount:I

    if-lt v4, v12, :cond_0

    move-object v9, v10

    .line 188
    .end local v0    # "bytedecrypt":[B
    .end local v1    # "byteindex":I
    .end local v4    # "i":I
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "ptbyte":[B
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 102
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "bytedecrypt":[B
    .restart local v1    # "byteindex":I
    .restart local v4    # "i":I
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "ptbyte":[B
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    const/16 v6, 0x40

    .line 104
    .local v6, "lastindex":I
    iget v12, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->nStructureSize:I

    mul-int/2addr v12, v4

    add-int/lit8 v1, v12, 0xc

    .line 114
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v0, v1, v6}, Ljava/lang/String;-><init>([BII)V

    .line 115
    .local v11, "soundFile":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 116
    new-instance v11, Ljava/lang/String;

    .end local v11    # "soundFile":Ljava/lang/String;
    invoke-direct {v11, v0, v1, v6}, Ljava/lang/String;-><init>([BII)V

    .line 118
    .restart local v11    # "soundFile":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x40

    .line 121
    new-instance v2, Ljava/lang/String;

    const/16 v12, 0x20

    invoke-direct {v2, v0, v1, v12}, Ljava/lang/String;-><init>([BII)V

    .line 122
    .local v2, "comment":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x20

    .line 126
    add-int/lit8 v1, v1, 0x4

    .line 129
    add-int/lit8 v1, v1, 0x4

    .line 132
    add-int/lit8 v1, v1, 0x4

    .line 135
    add-int/lit8 v1, v1, 0x4

    .line 138
    add-int/lit8 v1, v1, 0x4

    .line 141
    add-int/lit8 v1, v1, 0x4

    .line 144
    add-int/lit8 v1, v1, 0x4

    .line 147
    add-int/lit8 v1, v1, 0x4

    .line 150
    add-int/lit8 v1, v1, 0x4

    .line 153
    add-int/lit8 v1, v1, 0x4

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->ReadInt([BI)I

    move-result v5

    .line 157
    .local v5, "index":I
    add-int/lit8 v1, v1, 0x4

    .line 172
    const-wide/16 v12, 0xa

    invoke-static {v12, v13}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->sleep(J)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "bytedecrypt":[B
    .end local v1    # "byteindex":I
    .end local v2    # "comment":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v6    # "lastindex":I
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "ptbyte":[B
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "soundFile":Ljava/lang/String;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 178
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 180
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 181
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 183
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 181
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 178
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v3

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 175
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v3

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public setCSoundManager(Lcom/com2us/wrapper/media/CSoundManager;Lcom/com2us/wrapper/media/CSoundManager;)V
    .locals 0
    .param p1, "cSoundManager"    # Lcom/com2us/wrapper/media/CSoundManager;
    .param p2, "cSoundPlayManager"    # Lcom/com2us/wrapper/media/CSoundManager;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->cSoundManager:Lcom/com2us/wrapper/media/CSoundManager;

    .line 45
    iput-object p2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/SoundThread;->cSoundPlayManager:Lcom/com2us/wrapper/media/CSoundManager;

    .line 46
    return-void
.end method
