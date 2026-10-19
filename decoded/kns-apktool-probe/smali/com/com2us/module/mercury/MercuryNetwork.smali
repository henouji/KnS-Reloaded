.class public Lcom/com2us/module/mercury/MercuryNetwork;
.super Ljava/lang/Object;
.source "MercuryNetwork.java"


# instance fields
.field private SERVER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/mercury/MercuryNetwork;->SERVER:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public processNetworkTask()Ljava/lang/Object;
    .locals 18

    .prologue
    .line 36
    sget-object v14, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v15, "Mercury"

    const-string v16, "processNetwork"

    invoke-virtual/range {v14 .. v16}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v13, 0x0

    .line 38
    .local v13, "responseStr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 39
    .local v8, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v1, 0x0

    .line 41
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 43
    .local v7, "httpClientParams":Lorg/apache/http/params/HttpParams;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v3, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "appid"

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v14, "did"

    const/16 v15, 0xc

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v14, "mac"

    const/4 v15, 0x2

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v14, "lan"

    const/4 v15, 0x3

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v14, "con"

    const/4 v15, 0x4

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v14, "width"

    const/16 v15, 0xd

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v14, "height"

    const/16 v15, 0xe

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v14, "devicetype"

    const/4 v15, 0x5

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v14, "appver"

    const/4 v15, 0x7

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v14, "osver"

    const/4 v15, 0x6

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v14, "libver"

    sget-object v15, Lcom/com2us/module/mercury/Constants;->Version:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v14, "act"

    const/16 v15, 0xf

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v14, "uidcheckmsg"

    const/16 v15, 0x10

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v14, "vid"

    const/16 v15, 0x11

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v14, "additionalInfo"

    const/16 v15, 0x12

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v14, "mcc"

    const/16 v15, 0x13

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v14, "mnc"

    const/16 v15, 0x14

    invoke-static {v15}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v14, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v15, "Mercury"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "processNetwork:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, "jsonStr":Ljava/lang/String;
    if-nez v10, :cond_0

    const/4 v14, 0x0

    .line 115
    :goto_0
    return-object v14

    .line 69
    :cond_0
    const/4 v5, 0x0

    .line 71
    .local v5, "entity":Lorg/apache/http/entity/StringEntity;
    const/16 v14, 0x3a98

    :try_start_0
    invoke-static {v7, v14}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 72
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    :try_start_1
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    const-string v14, "UTF-8"

    invoke-direct {v6, v10, v14}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .local v6, "entity":Lorg/apache/http/entity/StringEntity;
    :try_start_2
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/com2us/module/mercury/MercuryNetwork;->SERVER:Ljava/lang/String;

    invoke-direct {v9, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v9, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_3
    invoke-virtual {v9, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 84
    const-string v14, "Content-Type"

    const-string v15, "text/html"

    invoke-virtual {v9, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-interface {v2, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 87
    .local v11, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_2

    .line 89
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 90
    .local v12, "responseEntity":Lorg/apache/http/HttpEntity;
    if-eqz v12, :cond_1

    .line 91
    invoke-static {v12}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v13

    .line 92
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 108
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 111
    if-eqz v13, :cond_3

    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    move-object v8, v9

    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    move-object v14, v13

    .line 112
    goto :goto_0

    .line 75
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 77
    const/4 v14, 0x0

    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_0

    .line 108
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 97
    const/4 v14, 0x0

    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    move-object v8, v9

    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    .line 100
    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_1
    move-exception v4

    .line 101
    .local v4, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_5
    sget-object v14, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v15, "Mercury"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Http RuntimeException : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 108
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 103
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 104
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v4

    .line 105
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    sget-object v14, Lcom/com2us/module/mercury/Mercury;->logger:Lcom/com2us/module/util/Logger;

    const-string v15, "Mercury"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Http IOException : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 108
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 106
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 107
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 108
    :goto_3
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 109
    throw v14

    .line 115
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "responseEntity":Lorg/apache/http/HttpEntity;
    :cond_3
    const/4 v14, 0x0

    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    move-object v8, v9

    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_0

    .line 107
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    :catchall_1
    move-exception v14

    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_3

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    :catchall_2
    move-exception v14

    move-object v5, v6

    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_3

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catchall_3
    move-exception v14

    move-object v5, v6

    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    move-object v8, v9

    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_3

    .line 104
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_5
    move-exception v4

    move-object v5, v6

    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    move-object v8, v9

    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .line 100
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    :catch_6
    move-exception v4

    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_7
    move-exception v4

    move-object v5, v6

    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    move-object v8, v9

    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_1
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryNetwork;->SERVER:Ljava/lang/String;

    .line 32
    return-void
.end method
