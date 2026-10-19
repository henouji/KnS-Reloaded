.class public Lcom/com2us/hub2/Hub2AvatarManager;
.super Ljava/lang/Object;
.source "Hub2AvatarManager.java"


# static fields
.field private static _context:Landroid/content/Context;

.field private static downloadFlag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadUserID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/hub2/Hub2AvatarManager;->_context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckDownloadFlag(Ljava/lang/String;)Z
    .locals 2
    .param p0, "strCode"    # Ljava/lang/String;

    .prologue
    .line 657
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/com2us/hub2/Hub2AvatarManager;->downloadFlag:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 663
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 659
    :cond_0
    sget-object v1, Lcom/com2us/hub2/Hub2AvatarManager;->downloadFlag:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 660
    const/4 v1, 0x1

    goto :goto_1

    .line 657
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ExistFlag(Ljava/lang/String;)Z
    .locals 5
    .param p0, "strCode"    # Ljava/lang/String;

    .prologue
    .line 566
    const/4 v1, 0x0

    .line 568
    .local v1, "blExist":Z
    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getFlagPath()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "FileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    .local v2, "flagFile":Ljava/io/File;
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->CheckDownloadFlag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    const/4 v3, 0x0

    .line 584
    :goto_0
    return v3

    .line 577
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 580
    const/4 v1, 0x1

    :cond_1
    move v3, v1

    .line 584
    goto :goto_0
.end method

.method public static SearchArrayUserID(Ljava/lang/String;)Z
    .locals 2
    .param p0, "i64UserID"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/com2us/hub2/Hub2AvatarManager;->downloadUserID:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 65
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 61
    :cond_0
    sget-object v1, Lcom/com2us/hub2/Hub2AvatarManager;->downloadUserID:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const/4 v1, 0x1

    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized addUserID(Ljava/lang/String;)V
    .locals 2
    .param p0, "i64UserID"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v1, Lcom/com2us/hub2/Hub2AvatarManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/com2us/hub2/Hub2AvatarManager;->downloadUserID:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v1

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 200
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 203
    return-void

    .line 201
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static deleteCachedAvatar()V
    .locals 5

    .prologue
    .line 82
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getAvatarPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 84
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_2

    .line 89
    :cond_1
    return-void

    .line 85
    :cond_2
    aget-object v0, v3, v2

    .line 86
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static deleteCachedNoticeImg()V
    .locals 5

    .prologue
    .line 863
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getNoticeImgPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 864
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 865
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 866
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_2

    .line 870
    :cond_1
    return-void

    .line 866
    :cond_2
    aget-object v0, v3, v2

    .line 867
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 866
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized deleteUserID(Ljava/lang/String;)V
    .locals 2
    .param p0, "i64UserID"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v1, Lcom/com2us/hub2/Hub2AvatarManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/com2us/hub2/Hub2AvatarManager;->downloadUserID:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v1

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static downloadAvatarImgWithURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "i64UserID"    # Ljava/lang/String;
    .param p1, "strURL"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v0, Lcom/com2us/hub2/DownloadThread;

    invoke-direct {v0, p0, p1}, Lcom/com2us/hub2/DownloadThread;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 360
    return-void
.end method

.method public static downloadAvatarImgWithUserID(Ljava/lang/String;)V
    .locals 20
    .param p0, "i64UserID"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v6, 0x0

    .line 213
    .local v6, "connection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 215
    .local v7, "downloadingSize":I
    const/4 v13, 0x0

    .line 219
    .local v13, "requestError":Z
    :try_start_0
    new-instance v15, Ljava/net/URL;

    const-string v17, "http://test.hub.com2us.com/user/%s/picture"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p0, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 222
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    .line 224
    .local v16, "urlConnection":Ljava/net/URLConnection;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 225
    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 229
    :goto_0
    const/16 v17, 0x7d0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 231
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 232
    .local v14, "resCode":I
    const-string v17, "NETWORK"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "http DOWNLOAD AVATAR : res Code : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    sparse-switch v14, :sswitch_data_0

    .line 294
    :goto_1
    if-eqz v6, :cond_0

    .line 295
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 297
    .end local v14    # "resCode":I
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "urlConnection":Ljava/net/URLConnection;
    :cond_0
    :goto_2
    if-nez v13, :cond_1

    .line 298
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/com2us/hub2/Hub2AvatarManager;->nativeSetAvatarState(Ljava/lang/String;I)V

    .line 300
    :cond_1
    return-void

    .line 227
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v16    # "urlConnection":Ljava/net/URLConnection;
    :cond_2
    :try_start_1
    move-object/from16 v0, v16

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v6, v0

    goto :goto_0

    .line 236
    .restart local v14    # "resCode":I
    :sswitch_0
    const/4 v13, 0x1

    .line 237
    goto :goto_1

    .line 239
    :sswitch_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    .line 241
    .local v12, "maxContentSize":I
    const-string v17, "NETWORK"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Content Length : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getAvatarPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v3, "avatarDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 248
    new-instance v4, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ".png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    .local v4, "avatarFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 251
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 258
    :cond_3
    :goto_3
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 259
    .local v11, "in":Ljava/io/BufferedInputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 262
    .local v9, "fout":Ljava/io/FileOutputStream;
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 263
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const/16 v17, 0x64

    const/16 v18, 0x64

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 265
    .local v10, "imgScaleBitmap":Landroid/graphics/Bitmap;
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 267
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 270
    :cond_4
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 271
    const/4 v11, 0x0

    .line 272
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 273
    const/4 v9, 0x0

    .line 275
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 281
    .end local v3    # "avatarDir":Ljava/io/File;
    .end local v4    # "avatarFile":Ljava/io/File;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v10    # "imgScaleBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .end local v12    # "maxContentSize":I
    .end local v14    # "resCode":I
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "urlConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v8

    .line 282
    .local v8, "e":Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 283
    const-string v17, "NETWORK"

    const-string v18, "MalformedURL"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    if-eqz v6, :cond_0

    .line 295
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 255
    .end local v8    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "avatarDir":Ljava/io/File;
    .restart local v12    # "maxContentSize":I
    .restart local v14    # "resCode":I
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v16    # "urlConnection":Ljava/net/URLConnection;
    :cond_5
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 256
    new-instance v4, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ".png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v4    # "avatarFile":Ljava/io/File;
    goto :goto_3

    .line 284
    .end local v3    # "avatarDir":Ljava/io/File;
    .end local v4    # "avatarFile":Ljava/io/File;
    .end local v12    # "maxContentSize":I
    .end local v14    # "resCode":I
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "urlConnection":Ljava/net/URLConnection;
    :catch_1
    move-exception v8

    .line 285
    .local v8, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 286
    const-string v17, "NETWORK"

    const-string v18, "IOException : URL Connection"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v17, "ERROR"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "MESSAGE : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    const-string v18, "No space left on device"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v17

    if-eqz v17, :cond_6

    .line 289
    const/4 v13, 0x1

    .line 294
    :cond_6
    if-eqz v6, :cond_0

    .line 295
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 293
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 294
    if-eqz v6, :cond_7

    .line 295
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 296
    :cond_7
    throw v17

    .line 233
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x194 -> :sswitch_0
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static downloadFlagImgWithCode(Ljava/lang/String;)V
    .locals 22
    .param p0, "Code"    # Ljava/lang/String;

    .prologue
    .line 453
    const/4 v4, 0x0

    .line 454
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 456
    .local v5, "downloadingSize":I
    const/4 v15, 0x0

    .line 458
    .local v15, "requestError":Z
    invoke-static/range {p0 .. p0}, Lcom/com2us/hub2/Hub2AvatarManager;->CheckDownloadFlag(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, ".png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 466
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "http://hubimage.com2us.com/hubweb/hubapp/resources/peppermint/flag/"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 471
    .local v14, "path":Ljava/lang/String;
    :try_start_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 473
    .local v17, "url":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    .line 475
    .local v18, "urlConnection":Ljava/net/URLConnection;
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 476
    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 480
    :goto_1
    const/16 v19, 0x2710

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 482
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 483
    .local v16, "resCode":I
    const-string v19, "NETWORK"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "http DOWNLOAD Flag : res Code : "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    sparse-switch v16, :sswitch_data_0

    .line 556
    :cond_2
    :goto_2
    if-eqz v4, :cond_0

    .line 557
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 478
    .end local v16    # "resCode":I
    :cond_3
    :try_start_1
    move-object/from16 v0, v18

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v4, v0

    goto :goto_1

    .line 487
    .restart local v16    # "resCode":I
    :sswitch_0
    const/4 v15, 0x1

    .line 488
    goto :goto_2

    .line 491
    :sswitch_1
    sget-object v19, Lcom/com2us/hub2/Hub2AvatarManager;->downloadFlag:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v13

    .line 495
    .local v13, "maxContentSize":I
    const-string v19, "NETWORK"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Content Length : "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getFlagPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .local v7, "flagDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 502
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v8, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 504
    .local v8, "flagFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 505
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 512
    :cond_4
    :goto_3
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 513
    .local v12, "in":Ljava/io/BufferedInputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 516
    .local v9, "fout":Ljava/io/FileOutputStream;
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 517
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/16 v19, 0x64

    const/16 v20, 0x64

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 519
    .local v11, "imgScaleBitmap":Landroid/graphics/Bitmap;
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x64

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 521
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 524
    :cond_5
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 525
    const/4 v12, 0x0

    .line 526
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 527
    const/4 v9, 0x0

    .line 529
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 531
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    sget-object v19, Lcom/com2us/hub2/Hub2AvatarManager;->downloadFlag:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    .line 533
    sget-object v19, Lcom/com2us/hub2/Hub2AvatarManager;->downloadFlag:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_6

    .line 536
    sget-object v19, Lcom/com2us/hub2/Hub2AvatarManager;->downloadFlag:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 531
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 509
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "flagFile":Ljava/io/File;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v10    # "i":I
    .end local v11    # "imgScaleBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "in":Ljava/io/BufferedInputStream;
    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 510
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v8, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v8    # "flagFile":Ljava/io/File;
    goto :goto_3

    .line 543
    .end local v7    # "flagDir":Ljava/io/File;
    .end local v8    # "flagFile":Ljava/io/File;
    .end local v13    # "maxContentSize":I
    .end local v16    # "resCode":I
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "urlConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v6

    .line 544
    .local v6, "e":Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 545
    const-string v19, "NETWORK"

    const-string v20, "MalformedURL"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 556
    if-eqz v4, :cond_0

    .line 557
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 546
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v6

    .line 547
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 548
    const-string v19, "NETWORK"

    const-string v20, "IOException : URL Connection"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v19, "ERROR"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "MESSAGE : "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    const-string v20, "No space left on device"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v19

    if-eqz v19, :cond_8

    .line 551
    const/4 v15, 0x1

    .line 556
    :cond_8
    if-eqz v4, :cond_0

    .line 557
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 555
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    .line 556
    if-eqz v4, :cond_9

    .line 557
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 558
    :cond_9
    throw v19

    .line 484
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x194 -> :sswitch_0
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static downloadNoticeImgWithName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p0, "strName"    # Ljava/lang/String;
    .param p1, "strURL"    # Ljava/lang/String;

    .prologue
    .line 673
    const/4 v6, 0x0

    .line 674
    .local v6, "connection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 676
    .local v7, "downloadingSize":I
    const/4 v13, 0x0

    .line 680
    .local v13, "requestError":Z
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 682
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    .line 684
    .local v16, "urlConnection":Ljava/net/URLConnection;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 685
    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 689
    :goto_0
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 691
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 692
    .local v14, "resCode":I
    const-string v17, "NETWORK"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "http DOWNLOAD Flag : res Code : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    sparse-switch v14, :sswitch_data_0

    .line 754
    :goto_1
    if-eqz v6, :cond_0

    .line 755
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 760
    .end local v14    # "resCode":I
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "urlConnection":Ljava/net/URLConnection;
    :cond_0
    :goto_2
    return-void

    .line 687
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v16    # "urlConnection":Ljava/net/URLConnection;
    :cond_1
    :try_start_1
    move-object/from16 v0, v16

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v6, v0

    goto :goto_0

    .line 696
    .restart local v14    # "resCode":I
    :sswitch_0
    const/4 v13, 0x1

    .line 697
    goto :goto_1

    .line 699
    :sswitch_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    .line 701
    .local v12, "maxContentSize":I
    const-string v17, "NETWORK"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Content Length : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getNoticeImgPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 706
    .local v3, "NoticeDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 708
    new-instance v4, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ".png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 710
    .local v4, "NoticeImgFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 711
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 718
    :cond_2
    :goto_3
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 719
    .local v11, "in":Ljava/io/BufferedInputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 722
    .local v9, "fout":Ljava/io/FileOutputStream;
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 723
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const/16 v17, 0x5a

    const/16 v18, 0x3c

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 725
    .local v10, "imgScaleBitmap":Landroid/graphics/Bitmap;
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 727
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 730
    :cond_3
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 731
    const/4 v11, 0x0

    .line 732
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 733
    const/4 v9, 0x0

    .line 735
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 741
    .end local v3    # "NoticeDir":Ljava/io/File;
    .end local v4    # "NoticeImgFile":Ljava/io/File;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v10    # "imgScaleBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .end local v12    # "maxContentSize":I
    .end local v14    # "resCode":I
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "urlConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v8

    .line 742
    .local v8, "e":Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 743
    const-string v17, "NETWORK"

    const-string v18, "MalformedURL"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 754
    if-eqz v6, :cond_0

    .line 755
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 715
    .end local v8    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "NoticeDir":Ljava/io/File;
    .restart local v12    # "maxContentSize":I
    .restart local v14    # "resCode":I
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v16    # "urlConnection":Ljava/net/URLConnection;
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 716
    new-instance v4, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ".png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v4    # "NoticeImgFile":Ljava/io/File;
    goto :goto_3

    .line 744
    .end local v3    # "NoticeDir":Ljava/io/File;
    .end local v4    # "NoticeImgFile":Ljava/io/File;
    .end local v12    # "maxContentSize":I
    .end local v14    # "resCode":I
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "urlConnection":Ljava/net/URLConnection;
    :catch_1
    move-exception v8

    .line 745
    .local v8, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 746
    const-string v17, "NETWORK"

    const-string v18, "IOException : URL Connection"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v17, "ERROR"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "MESSAGE : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    const-string v18, "No space left on device"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v17

    if-eqz v17, :cond_5

    .line 749
    const/4 v13, 0x1

    .line 754
    :cond_5
    if-eqz v6, :cond_0

    .line 755
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 753
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 754
    if-eqz v6, :cond_6

    .line 755
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 756
    :cond_6
    throw v17

    .line 693
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x194 -> :sswitch_0
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getAvatarFileName(J)Ljava/lang/String;
    .locals 4
    .param p0, "i64UserID"    # J

    .prologue
    .line 171
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getAvatarPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "avatarFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getAvatarFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "strUserID"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getAvatarPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "avatarFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getAvatarPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/com2us/hub2/Hub2AvatarManager;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Avatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/com2us/hub2/Hub2AvatarManager;->_context:Landroid/content/Context;

    return-object v0
.end method

.method public static getFlagLength(Ljava/lang/String;)J
    .locals 6
    .param p0, "strCode"    # Ljava/lang/String;

    .prologue
    .line 589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getFlagPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "FileName":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 593
    .local v2, "length":J
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v1, "flagFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 601
    .end local v1    # "flagFile":Ljava/io/File;
    :cond_0
    return-wide v2
.end method

.method public static getFlagPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/com2us/hub2/Hub2AvatarManager;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNoticeImg(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12
    .param p0, "strName"    # Ljava/lang/String;
    .param p1, "strURL"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 795
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 797
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 798
    .local v5, "noticeImgFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 799
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v4, v10

    .line 803
    .local v4, "length":I
    new-array v0, v4, [B

    .line 807
    .local v0, "array":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 808
    .local v3, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 809
    .local v1, "bin":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .local v6, "offset":I
    move v7, v6

    .line 810
    .end local v6    # "offset":I
    .local v7, "offset":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v8

    .local v8, "read":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    if-lt v7, v4, :cond_1

    .line 815
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 834
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v7    # "offset":I
    .end local v8    # "read":I
    :goto_1
    const-string v9, "flagFile"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "read byte length : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    .end local v0    # "array":[B
    .end local v4    # "length":I
    .end local v5    # "noticeImgFile":Ljava/io/File;
    :cond_0
    return-object v0

    .line 812
    .restart local v0    # "array":[B
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v5    # "noticeImgFile":Ljava/io/File;
    .restart local v7    # "offset":I
    .restart local v8    # "read":I
    :cond_1
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    int-to-byte v9, v8

    :try_start_1
    aput-byte v9, v0, v7
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move v7, v6

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_0

    .line 817
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v7    # "offset":I
    .end local v8    # "read":I
    :catch_0
    move-exception v2

    .line 818
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v9, "ERROR"

    const-string v10, "FileNotFoundException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 821
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 822
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "ERROR"

    const-string v10, "IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 825
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 827
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "ERROR"

    const-string v10, "IndexOutOfBoundsException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 830
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v2

    .line 832
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "ERROR"

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getNoticeImgFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    .line 854
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getNoticeImgPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 855
    .local v0, "NoticeImgFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 859
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNoticeImgLength(Ljava/lang/String;)I
    .locals 6
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    .line 776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getNoticeImgPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "FileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 780
    .local v1, "length":I
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 782
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 783
    .local v2, "noticeImgFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    .line 788
    .end local v2    # "noticeImgFile":Ljava/io/File;
    :cond_0
    return v1
.end method

.method public static getNoticeImgPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/com2us/hub2/Hub2AvatarManager;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Notice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAvatar(Ljava/lang/String;)[B
    .locals 13
    .param p0, "i64UserID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 371
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->getAvatarFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "FileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    .line 374
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v2, "avatarFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 376
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v6, v10

    .line 380
    .local v6, "length":I
    new-array v1, v6, [B

    .line 384
    .local v1, "array":[B
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 385
    .local v5, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 386
    .local v3, "bin":Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .local v7, "offset":I
    move v8, v7

    .line 387
    .end local v7    # "offset":I
    .local v8, "offset":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v9

    .local v9, "read":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    if-lt v8, v6, :cond_2

    .line 391
    :cond_0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 410
    .end local v3    # "bin":Ljava/io/BufferedInputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v8    # "offset":I
    .end local v9    # "read":I
    :goto_1
    const-string v10, "AVATAR"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "read byte length : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v1    # "array":[B
    .end local v2    # "avatarFile":Ljava/io/File;
    .end local v6    # "length":I
    :cond_1
    return-object v1

    .line 389
    .restart local v1    # "array":[B
    .restart local v2    # "avatarFile":Ljava/io/File;
    .restart local v3    # "bin":Ljava/io/BufferedInputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "length":I
    .restart local v8    # "offset":I
    .restart local v9    # "read":I
    :cond_2
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    int-to-byte v10, v9

    :try_start_1
    aput-byte v10, v1, v8
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move v8, v7

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_0

    .line 393
    .end local v3    # "bin":Ljava/io/BufferedInputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v8    # "offset":I
    .end local v9    # "read":I
    :catch_0
    move-exception v4

    .line 394
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v10, "ERROR"

    const-string v11, "FileNotFoundException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 397
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 398
    .local v4, "e":Ljava/io/IOException;
    const-string v10, "ERROR"

    const-string v11, "IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 401
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 403
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "ERROR"

    const-string v11, "IndexOutOfBoundsException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 406
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v4

    .line 408
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "ERROR"

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getUserAvatarLength(Ljava/lang/String;)I
    .locals 4
    .param p0, "i64UserID"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 426
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->SearchArrayUserID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v2

    .line 428
    :cond_1
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->getAvatarFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "FileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v1, "avatarFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0
.end method

.method public static getUserFlag(Ljava/lang/String;)[B
    .locals 13
    .param p0, "strCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 607
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getFlagPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "FileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 610
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .local v4, "flagFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 612
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v6, v10

    .line 616
    .local v6, "length":I
    new-array v1, v6, [B

    .line 620
    .local v1, "array":[B
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 621
    .local v5, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 622
    .local v2, "bin":Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .local v7, "offset":I
    move v8, v7

    .line 623
    .end local v7    # "offset":I
    .local v8, "offset":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v9

    .local v9, "read":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    if-lt v8, v6, :cond_1

    .line 628
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 647
    .end local v2    # "bin":Ljava/io/BufferedInputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v8    # "offset":I
    .end local v9    # "read":I
    :goto_1
    const-string v10, "flagFile"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "read byte length : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v1    # "array":[B
    .end local v4    # "flagFile":Ljava/io/File;
    .end local v6    # "length":I
    :cond_0
    return-object v1

    .line 625
    .restart local v1    # "array":[B
    .restart local v2    # "bin":Ljava/io/BufferedInputStream;
    .restart local v4    # "flagFile":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "length":I
    .restart local v8    # "offset":I
    .restart local v9    # "read":I
    :cond_1
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    int-to-byte v10, v9

    :try_start_1
    aput-byte v10, v1, v8
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move v8, v7

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_0

    .line 630
    .end local v2    # "bin":Ljava/io/BufferedInputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v8    # "offset":I
    .end local v9    # "read":I
    :catch_0
    move-exception v3

    .line 631
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v10, "ERROR"

    const-string v11, "FileNotFoundException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 634
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 635
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "ERROR"

    const-string v11, "IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 638
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 640
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "ERROR"

    const-string v11, "IndexOutOfBoundsException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 643
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v3

    .line 645
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "ERROR"

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isExistAvatar(Ljava/lang/String;)Z
    .locals 5
    .param p0, "i64UserID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->SearchArrayUserID(Ljava/lang/String;)Z

    move-result v1

    .line 117
    .local v1, "retVal":Z
    if-eqz v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v3

    .line 121
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getAvatarPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "lineAvatarPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 123
    :cond_2
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->getAvatarFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "strFilePath":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    goto :goto_0
.end method

.method public static isExistNoticeImg(Ljava/lang/String;)Z
    .locals 5
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    .line 764
    const/4 v1, 0x0

    .line 766
    .local v1, "blExist":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getNoticeImgPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "FileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .local v2, "noticeImgFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 771
    :cond_0
    return v1
.end method

.method public static isGuestUser(J)Z
    .locals 2
    .param p0, "i64UserID"    # J

    .prologue
    .line 99
    const-wide v0, 0x14f46b0400L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadDefaultImg(J)V
    .locals 8
    .param p0, "i64UserID"    # J

    .prologue
    .line 308
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getAvatarPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "avatarDir":Ljava/io/File;
    const-string v5, "NETWORK"

    const-string v6, "loadDefaultImg :"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 313
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 315
    :cond_0
    invoke-static {p0, p1}, Lcom/com2us/hub2/Hub2AvatarManager;->isGuestUser(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 316
    new-instance v1, Ljava/io/File;

    const-string v5, "default.png"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    .local v1, "avatarFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 337
    :goto_1
    return-void

    .line 318
    .end local v1    # "avatarFile":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "avatarFile":Ljava/io/File;
    goto :goto_0

    .line 324
    :cond_2
    :try_start_0
    sget-object v5, Lcom/com2us/hub2/Hub2AvatarManager;->_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "common/game_res/Avatar_default.png.jpg"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 326
    .local v4, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 328
    .local v3, "fout":Ljava/io/FileOutputStream;
    invoke-static {v4, v3}, Lcom/com2us/hub2/Hub2AvatarManager;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 330
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 331
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 332
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 333
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 335
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static native nativeSetAvatarState(Ljava/lang/String;I)V
.end method

.method public static removeAvatarByUserNo(Ljava/lang/String;)Z
    .locals 4
    .param p0, "i64UserID"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getAvatarPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    const/4 v2, 0x0

    .line 193
    :goto_0
    return v2

    .line 191
    :cond_0
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->getAvatarFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "strFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "avatarFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method public static removeNoticeImgByNoticeNo(Ljava/lang/String;)Z
    .locals 4
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    .line 845
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getNoticeImgPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 846
    const/4 v2, 0x0

    .line 849
    :goto_0
    return v2

    .line 847
    :cond_0
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->getNoticeImgFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, "strFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 849
    .local v0, "NoticeImgFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sput-object p0, Lcom/com2us/hub2/Hub2AvatarManager;->_context:Landroid/content/Context;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/com2us/hub2/Hub2AvatarManager;->downloadUserID:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/com2us/hub2/Hub2AvatarManager;->downloadFlag:Ljava/util/ArrayList;

    .line 37
    return-void
.end method
