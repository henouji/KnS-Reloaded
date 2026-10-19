.class public Lcom/com2us/module/offerwall/OfferwallNetwork;
.super Ljava/lang/Object;
.source "OfferwallNetwork.java"


# instance fields
.field private SERVER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/offerwall/OfferwallNetwork;->SERVER:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public processNetworkRewardTask()Ljava/lang/Object;
    .locals 17

    .prologue
    .line 116
    sget-object v13, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v14, "Offerwall"

    const-string v15, "processNetwork_Reward"

    invoke-virtual {v13, v14, v15}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v12, 0x0

    .line 118
    .local v12, "responseStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 119
    .local v7, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v0, 0x0

    .line 121
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 123
    .local v6, "httpClientParams":Lorg/apache/http/params/HttpParams;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v2, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "oq_appid"

    const/4 v14, 0x1

    invoke-static {v14}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v13, "oq_did"

    const/16 v14, 0xa

    invoke-static {v14}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v13, "oq_uid"

    const/16 v14, 0x9

    invoke-static {v14}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v13, "oq_vid"

    const/16 v14, 0xb

    invoke-static {v14}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v13, "oq_mac"

    const/4 v14, 0x2

    invoke-static {v14}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v13, "oq_libver"

    sget-object v14, Lcom/com2us/module/offerwall/Constants;->Version:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v13, "oq_eventid"

    const-string v14, "rewardEventID"

    invoke-static {v14}, Lcom/com2us/module/offerwall/OfferwallProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v13, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v14, "Offerwall"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "processNetwork_Reward:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "jsonStr":Ljava/lang/String;
    if-nez v9, :cond_0

    const/4 v13, 0x0

    .line 188
    :goto_0
    return-object v13

    .line 141
    :cond_0
    const/4 v4, 0x0

    .line 143
    .local v4, "entity":Lorg/apache/http/entity/StringEntity;
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    :try_start_1
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v13, "UTF-8"

    invoke-direct {v5, v9, v13}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    .end local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    .local v5, "entity":Lorg/apache/http/entity/StringEntity;
    :try_start_2
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    const-string v13, "http://test.wall.com2us.com/api/logSingleReward"

    invoke-direct {v8, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 154
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v8, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_3
    invoke-virtual {v8, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 155
    const-string v13, "Content-Type"

    const-string v14, "text/html"

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-interface {v1, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 159
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_4

    .line 161
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 162
    .local v11, "responseEntity":Lorg/apache/http/HttpEntity;
    if-eqz v11, :cond_1

    .line 163
    invoke-static {v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    .line 164
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 178
    :cond_1
    if-eqz v1, :cond_2

    .line 180
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 184
    :cond_2
    if-eqz v12, :cond_9

    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    move-object v7, v8

    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    move-object v13, v12

    .line 185
    goto :goto_0

    .line 146
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    if-eqz v1, :cond_3

    .line 180
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 148
    :cond_3
    const/4 v13, 0x0

    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_0

    .line 178
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    if-eqz v1, :cond_5

    .line 180
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 169
    :cond_5
    const/4 v13, 0x0

    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    move-object v7, v8

    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    .line 172
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_1
    move-exception v3

    .line 173
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_5
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    if-eqz v0, :cond_6

    .line 180
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 174
    :cond_6
    const/4 v13, 0x0

    goto :goto_0

    .line 175
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v3

    .line 178
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v0, :cond_7

    .line 180
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 176
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 177
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 178
    :goto_3
    if-eqz v0, :cond_8

    .line 180
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 182
    :cond_8
    throw v13

    .line 188
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "responseEntity":Lorg/apache/http/HttpEntity;
    :cond_9
    const/4 v13, 0x0

    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    move-object v7, v8

    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_0

    .line 177
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    :catchall_1
    move-exception v13

    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_3

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    :catchall_2
    move-exception v13

    move-object v4, v5

    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_3

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catchall_3
    move-exception v13

    move-object v4, v5

    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    move-object v7, v8

    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_3

    .line 175
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    move-object v7, v8

    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .line 172
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_1

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_7
    move-exception v3

    move-object v4, v5

    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_1

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    move-object v7, v8

    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_1
.end method

.method public processNetworkTask()Ljava/lang/Object;
    .locals 18

    .prologue
    .line 29
    sget-object v14, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v15, "Offerwall"

    const-string v16, "processNetwork"

    invoke-virtual/range {v14 .. v16}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v13, 0x0

    .line 31
    .local v13, "responseStr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 32
    .local v8, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v1, 0x0

    .line 34
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 36
    .local v7, "httpClientParams":Lorg/apache/http/params/HttpParams;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v3, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "oq_appid"

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v14, "oq_mac"

    const/4 v15, 0x2

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v14, "oq_lan"

    const/4 v15, 0x3

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v14, "oq_con"

    const/4 v15, 0x4

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v14, "oq_devicetype"

    const/4 v15, 0x5

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v14, "oq_osver"

    const/4 v15, 0x6

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v14, "oq_libver"

    sget-object v15, Lcom/com2us/module/offerwall/Constants;->Version:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v14, "oq_appver"

    const/4 v15, 0x7

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v14, "oq_appvercode"

    const/16 v15, 0x8

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v14, "oq_uid"

    const/16 v15, 0x9

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v14, "oq_did"

    const/16 v15, 0xa

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v14, "oq_vid"

    const/16 v15, 0xb

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v14, "oq_eventid"

    const/16 v15, 0xc

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v14, "oq_mcc"

    const/16 v15, 0x11

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v14, "oq_mnc"

    const/16 v15, 0x12

    invoke-static {v15}, Lcom/com2us/module/offerwall/OfferwallData;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v14, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v15, "Offerwall"

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

    .line 56
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 58
    .local v10, "jsonStr":Ljava/lang/String;
    if-nez v10, :cond_0

    const/4 v14, 0x0

    .line 107
    :goto_0
    return-object v14

    .line 60
    :cond_0
    const/4 v5, 0x0

    .line 62
    .local v5, "entity":Lorg/apache/http/entity/StringEntity;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
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

    .line 70
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .local v6, "entity":Lorg/apache/http/entity/StringEntity;
    :try_start_2
    sget-object v14, Lcom/com2us/module/offerwall/Offerwall;->logger:Lcom/com2us/module/util/Logger;

    const-string v15, "Offerwall"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "server url :"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/offerwall/OfferwallNetwork;->SERVER:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/com2us/module/offerwall/OfferwallNetwork;->SERVER:Ljava/lang/String;

    invoke-direct {v9, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v9, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_3
    invoke-virtual {v9, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 74
    const-string v14, "Content-Type"

    const-string v15, "text/html"

    invoke-virtual {v9, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-interface {v2, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 78
    .local v11, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_4

    .line 80
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 81
    .local v12, "responseEntity":Lorg/apache/http/HttpEntity;
    if-eqz v12, :cond_1

    .line 82
    invoke-static {v12}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v13

    .line 83
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 97
    :cond_1
    if-eqz v2, :cond_2

    .line 99
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 103
    :cond_2
    if-eqz v13, :cond_9

    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    move-object v8, v9

    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    move-object v14, v13

    .line 104
    goto :goto_0

    .line 65
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v4

    .line 66
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    if-eqz v2, :cond_3

    .line 99
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 67
    :cond_3
    const/4 v14, 0x0

    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_0

    .line 97
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    if-eqz v2, :cond_5

    .line 99
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 88
    :cond_5
    const/4 v14, 0x0

    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    move-object v8, v9

    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_0

    .line 91
    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_1
    move-exception v4

    .line 92
    .local v4, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_5
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    if-eqz v1, :cond_6

    .line 99
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 93
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 94
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v4

    .line 97
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v1, :cond_7

    .line 99
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 95
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 96
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 97
    :goto_3
    if-eqz v1, :cond_8

    .line 99
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 101
    :cond_8
    throw v14

    .line 107
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "responseEntity":Lorg/apache/http/HttpEntity;
    :cond_9
    const/4 v14, 0x0

    move-object v1, v2

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    move-object v8, v9

    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_0

    .line 96
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

    .line 94
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

    .line 91
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
    .line 24
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallNetwork;->SERVER:Ljava/lang/String;

    .line 25
    return-void
.end method
