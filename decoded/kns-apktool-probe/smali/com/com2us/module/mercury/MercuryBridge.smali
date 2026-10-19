.class public Lcom/com2us/module/mercury/MercuryBridge;
.super Ljava/lang/Object;
.source "MercuryBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/mercury/MercuryBridge$RecommendType;,
        Lcom/com2us/module/mercury/MercuryBridge$SendToServerListner;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$com2us$module$mercury$MercuryBridge$RecommendType:[I

.field private static isUsingStaging:Z


# instance fields
.field private URL:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private logger:Lcom/com2us/module/util/Logger;

.field private mercuryBridgeListner:Lcom/com2us/module/mercury/MercuryBridgeListner;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private stagingURL:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$com2us$module$mercury$MercuryBridge$RecommendType()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/com2us/module/mercury/MercuryBridge;->$SWITCH_TABLE$com$com2us$module$mercury$MercuryBridge$RecommendType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->values()[Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->RECOMMEND_EMAIL:Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    invoke-virtual {v1}, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->RECOMMEND_SMS:Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    invoke-virtual {v1}, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/com2us/module/mercury/MercuryBridge;->$SWITCH_TABLE$com$com2us$module$mercury$MercuryBridge$RecommendType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/module/mercury/MercuryBridge;->isUsingStaging:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryBridge;->activity:Landroid/app/Activity;

    .line 29
    const-string v0, "Mercury"

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    .line 33
    const-string v0, "http://m.mercury.com2us.com/api/messenger"

    iput-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->URL:Ljava/lang/String;

    .line 34
    const-string v0, "http://test.mercury.com2us.com/api/messenger"

    iput-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->stagingURL:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryBridge;->mercuryBridgeListner:Lcom/com2us/module/mercury/MercuryBridgeListner;

    .line 37
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryBridge;->progressDialog:Landroid/app/ProgressDialog;

    .line 49
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryBridge;->activity:Landroid/app/Activity;

    .line 50
    return-void
.end method

.method private declared-synchronized ProgressDialogDismiss(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Dismiss Dialog"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 362
    new-instance v0, Lcom/com2us/module/mercury/MercuryBridge$4;

    invoke-direct {v0, p0}, Lcom/com2us/module/mercury/MercuryBridge$4;-><init>(Lcom/com2us/module/mercury/MercuryBridge;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized ProgressDialogShow(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Show Dialog"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    monitor-exit p0

    return-void

    .line 346
    :cond_0
    :try_start_1
    new-instance v0, Lcom/com2us/module/mercury/MercuryBridge$3;

    invoke-direct {v0, p0, p1}, Lcom/com2us/module/mercury/MercuryBridge$3;-><init>(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$0(Lcom/com2us/module/mercury/MercuryBridge;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/com2us/module/mercury/MercuryBridge;->ProgressDialogDismiss(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/com2us/module/mercury/MercuryBridge;->ProgressDialogShow(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$3(Lcom/com2us/module/mercury/MercuryBridge;)Lcom/com2us/module/util/Logger;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    return-object v0
.end method

.method static synthetic access$4(Lcom/com2us/module/mercury/MercuryBridge;I)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/com2us/module/mercury/MercuryBridge;->postCallBack(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/com2us/module/mercury/MercuryBridge;Ljava/lang/String;Lcom/com2us/module/mercury/MercuryBridge$RecommendType;Lcom/com2us/module/mercury/MercuryBridge$SendToServerListner;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/com2us/module/mercury/MercuryBridge;->sendToServer(Ljava/lang/String;Lcom/com2us/module/mercury/MercuryBridge$RecommendType;Lcom/com2us/module/mercury/MercuryBridge$SendToServerListner;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/com2us/module/mercury/MercuryBridge;->onCreateProgressDialog(Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/com2us/module/mercury/MercuryBridge;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryBridge;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$9(Lcom/com2us/module/mercury/MercuryBridge;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getUDID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 313
    const-string v0, ""

    .line 316
    .local v0, "UDID":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryBridge;->activity:Landroid/app/Activity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 317
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    const-string v3, "NULLERROR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 319
    if-nez v0, :cond_1

    .line 320
    const-string v0, "NULLERROR"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-object v0

    .line 323
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCreateProgressDialog(Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 333
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, "pDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 335
    invoke-static {}, Lcom/com2us/module/mercury/MercuryData;->getProgressDialogText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 336
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 337
    return-object v0
.end method

.method private postCallBack(I)V
    .locals 3
    .param p1, "callBackType"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postCallBack : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->mercuryBridgeListner:Lcom/com2us/module/mercury/MercuryBridgeListner;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->mercuryBridgeListner:Lcom/com2us/module/mercury/MercuryBridgeListner;

    invoke-interface {v0, p1}, Lcom/com2us/module/mercury/MercuryBridgeListner;->onResult(I)V

    .line 173
    :cond_0
    return-void
.end method

.method private sendToServer(Ljava/lang/String;Lcom/com2us/module/mercury/MercuryBridge$RecommendType;Lcom/com2us/module/mercury/MercuryBridge$SendToServerListner;)Z
    .locals 23
    .param p1, "eventID"    # Ljava/lang/String;
    .param p2, "recommendType"    # Lcom/com2us/module/mercury/MercuryBridge$RecommendType;
    .param p3, "sendToServerListner"    # Lcom/com2us/module/mercury/MercuryBridge$SendToServerListner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "sendToServer - eventID : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", recommendType : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 180
    :try_start_0
    const-string v17, ""

    .line 181
    .local v17, "sendDataStr":Ljava/lang/String;
    const-string v16, ""

    .line 182
    .local v16, "responseStr":Ljava/lang/String;
    const-string v2, ""

    .line 183
    .local v2, "URL":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 186
    .local v11, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->activity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const-string v21, "connectivity"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 187
    .local v4, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 188
    .local v13, "netInfo":Landroid/net/NetworkInfo;
    if-nez v13, :cond_0

    .line 189
    const/16 v20, -0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/com2us/module/mercury/MercuryBridge;->postCallBack(I)V

    .line 190
    const/16 v20, 0x0

    .line 306
    .end local v2    # "URL":Ljava/lang/String;
    .end local v4    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "netInfo":Landroid/net/NetworkInfo;
    .end local v16    # "responseStr":Ljava/lang/String;
    .end local v17    # "sendDataStr":Ljava/lang/String;
    :goto_0
    return v20

    .line 196
    .restart local v2    # "URL":Ljava/lang/String;
    .restart local v4    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    .restart local v13    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v16    # "responseStr":Ljava/lang/String;
    .restart local v17    # "sendDataStr":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    const-string v21, "Network Active"

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 202
    :try_start_1
    sget-boolean v20, Lcom/com2us/module/mercury/MercuryBridge;->isUsingStaging:Z

    if-eqz v20, :cond_1

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/mercury/MercuryBridge;->stagingURL:Ljava/lang/String;

    .line 207
    :goto_1
    const-string v20, "eventid"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v20, "appid"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v20, "did"

    const/16 v21, 0xc

    invoke-static/range {v21 .. v21}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v20, "uid"

    const/16 v21, 0xa

    invoke-static/range {v21 .. v21}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v20, "mac"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v20, "imei"

    invoke-direct/range {p0 .. p0}, Lcom/com2us/module/mercury/MercuryBridge;->getUDID()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v20, "devicetype"

    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v20, "lan"

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v20, "con"

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v20, "osver"

    const/16 v21, 0x6

    invoke-static/range {v21 .. v21}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v20, "libver"

    sget-object v21, Lcom/com2us/module/mercury/Constants;->Version:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v20, "appver"

    const/16 v21, 0x7

    invoke-static/range {v21 .. v21}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    invoke-static {}, Lcom/com2us/module/mercury/MercuryBridge;->$SWITCH_TABLE$com$com2us$module$mercury$MercuryBridge$RecommendType()[I

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    .line 227
    const-string v20, "type"

    const-string v21, "email"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "verifyString : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    :try_start_2
    new-instance v9, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v9}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 246
    .local v9, "httpParameters":Lorg/apache/http/params/HttpParams;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 247
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v10, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 248
    .local v10, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v20, "Content-type"

    const-string v21, "text/html"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    const-string v20, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .local v6, "entity":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v10, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 252
    invoke-interface {v3, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 253
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    .line 255
    .local v15, "responseEntity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "sendToServer Response Status Code : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 257
    if-eqz v15, :cond_2

    .line 258
    invoke-static {v15}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v16

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "responseStr : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 262
    :try_start_3
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 264
    .local v19, "toBeParsed":Lorg/json/JSONObject;
    const-string v20, "error"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 265
    .local v7, "error":I
    const-string v20, "errormsg"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "errormsg":Ljava/lang/String;
    const-string v20, "title"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 267
    .local v18, "title":Ljava/lang/String;
    const-string v20, "msg"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    const-string v21, "connectResult : success"

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v7, v8, v1, v12}, Lcom/com2us/module/mercury/MercuryBridge$SendToServerListner;->onResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 273
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 205
    .end local v3    # "client":Lorg/apache/http/client/HttpClient;
    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v7    # "error":I
    .end local v8    # "errormsg":Ljava/lang/String;
    .end local v9    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v12    # "msg":Ljava/lang/String;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v18    # "title":Ljava/lang/String;
    .end local v19    # "toBeParsed":Lorg/json/JSONObject;
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/mercury/MercuryBridge;->URL:Ljava/lang/String;

    goto/16 :goto_1

    .line 223
    :pswitch_0
    const-string v20, "type"

    const-string v21, "sms"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 233
    :catch_0
    move-exception v5

    .line 234
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    const-string v21, "create json data Failed"

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 236
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 275
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v9    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    .restart local v15    # "responseEntity":Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v5

    .line 276
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    const-string v21, "REQUEST To Server Failed"

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 278
    const/16 v20, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/com2us/module/mercury/MercuryBridge;->postCallBack(I)V

    .line 279
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 283
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->name()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " To Server Failed"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 284
    const/16 v20, -0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/com2us/module/mercury/MercuryBridge;->postCallBack(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 285
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 288
    .end local v3    # "client":Lorg/apache/http/client/HttpClient;
    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v9    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "responseEntity":Lorg/apache/http/HttpEntity;
    :catch_2
    move-exception v5

    .line 289
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->name()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " To Server Failed"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 291
    const/16 v20, -0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/com2us/module/mercury/MercuryBridge;->postCallBack(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 292
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 295
    .end local v2    # "URL":Ljava/lang/String;
    .end local v4    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "netInfo":Landroid/net/NetworkInfo;
    .end local v16    # "responseStr":Ljava/lang/String;
    .end local v17    # "sendDataStr":Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 296
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/com2us/module/mercury/MercuryBridge;->$SWITCH_TABLE$com$com2us$module$mercury$MercuryBridge$RecommendType()[I

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_1

    .line 305
    const/16 v20, -0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/com2us/module/mercury/MercuryBridge;->postCallBack(I)V

    .line 306
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 300
    :pswitch_1
    const/16 v20, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/com2us/module/mercury/MercuryBridge;->postCallBack(I)V

    .line 301
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 298
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static setUsingStaging(Z)V
    .locals 0
    .param p0, "_isUsingStaging"    # Z

    .prologue
    .line 54
    sput-boolean p0, Lcom/com2us/module/mercury/MercuryBridge;->isUsingStaging:Z

    .line 55
    return-void
.end method


# virtual methods
.method public sendEmail(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventID"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendEmail : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/mercury/MercuryBridge$2;

    invoke-direct {v1, p0, p1}, Lcom/com2us/module/mercury/MercuryBridge$2;-><init>(Lcom/com2us/module/mercury/MercuryBridge;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method

.method public sendSMS(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventID"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryBridge;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendSMS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/mercury/MercuryBridge$1;

    invoke-direct {v1, p0, p1}, Lcom/com2us/module/mercury/MercuryBridge$1;-><init>(Lcom/com2us/module/mercury/MercuryBridge;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method public setOnMercuryBridgeListner(Lcom/com2us/module/mercury/MercuryBridgeListner;)V
    .locals 0
    .param p1, "mercuryBridgeListner"    # Lcom/com2us/module/mercury/MercuryBridgeListner;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryBridge;->mercuryBridgeListner:Lcom/com2us/module/mercury/MercuryBridgeListner;

    .line 60
    return-void
.end method
