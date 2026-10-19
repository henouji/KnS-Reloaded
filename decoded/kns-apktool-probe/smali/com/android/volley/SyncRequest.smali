.class public Lcom/android/volley/SyncRequest;
.super Ljava/lang/Object;
.source "SyncRequest.java"


# static fields
.field private static mSequence:I


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mNetwork:Lcom/android/volley/Network;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/android/volley/SyncRequest;->mSequence:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V
    .locals 1
    .param p1, "cache"    # Lcom/android/volley/Cache;
    .param p2, "network"    # Lcom/android/volley/Network;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/volley/SyncRequest;->mCache:Lcom/android/volley/Cache;

    .line 22
    iput-object p2, p0, Lcom/android/volley/SyncRequest;->mNetwork:Lcom/android/volley/Network;

    .line 24
    iget-object v0, p0, Lcom/android/volley/SyncRequest;->mCache:Lcom/android/volley/Cache;

    invoke-interface {v0}, Lcom/android/volley/Cache;->initialize()V

    .line 25
    return-void
.end method

.method private delivery(Lcom/android/volley/Request;Lcom/android/volley/Response;)Lcom/android/volley/Response;
    .locals 1
    .param p1, "request"    # Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            "Lcom/android/volley/Response",
            "<*>;)",
            "Lcom/android/volley/Response",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->markDelivered()V

    .line 93
    const-string v0, "done"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    .line 95
    return-object p2
.end method

.method private networkDispatcher(Lcom/android/volley/Request;)Lcom/android/volley/Response;
    .locals 8
    .param p1, "request"    # Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            ")",
            "Lcom/android/volley/Response",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 46
    :try_start_0
    const-string v4, "network-queue-take"

    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 49
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 55
    :cond_0
    iget-object v4, p0, Lcom/android/volley/SyncRequest;->mNetwork:Lcom/android/volley/Network;

    invoke-interface {v4, p1}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v1

    .line 56
    .local v1, "networkResponse":Lcom/android/volley/NetworkResponse;
    const-string v4, "network-http-complete"

    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 59
    iget-boolean v4, v1, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-eqz v4, :cond_1

    .line 62
    new-instance v4, Lcom/android/volley/NetworkResponse;

    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/volley/Cache$Entry;->data:[B

    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v6

    iget-object v6, v6, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v4, v5, v6}, Lcom/android/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    .line 61
    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v2

    .line 64
    .local v2, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    invoke-direct {p0, p1, v2}, Lcom/android/volley/SyncRequest;->delivery(Lcom/android/volley/Request;Lcom/android/volley/Response;)Lcom/android/volley/Response;

    move-result-object v3

    .line 87
    .end local v1    # "networkResponse":Lcom/android/volley/NetworkResponse;
    .end local v2    # "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    :goto_0
    return-object v3

    .line 67
    .restart local v1    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/Cache$Entry;)V

    .line 70
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v2

    .line 71
    .restart local v2    # "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    const-string v4, "network-parse-complete"

    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v4, :cond_2

    .line 76
    iget-object v4, p0, Lcom/android/volley/SyncRequest;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v4, v5, v6}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 77
    const-string v4, "network-cache-written"

    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 80
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/volley/SyncRequest;->delivery(Lcom/android/volley/Request;Lcom/android/volley/Response;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 82
    .end local v1    # "networkResponse":Lcom/android/volley/NetworkResponse;
    .end local v2    # "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public excute(Ljava/lang/String;)Lcom/android/volley/Response;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v1, Lcom/android/volley/toolbox/DownloadRequest;

    invoke-direct {v1, p1}, Lcom/android/volley/toolbox/DownloadRequest;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "request":Lcom/android/volley/Request;
    sget v2, Lcom/android/volley/SyncRequest;->mSequence:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/volley/SyncRequest;->mSequence:I

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->setSequence(I)V

    .line 31
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 33
    iget-object v2, p0, Lcom/android/volley/SyncRequest;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 34
    .local v0, "entry":Lcom/android/volley/Cache$Entry;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v1, v0}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/Cache$Entry;)V

    .line 39
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/volley/SyncRequest;->networkDispatcher(Lcom/android/volley/Request;)Lcom/android/volley/Response;

    move-result-object v2

    return-object v2
.end method
