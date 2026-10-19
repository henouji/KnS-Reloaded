.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;
.super Ljava/lang/Thread;
.source "ServerPost.java"


# static fields
.field private static client:Lcom/loopj/android/http/AsyncHttpClient;


# instance fields
.field public Params:Lcom/loopj/android/http/RequestParams;

.field public ServerURL:Ljava/lang/String;

.field private headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

.field public i32Protocol:I

.field protected mainActivity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

.field public ptSend:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->client:Lcom/loopj/android/http/AsyncHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public request(Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;)Z
    .locals 2
    .param p1, "ptSend"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;
    .param p2, "ptHeaderInfo"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->ptSend:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;

    .line 192
    iput-object p2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    .line 194
    iget-object v1, p1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;->strSendURL:Ljava/lang/String;

    iput-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->ServerURL:Ljava/lang/String;

    .line 195
    iget v1, p1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;->i32SendProtocol:I

    iput v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->i32Protocol:I

    .line 197
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 198
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 199
    const/4 v1, 0x1

    return v1
.end method

.method public run()V
    .locals 14

    .prologue
    .line 48
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget v12, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->i32Protocol:I

    const/4 v13, 0x7

    if-ne v12, v13, :offline_skip_request

    const-string v9, "{\"protocol\":201,\"errno\":0,\"user_info\":{\"user_no\":1,\"user_hub_uid\":\"local-guest-0001\",\"user_nickname\":\"Offline Guest\",\"user_level\":1,\"user_exp\":0,\"user_max_exp\":100,\"user_gold\":10000,\"user_cash\":0,\"user_stamina\":100,\"user_max_stamina\":100,\"user_fellow_ticket\":1,\"user_item_ticket\":10,\"user_inventory_size\":50,\"user_hero_pcid\":1},\"update_item_etc_info\":[{\"count\":1,\"item_id\":1200,\"user_last_stamina_gain_time\":0}],\"hero_info\":{\"hero_pcid\":1,\"hero_perfect_guard_bonus\":0,\"hero_booster_bonus\":0,\"hero_item_bonus\":0,\"hero_gold_bonus\":0,\"hero_potion_bonus\":0,\"hero_item_infos\":[]},\"update_achievement_info\":[]}"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    iget v12, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->i32Protocol:I

    invoke-static {v10, v11, v12}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeResponseServer([BII)V

    return-void

    :offline_skip_request
    const/4 v10, 0x5

    invoke-static {v10}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetNetState(I)V

    return-void

    .line 50
    const/4 v6, 0x0

    .line 51
    .local v6, "reader":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v9, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 53
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v10, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->ServerURL:Ljava/lang/String;

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v10, "USERNO"

    iget-object v11, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    iget v11, v11, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->i32UserNo:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v10, "SESSIONKEY"

    iget-object v11, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    iget-object v11, v11, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strSessionKey:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v10, "CLIENTVERSION"

    iget-object v11, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    iget-object v11, v11, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strClientVersion:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v10, "CLIENTBUNDLEIDENTIFIER"

    iget-object v11, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    iget-object v11, v11, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strBundleID:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v10, "CLIENTLANGUAGE"

    iget-object v11, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->headerInfo:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    iget-object v11, v11, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strLanguage:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v10, "TIMESTAMP"

    iget-object v11, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->ptSend:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;

    iget-wide v12, v11, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;->i64SendTime:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v10, "TIMESIGNATURE"

    iget-object v11, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->ptSend:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;

    iget-object v11, v11, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;->strSendTimeSignature:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :try_start_0
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    iget-object v11, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->ptSend:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;

    iget-object v11, v11, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;->strSendMsg:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 75
    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 77
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 79
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 96
    :goto_0
    :sswitch_0
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 98
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 100
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    const/16 v10, 0x400

    :try_start_1
    new-array v0, v10, [C

    .line 103
    .local v0, "buff":[C
    :goto_1
    invoke-virtual {v7, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    .local v5, "read":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_1

    .line 112
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    iget v12, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->i32Protocol:I

    invoke-static {v10, v11, v12}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeResponseServer([BII)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v6, v7

    .line 187
    .end local v0    # "buff":[C
    .end local v1    # "code":I
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "read":I
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_2
    return-void

    .line 85
    .restart local v1    # "code":I
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    :sswitch_1
    :try_start_2
    sget-object v10, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_ERROR:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    invoke-virtual {v10}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->getOrder()I

    move-result v10

    invoke-static {v10}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetNetState(I)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 115
    .end local v1    # "code":I
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v10

    goto :goto_2

    .line 105
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "buff":[C
    .restart local v1    # "code":I
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "read":I
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v9, v0, v10, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 115
    .end local v0    # "buff":[C
    .end local v5    # "read":I
    :catch_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 119
    .end local v1    # "code":I
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v10

    goto :goto_2

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "code":I
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v10

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 79
    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0x191 -> :sswitch_1
        0x193 -> :sswitch_1
        0x194 -> :sswitch_1
    .end sparse-switch
.end method

.method public setMainActivity(Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;)V
    .locals 0
    .param p1, "mainActivity"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/ServerPost;->mainActivity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    .line 43
    return-void
.end method
