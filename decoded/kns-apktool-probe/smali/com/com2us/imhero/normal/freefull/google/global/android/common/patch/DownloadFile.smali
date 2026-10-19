.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;
.super Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;
.source "DownloadFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final CONNECTION_RETRY_MAX_COUNT:I = 0x5

.field static final TAILINFO_DATA_SIZE:I = 0x4

.field static final TAILINFO_FILE_NAME:I = 0x34

.field static final TAILINFO_VERSION:I = 0x44


# instance fields
.field private count:I

.field private downloadFileURL:Ljava/lang/String;

.field private downloadFileVers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downloadFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingSize:J

.field private maxContentSize:J

.field private refreshsize:J

.field private requestError:Z

.field private requestState:Z

.field private retrycount:I

.field private saveFileName:Ljava/lang/String;

.field private totalFileCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFiles:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFileVers:Ljava/util/ArrayList;

    .line 55
    iput v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->count:I

    .line 56
    iput v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->retrycount:I

    .line 57
    return-void
.end method

.method public static ByteStreamToArray([B)V
    .locals 0
    .param p0, "byteData"    # [B

    .prologue
    .line 495
    return-void
.end method

.method public static CutSoundFileInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 499
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "target.ogg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 500
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .local v6, "oggSource":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v9, "target.ogg"

    invoke-direct {v7, p0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .local v7, "oggTarget":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 511
    const/16 v2, 0x6c

    .line 513
    .local v2, "VersionSize":I
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 514
    .local v4, "fin":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 516
    .local v5, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 520
    .local v0, "FileSize":J
    long-to-int v9, v0

    new-array v3, v9, [B

    .line 522
    .local v3, "buffer":[B
    const/4 v8, 0x0

    .line 523
    .local v8, "read":I
    :cond_0
    long-to-int v9, v0

    invoke-virtual {v4, v3, v12, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 528
    long-to-int v9, v0

    sub-int/2addr v9, v2

    invoke-virtual {v5, v3, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 556
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 557
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 559
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 562
    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 83
    .local v0, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 94
    return-void

    .line 85
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 86
    iget-wide v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadingSize:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadingSize:J

    .line 88
    iget-wide v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadingSize:J

    iget-wide v4, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->refreshsize:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x186a0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 90
    iget-wide v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadingSize:J

    iput-wide v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->refreshsize:J

    .line 91
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->saveFileName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->maxContentSize:J

    iget-wide v6, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadingSize:J

    invoke-static {v2, v4, v5, v6, v7}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetPatchFileData(Ljava/lang/String;JJ)V

    goto :goto_0
.end method


# virtual methods
.method public ValidateFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 12
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "fileVersion"    # Ljava/lang/String;

    .prologue
    .line 144
    const/16 v7, 0x10

    new-array v0, v7, [B

    .line 145
    .local v0, "buf":[B
    const/4 v7, 0x4

    new-array v1, v7, [B

    .line 148
    .local v1, "buf2":[B
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v6, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v6, "rafile":Ljava/io/RandomAccessFile;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x44

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 150
    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x4

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 153
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v6, v1, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 154
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 166
    .local v3, "fileVer":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 168
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "ValidateFile version fail"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    const/4 v7, 0x0

    .line 187
    .end local v3    # "fileVer":Ljava/lang/String;
    .end local v6    # "rafile":Ljava/io/RandomAccessFile;
    :goto_0
    return v7

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 158
    const/4 v7, 0x0

    goto :goto_0

    .line 160
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 162
    const/4 v7, 0x0

    goto :goto_0

    .line 172
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fileVer":Ljava/lang/String;
    .restart local v6    # "rafile":Ljava/io/RandomAccessFile;
    :cond_0
    const-wide/16 v4, 0x0

    .line 173
    .local v4, "filesize":J
    const/4 v7, 0x0

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x18

    const/high16 v8, -0x1000000

    and-int/2addr v7, v8

    int-to-long v8, v7

    or-long/2addr v4, v8

    .line 174
    const/4 v7, 0x1

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    int-to-long v8, v7

    or-long/2addr v4, v8

    .line 175
    const/4 v7, 0x2

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int/2addr v7, v8

    int-to-long v8, v7

    or-long/2addr v4, v8

    .line 176
    const/4 v7, 0x3

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v8, v7

    or-long/2addr v4, v8

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-eqz v7, :cond_1

    .line 182
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ValidateFile Size fail "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    const/4 v7, 0x0

    goto :goto_0

    .line 187
    :cond_1
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public addFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public addFileVers(Ljava/lang/String;)V
    .locals 1
    .param p1, "ver"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFileVers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public downloadCheck()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 98
    iput v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->count:I

    .line 99
    iput v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->retrycount:I

    .line 100
    iget-object v3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    :goto_0
    return v2

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 105
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->GetNetProtocol()I

    move-result v0

    .line 107
    .local v0, "protocol":I
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;->NET_PROTOCOL_ADDITIONFILE_CHECK:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;->getOrder()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 108
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_ADDITION_DOWNLOADING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->getOrder()I

    move-result v2

    invoke-static {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetNetState(I)V

    .line 112
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 109
    :cond_2
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;->NET_PROTOCOL_VERSION_CHECK:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_PROTOCOL;->getOrder()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 110
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_FILE_DOWNLOADING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->getOrder()I

    move-result v2

    invoke-static {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetNetState(I)V

    goto :goto_1
.end method

.method public getTotalFileCount()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->totalFileCount:I

    return v0
.end method

.method public run()V
    .locals 28

    .prologue
    .line 193
    const/4 v9, 0x0

    .line 195
    .local v9, "connection":Ljava/net/HttpURLConnection;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->retrycount:I

    .line 197
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFiles:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v13, v0, :cond_0

    .line 487
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFiles:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFileVers:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 490
    return-void

    .line 199
    :cond_0
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadingSize:J

    .line 208
    :try_start_0
    new-instance v20, Ljava/net/URL;

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFileURL:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFileVers:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFiles:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 213
    .local v20, "url":Ljava/net/URL;
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "HTTP URL "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFiles:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->saveFileName:Ljava/lang/String;

    .line 217
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    .line 220
    .local v21, "urlConnection":Ljava/net/URLConnection;
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->getPatchPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v17, "patchDir":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->saveFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    .local v18, "patchFile":Ljava/io/File;
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 224
    .local v7, "blContinueDown":Ljava/lang/Boolean;
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 225
    .local v8, "blSkip":Ljava/lang/Boolean;
    const-wide/16 v14, 0x0

    .line 226
    .local v14, "i32FileSize":J
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 228
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFileVers:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->ValidateFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 232
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->count:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->count:I

    .line 234
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeAddFileCount()V

    .line 235
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "skip "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->count:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->totalFileCount:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->count:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->totalFileCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 238
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v23, "Complete call networkevent"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeCallNetworkEvent()V

    .line 252
    :cond_1
    :goto_2
    move-object/from16 v0, v21

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 253
    move-object/from16 v0, v21

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 256
    :goto_3
    const/16 v22, 0x7530

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFiles:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetFileDownloadFileName(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFileVers:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetFileDownloadVersion(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 263
    const-string v22, "Range"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "bytes="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2d

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v0, v14, v15}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeInitFileDownloadLog(IJ)V

    .line 271
    :goto_4
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    .line 272
    .local v19, "resCode":I
    sparse-switch v19, :sswitch_data_0

    .line 361
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Default "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :goto_5
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 197
    .end local v7    # "blContinueDown":Ljava/lang/Boolean;
    .end local v8    # "blSkip":Ljava/lang/Boolean;
    .end local v14    # "i32FileSize":J
    .end local v17    # "patchDir":Ljava/io/File;
    .end local v18    # "patchFile":Ljava/io/File;
    .end local v19    # "resCode":I
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "urlConnection":Ljava/net/URLConnection;
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 244
    .restart local v7    # "blContinueDown":Ljava/lang/Boolean;
    .restart local v8    # "blSkip":Ljava/lang/Boolean;
    .restart local v14    # "i32FileSize":J
    .restart local v17    # "patchDir":Ljava/io/File;
    .restart local v18    # "patchFile":Ljava/io/File;
    .restart local v20    # "url":Ljava/net/URL;
    .restart local v21    # "urlConnection":Ljava/net/URLConnection;
    :cond_2
    const/16 v22, 0x1

    :try_start_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 245
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v23, "============================================"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "trying to continue "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "File Loction "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v23, "============================================"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 365
    .end local v7    # "blContinueDown":Ljava/lang/Boolean;
    .end local v8    # "blSkip":Ljava/lang/Boolean;
    .end local v14    # "i32FileSize":J
    .end local v17    # "patchDir":Ljava/io/File;
    .end local v18    # "patchFile":Ljava/io/File;
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "urlConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v10

    .line 367
    .local v10, "e":Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v10}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 368
    const-string v22, "NETWORK"

    const-string v23, "MalformedURL"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    .line 255
    .end local v10    # "e":Ljava/net/MalformedURLException;
    .restart local v7    # "blContinueDown":Ljava/lang/Boolean;
    .restart local v8    # "blSkip":Ljava/lang/Boolean;
    .restart local v14    # "i32FileSize":J
    .restart local v17    # "patchDir":Ljava/io/File;
    .restart local v18    # "patchFile":Ljava/io/File;
    .restart local v20    # "url":Ljava/net/URL;
    .restart local v21    # "urlConnection":Ljava/net/URLConnection;
    :cond_3
    :try_start_3
    move-object/from16 v0, v21

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v9, v0

    goto/16 :goto_3

    .line 268
    :cond_4
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v0, v14, v15}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeInitFileDownloadLog(IJ)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 370
    .end local v7    # "blContinueDown":Ljava/lang/Boolean;
    .end local v8    # "blSkip":Ljava/lang/Boolean;
    .end local v14    # "i32FileSize":J
    .end local v17    # "patchDir":Ljava/io/File;
    .end local v18    # "patchFile":Ljava/io/File;
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "urlConnection":Ljava/net/URLConnection;
    :catch_1
    move-exception v10

    .line 372
    .local v10, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "IOException "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 374
    const-string v22, "NETWORK"

    const-string v23, "IOException : URL Connection"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v22, "ERROR"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "MESSAGE : "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    const-string v23, "No space left on device"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 377
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->requestError:Z

    .line 378
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetPatchError()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 404
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 277
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v7    # "blContinueDown":Ljava/lang/Boolean;
    .restart local v8    # "blSkip":Ljava/lang/Boolean;
    .restart local v14    # "i32FileSize":J
    .restart local v17    # "patchDir":Ljava/io/File;
    .restart local v18    # "patchFile":Ljava/io/File;
    .restart local v19    # "resCode":I
    .restart local v20    # "url":Ljava/net/URL;
    .restart local v21    # "urlConnection":Ljava/net/URLConnection;
    :sswitch_0
    const/16 v22, 0x1

    :try_start_5
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->requestError:Z

    .line 278
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetPatchError()V

    .line 279
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeCallNetworkEvent()V

    .line 280
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSendDownloadLog()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 403
    .end local v7    # "blContinueDown":Ljava/lang/Boolean;
    .end local v8    # "blSkip":Ljava/lang/Boolean;
    .end local v14    # "i32FileSize":J
    .end local v17    # "patchDir":Ljava/io/File;
    .end local v18    # "patchFile":Ljava/io/File;
    .end local v19    # "resCode":I
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "urlConnection":Ljava/net/URLConnection;
    :catchall_0
    move-exception v22

    .line 404
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 405
    throw v22

    .line 286
    .restart local v7    # "blContinueDown":Ljava/lang/Boolean;
    .restart local v8    # "blSkip":Ljava/lang/Boolean;
    .restart local v14    # "i32FileSize":J
    .restart local v17    # "patchDir":Ljava/io/File;
    .restart local v18    # "patchFile":Ljava/io/File;
    .restart local v19    # "resCode":I
    .restart local v20    # "url":Ljava/net/URL;
    .restart local v21    # "urlConnection":Ljava/net/URLConnection;
    :sswitch_1
    :try_start_6
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->maxContentSize:J

    .line 287
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v22

    if-eqz v22, :cond_5

    .line 404
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 288
    :cond_5
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_6

    .line 290
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdir()Z

    .line 298
    :cond_6
    new-instance v16, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 300
    .local v16, "in":Ljava/io/BufferedInputStream;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-nez v22, :cond_8

    .line 301
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 305
    .local v12, "fout":Ljava/io/FileOutputStream;
    :goto_7
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->refreshsize:J

    .line 306
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 307
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V

    .line 308
    const/16 v16, 0x0

    .line 309
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 310
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 311
    const/4 v12, 0x0

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFileVers:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->ValidateFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 315
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v23, "ValidateFile fail retry"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->requestError:Z

    .line 318
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 319
    add-int/lit8 v13, v13, -0x1

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->retrycount:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->retrycount:I

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->retrycount:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetPatchError()V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 404
    :cond_7
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 303
    .end local v12    # "fout":Ljava/io/FileOutputStream;
    :cond_8
    :try_start_8
    new-instance v12, Ljava/io/FileOutputStream;

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .restart local v12    # "fout":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 327
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->saveFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v6

    .line 329
    .local v6, "NameSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->saveFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, -0x3

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x6f

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->saveFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, -0x2

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x67

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->saveFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x67

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 334
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "CutSoundFileInfo "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->saveFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->getPatchPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->saveFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->CutSoundFileInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->saveFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->maxContentSize:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadingSize:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetPatchFileData(Ljava/lang/String;JJ)V

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->count:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->count:I

    .line 341
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->retrycount:I

    .line 343
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 346
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeAddFileCount()V

    .line 347
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeCallNetworkEvent()V

    .line 348
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSendDownloadLog()V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 352
    const-wide/16 v22, 0x19

    :try_start_9
    invoke-static/range {v22 .. v23}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    .line 354
    :catch_2
    move-exception v10

    .line 356
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_a
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    .line 381
    .end local v6    # "NameSize":I
    .end local v7    # "blContinueDown":Ljava/lang/Boolean;
    .end local v8    # "blSkip":Ljava/lang/Boolean;
    .end local v12    # "fout":Ljava/io/FileOutputStream;
    .end local v14    # "i32FileSize":J
    .end local v16    # "in":Ljava/io/BufferedInputStream;
    .end local v17    # "patchDir":Ljava/io/File;
    .end local v18    # "patchFile":Ljava/io/File;
    .end local v19    # "resCode":I
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "urlConnection":Ljava/net/URLConnection;
    .local v10, "e":Ljava/io/IOException;
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetPatchError()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 382
    add-int/lit8 v13, v13, -0x1

    .line 395
    const-wide/16 v22, 0x19

    :try_start_c
    invoke-static/range {v22 .. v23}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 404
    :goto_8
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 397
    :catch_3
    move-exception v11

    .line 399
    .local v11, "e2":Ljava/lang/InterruptedException;
    :try_start_d
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    .line 272
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xce -> :sswitch_1
        0x194 -> :sswitch_0
        0x198 -> :sswitch_0
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDownloadURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "URL"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadFileURL:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTotalFileCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->totalFileCount:I

    return-void
.end method
