.class Lcom/com2us/peppermint/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/com2us/peppermint/PeppermintCallback;

.field final synthetic a:Lcom/com2us/peppermint/PeppermintRequest;

.field private final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/PeppermintRequest;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/y;->a:Lcom/com2us/peppermint/PeppermintRequest;

    iput-object p2, p0, Lcom/com2us/peppermint/y;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/com2us/peppermint/y;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v6, 0x7530

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/peppermint/y;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    const-string v0, ""

    move-object v3, v0

    :goto_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v4, "http.protocol.expect-continue"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v4, "http.connection.timeout"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v4, "http.socket.timeout"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/com2us/peppermint/y;->a:Lcom/com2us/peppermint/PeppermintRequest;

    invoke-static {v1}, Lcom/com2us/peppermint/PeppermintRequest;->a(Lcom/com2us/peppermint/PeppermintRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    sget-object v1, Lcom/com2us/peppermint/PeppermintURL;->PEPPERMINT_COOKIE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "request cookieString="

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v5

    array-length v6, v1

    move v0, v2

    :goto_3
    if-lt v0, v6, :cond_3

    invoke-virtual {v3, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>()V

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/CookieSpecBase;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Lorg/apache/http/Header;)V

    :cond_0
    const-string v0, "Accept-Language"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    const-string v0, "Set-Cookie"

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    move v0, v2

    :goto_4
    array-length v2, v3

    if-lt v0, v2, :cond_4

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_5
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-nez v1, :cond_5

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    iget-object v1, p0, Lcom/com2us/peppermint/y;->a:Lcom/com2us/peppermint/PeppermintRequest;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/com2us/peppermint/PeppermintRequest;->a(Lcom/com2us/peppermint/PeppermintRequest;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/peppermint/y;->a:Lcom/com2us/peppermint/PeppermintRequest;

    invoke-static {v1}, Lcom/com2us/peppermint/PeppermintRequest;->b(Lcom/com2us/peppermint/PeppermintRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/com2us/peppermint/y;->a:Lcom/com2us/peppermint/PeppermintRequest;

    invoke-static {v1}, Lcom/com2us/peppermint/PeppermintRequest;->b(Lcom/com2us/peppermint/PeppermintRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_6
    :try_start_5
    iget-object v1, p0, Lcom/com2us/peppermint/y;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_7
    return-void

    :cond_1
    :try_start_6
    iget-object v0, p0, Lcom/com2us/peppermint/y;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_1

    :cond_2
    move-object v0, v1

    goto/16 :goto_2

    :cond_3
    aget-object v7, v1, v0

    const-string v8, "="

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/apache/http/impl/cookie/BasicClientCookie;

    aget-object v9, v7, v2

    const/4 v10, 0x1

    aget-object v7, v7, v10

    invoke-direct {v8, v9, v7}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_4
    :try_start_7
    aget-object v2, v3, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/com2us/peppermint/PeppermintURL;->PEPPERMINT_COOKIE_URL:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "request Server sent cookieValue : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_5
    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_a
    const-string v0, "type"

    iget-object v2, p0, Lcom/com2us/peppermint/y;->a:Lcom/com2us/peppermint/PeppermintRequest;

    invoke-static {v2}, Lcom/com2us/peppermint/PeppermintRequest;->c(Lcom/com2us/peppermint/PeppermintRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const-string v2, "Connection Timeout"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4

    :goto_8
    iget-object v0, p0, Lcom/com2us/peppermint/y;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v0, v1}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_c
    const-string v0, "type"

    iget-object v2, p0, Lcom/com2us/peppermint/y;->a:Lcom/com2us/peppermint/PeppermintRequest;

    invoke-static {v2}, Lcom/com2us/peppermint/PeppermintRequest;->c(Lcom/com2us/peppermint/PeppermintRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const-string v2, "Server Error"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_5

    :goto_9
    iget-object v0, p0, Lcom/com2us/peppermint/y;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v0, v1}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    goto/16 :goto_7

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9
.end method
