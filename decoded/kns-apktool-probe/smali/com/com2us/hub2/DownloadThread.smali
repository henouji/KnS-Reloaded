.class public Lcom/com2us/hub2/DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# instance fields
.field private strURL:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "i64UserID"    # Ljava/lang/String;
    .param p2, "strURL"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/com2us/hub2/DownloadThread;->userID:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/com2us/hub2/DownloadThread;->strURL:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 30
    const/4 v13, 0x0

    .line 32
    .local v13, "requestError":Z
    const/4 v6, 0x0

    .line 37
    .local v6, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/hub2/DownloadThread;->strURL:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    .line 42
    .local v16, "urlConnection":Ljava/net/URLConnection;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 43
    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 47
    :goto_0
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 49
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 50
    .local v14, "resCode":I
    const-string v17, "NETWORK"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "http DOWNLOAD AVATAR res Code : "

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sparse-switch v14, :sswitch_data_0

    .line 130
    :goto_1
    if-eqz v6, :cond_0

    .line 131
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    .end local v14    # "resCode":I
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "urlConnection":Ljava/net/URLConnection;
    :cond_0
    :goto_2
    if-nez v13, :cond_1

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/hub2/DownloadThread;->userID:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Lcom/com2us/hub2/Hub2AvatarManager;->nativeSetAvatarState(Ljava/lang/String;I)V

    .line 136
    :cond_1
    return-void

    .line 45
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v16    # "urlConnection":Ljava/net/URLConnection;
    :cond_2
    :try_start_1
    move-object/from16 v0, v16

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v6, v0

    goto :goto_0

    .line 54
    .restart local v14    # "resCode":I
    :sswitch_0
    const/4 v13, 0x1

    .line 55
    goto :goto_1

    .line 57
    :sswitch_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    .line 62
    .local v12, "maxContentSize":I
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->getAvatarPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v3, "avatarDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 66
    new-instance v4, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/hub2/DownloadThread;->userID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ".png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v4, "avatarFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 69
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 77
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/hub2/DownloadThread;->userID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/com2us/hub2/Hub2AvatarManager;->addUserID(Ljava/lang/String;)V

    .line 79
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 80
    .local v11, "in":Ljava/io/BufferedInputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    .local v9, "fout":Ljava/io/FileOutputStream;
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 85
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-nez v5, :cond_5

    .line 87
    new-instance v17, Ljava/io/IOException;

    const-string v18, "file is Empty."

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v3    # "avatarDir":Ljava/io/File;
    .end local v4    # "avatarFile":Ljava/io/File;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .end local v12    # "maxContentSize":I
    .end local v14    # "resCode":I
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "urlConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v7

    .line 110
    .local v7, "e":Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 111
    const-string v17, "NETWORK"

    const-string v18, "MalformedURL"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    const/4 v13, 0x1

    .line 130
    if-eqz v6, :cond_0

    .line 131
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 73
    .end local v7    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "avatarDir":Ljava/io/File;
    .restart local v12    # "maxContentSize":I
    .restart local v14    # "resCode":I
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v16    # "urlConnection":Ljava/net/URLConnection;
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 74
    new-instance v4, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/hub2/DownloadThread;->userID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ".png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v4    # "avatarFile":Ljava/io/File;
    goto :goto_3

    .line 90
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v11    # "in":Ljava/io/BufferedInputStream;
    :cond_5
    const/16 v17, 0x64

    const/16 v18, 0x64

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 92
    .local v10, "imgScaleBitmap":Landroid/graphics/Bitmap;
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 94
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 97
    :cond_6
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 98
    const/4 v11, 0x0

    .line 99
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 100
    const/4 v9, 0x0

    .line 102
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/hub2/DownloadThread;->userID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/com2us/hub2/Hub2AvatarManager;->deleteUserID(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 113
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
    :catch_1
    move-exception v7

    .line 114
    .local v7, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    const-string v17, "NETWORK"

    const-string v18, "IOException : URL Connection"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v17, "ERROR"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "111 MESSAGE : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    const-string v18, "No space left on device"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v17

    if-eqz v17, :cond_7

    .line 118
    const/4 v13, 0x1

    .line 120
    :cond_7
    const/4 v13, 0x1

    .line 130
    if-eqz v6, :cond_0

    .line 131
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 122
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 124
    .local v8, "ets":Ljava/lang/Exception;
    :try_start_5
    const-string v17, "ERROR"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "222 MESSAGE : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 130
    if-eqz v6, :cond_0

    .line 131
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 129
    .end local v8    # "ets":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 130
    if-eqz v6, :cond_8

    .line 131
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 132
    :cond_8
    throw v17

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x194 -> :sswitch_0
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method
