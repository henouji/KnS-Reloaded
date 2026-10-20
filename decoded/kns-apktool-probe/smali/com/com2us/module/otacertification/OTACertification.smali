.class public final Lcom/com2us/module/otacertification/OTACertification;
.super Ljava/lang/Object;
.source "OTACertification.java"

# interfaces
.implements Lcom/com2us/module/otacertification/OTACertificationBase;
.implements Lcom/com2us/module/otacertification/Constants;
.implements Lcom/com2us/module/otacertification/OTACertificationError;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/otacertification/OTACertification$ReceivedData;,
        Lcom/com2us/module/otacertification/OTACertification$SingletonHolder;
    }
.end annotation


# static fields
.field private static final SERVER:Ljava/lang/String; = "http://10.0.2.2:8080/common/ota/certify.c2s"


# instance fields
.field private logger:Lcom/com2us/module/util/Logger;

.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mTextView:Landroid/widget/TextView;

.field mainTime:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 51
    iput-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    .line 53
    iput-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mAlertDialog:Landroid/app/AlertDialog;

    .line 55
    iput-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->logger:Lcom/com2us/module/util/Logger;

    .line 57
    iput-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mTextView:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mainTime:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/com2us/module/otacertification/OTACertification;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/com2us/module/otacertification/OTACertification;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/com2us/module/otacertification/OTACertification;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/com2us/module/otacertification/OTACertification;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$3(Lcom/com2us/module/otacertification/OTACertification;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/com2us/module/otacertification/OTACertification;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/com2us/module/otacertification/OTACertification;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$5(Lcom/com2us/module/otacertification/OTACertification;)Lcom/com2us/module/util/Logger;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->logger:Lcom/com2us/module/util/Logger;

    return-object v0
.end method

.method public static getInstance()Lcom/com2us/module/otacertification/OTACertification;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/com2us/module/otacertification/OTACertification$SingletonHolder;->instance:Lcom/com2us/module/otacertification/OTACertification;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 141
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 142
    return-void
.end method

.method public getDialogMessage(I)Ljava/lang/String;
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 246
    packed-switch p1, :pswitch_data_0

    .line 263
    :pswitch_0
    const-string v0, "\uae30\ud0c0 \uc624\ub958\uc785\ub2c8\ub2e4."

    :goto_0
    return-object v0

    .line 249
    :pswitch_1
    const-string v0, "\uc11c\ubc84\ub85c\ubd80\ud130 \uc778\uc99d\uc774 \uc131\uacf5\ud558\uc600\uc2b5\ub2c8\ub2e4."

    goto :goto_0

    .line 251
    :pswitch_2
    const-string v0, "\uc11c\ubc84 \uc811\uc18d\uc744 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4."

    goto :goto_0

    .line 253
    :pswitch_3
    const-string v0, "\uc11c\ubc84\uc5d0\uc11c \uc804\uc1a1\ub41c \ud328\ud0b7\uc774 \uc720\ud6a8\ud55c \uac12\uc774 \uc544\ub2d9\ub2c8\ub2e4."

    goto :goto_0

    .line 255
    :pswitch_4
    const-string v0, "\uc11c\ubc84\uc5d0\uc11c \uc804\uc1a1\ub41c \ud328\ud0b7\uc774 null\uac12\uc785\ub2c8\ub2e4."

    goto :goto_0

    .line 257
    :pswitch_5
    const-string v0, "\uc804\uc1a1\ud560 \ub370\uc774\ud130\uac00 null\uac12\uc785\ub2c8\ub2e4."

    goto :goto_0

    .line 259
    :pswitch_6
    const-string v0, "\ud328\ud0b7 \ud30c\uc2f1\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4."

    goto :goto_0

    .line 261
    :pswitch_7
    const-string v0, "\uc11c\ubc84\ub85c\uc758 \ub370\uc774\ud130\uc804\uc1a1\uc774 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4."

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getDialogTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 231
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 233
    const-string v0, "OTA \uc778\uc99d\ubaa8\ub4c8 \uc131\uacf5"

    .line 237
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OTA \uc778\uc99d\ubaa8\ub4c8 \uc2e4\ud328 : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const-string v0, "OTACertification"

    return-object v0
.end method

.method public getPermission()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/com2us/module/otacertification/OTACertification;->PERMISSION:[Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/com2us/module/otacertification/OTACertification;->Version:Ljava/lang/String;

    return-object v0
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public onResult(ZILjava/lang/String;)V
    .locals 2
    .param p1, "isVerified"    # Z
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/otacertification/OTACertification$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/com2us/module/otacertification/OTACertification$3;-><init>(Lcom/com2us/module/otacertification/OTACertification;IZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method public processNetworkTask()Ljava/lang/Object;
    .locals 21

    .prologue
    .line 347
    const/16 v16, 0x0

    .line 348
    .local v16, "responseStr":Ljava/lang/String;
    const/4 v11, 0x0

    .line 349
    .local v11, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v4, 0x0

    .line 351
    .local v4, "client":Lorg/apache/http/client/HttpClient;
    new-instance v10, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v10}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 353
    .local v10, "httpClientParams":Lorg/apache/http/params/HttpParams;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 355
    .local v6, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "appid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v17, "mac"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/com2us/module/util/WrapperUtility;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    .line 359
    .local v13, "jsonStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/otacertification/OTACertification;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v17, v0

    const-string v18, "OTACertification"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Send data"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    if-nez v13, :cond_0

    const/16 v17, 0x0

    .line 404
    :goto_0
    return-object v17

    .line 364
    :cond_0
    const/4 v8, 0x0

    .line 366
    .local v8, "entity":Lorg/apache/http/entity/StringEntity;
    :try_start_0
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .local v5, "client":Lorg/apache/http/client/HttpClient;
    :try_start_1
    new-instance v9, Lorg/apache/http/entity/StringEntity;

    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-direct {v9, v13, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v8    # "entity":Lorg/apache/http/entity/StringEntity;
    .local v9, "entity":Lorg/apache/http/entity/StringEntity;
    move-object v8, v9

    .line 373
    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v8    # "entity":Lorg/apache/http/entity/StringEntity;
    :goto_1
    :try_start_2
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    const-string v17, "http://10.0.2.2:8080/common/ota/certify.c2s"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    .end local v11    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v12, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_3
    invoke-virtual {v12, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 376
    const-string v17, "Content-Type"

    const-string v18, "text/html"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-interface {v5, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 380
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 382
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    .line 383
    .local v15, "responseEntity":Lorg/apache/http/HttpEntity;
    if-eqz v15, :cond_1

    .line 384
    invoke-static {v15}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v16

    .line 385
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 397
    .end local v15    # "responseEntity":Lorg/apache/http/HttpEntity;
    :cond_1
    :goto_2
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v4, v5

    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    move-object v11, v12

    .line 400
    .end local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_3
    if-eqz v16, :cond_3

    move-object/from16 v17, v16

    .line 401
    goto :goto_0

    .line 369
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    :catch_0
    move-exception v7

    .line 371
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 393
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v7

    move-object v4, v5

    .line 394
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    .local v7, "e":Ljava/lang/RuntimeException;
    :goto_4
    :try_start_5
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 397
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_3

    .line 390
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    const/16 v17, 0x0

    const/16 v18, 0x3

    const/16 v19, 0x0

    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/com2us/module/otacertification/OTACertification;->onResult(ZILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 393
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    move-object v11, v12

    .end local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_4

    .line 395
    :catch_3
    move-exception v17

    .line 397
    :goto_5
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_3

    .line 396
    :catchall_0
    move-exception v17

    .line 397
    :goto_6
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 398
    throw v17

    .line 404
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 396
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    :catchall_1
    move-exception v17

    move-object v4, v5

    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_6

    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v11    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catchall_2
    move-exception v17

    move-object v4, v5

    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    move-object v11, v12

    .end local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_6

    .line 395
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    :catch_4
    move-exception v17

    move-object v4, v5

    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_5

    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v11    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_5
    move-exception v17

    move-object v4, v5

    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    move-object v11, v12

    .end local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_5

    .line 393
    :catch_6
    move-exception v7

    goto :goto_4
.end method

.method public release()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/otacertification/OTACertification$2;

    invoke-direct {v1, p0}, Lcom/com2us/module/otacertification/OTACertification$2;-><init>(Lcom/com2us/module/otacertification/OTACertification;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/com2us/module/otacertification/OTACertification;->onRelease()V

    .line 160
    return-void
.end method

.method public requestNetwork()V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/com2us/module/otacertification/OTACertification$4;

    invoke-direct {v0, p0}, Lcom/com2us/module/otacertification/OTACertification$4;-><init>(Lcom/com2us/module/otacertification/OTACertification;)V

    .line 342
    invoke-virtual {v0}, Lcom/com2us/module/otacertification/OTACertification$4;->start()V

    .line 343
    return-void
.end method

.method public setDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "dialogBuilder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/com2us/module/otacertification/OTACertification;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 273
    return-void
.end method

.method public setLogged(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0, p1}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 288
    return-void
.end method

.method public start(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 92
    iput-object p1, p0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    .line 95
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 97
    new-instance v4, Lcom/com2us/module/otacertification/OTACertification$1;

    invoke-direct {v4, p0}, Lcom/com2us/module/otacertification/OTACertification$1;-><init>(Lcom/com2us/module/otacertification/OTACertification;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 95
    iput-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 106
    const-string v3, "OTACertification"

    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;Landroid/app/Activity;)Lcom/com2us/module/util/Logger;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->logger:Lcom/com2us/module/util/Logger;

    .line 108
    invoke-virtual {p0}, Lcom/com2us/module/otacertification/OTACertification;->requestNetwork()V

    .line 110
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 113
    iget-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    const-string v4, "OTA \uc778\uc99d\ubaa8\ub4c8\uc774 \ud3ec\ud568\ub418\uc5b4 \uc788\uc2b5\ub2c8\ub2e4."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 114
    .local v2, "toast":Landroid/widget/Toast;
    const/16 v3, 0x50

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v6, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 115
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 117
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mTextView:Landroid/widget/TextView;

    .line 118
    iget-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mTextView:Landroid/widget/TextView;

    const-string v4, "OTA"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const-string v1, "#888888"

    .line 120
    .local v1, "strTextColor":Ljava/lang/String;
    iget-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mTextView:Landroid/widget/TextView;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    .line 122
    iget-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mTextView:Landroid/widget/TextView;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHeight(I)V

    .line 123
    iget-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mTextView:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 126
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 127
    iget-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 128
    iget-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 129
    iget-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 131
    iget-object v3, p0, Lcom/com2us/module/otacertification/OTACertification;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/com2us/module/otacertification/OTACertification;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/com2us/module/otacertification/OTACertification;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {p0}, Lcom/com2us/module/otacertification/OTACertification;->execute()V

    .line 135
    return-void
.end method
