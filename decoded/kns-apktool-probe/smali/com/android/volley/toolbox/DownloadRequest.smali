.class public Lcom/android/volley/toolbox/DownloadRequest;
.super Lcom/android/volley/Request;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 38
    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 2
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method
