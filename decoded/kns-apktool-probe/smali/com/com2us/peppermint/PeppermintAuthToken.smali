.class public Lcom/com2us/peppermint/PeppermintAuthToken;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->d:Ljava/lang/String;

    return-void
.end method

.method public static authTokenWithDictionary(Lcom/com2us/peppermint/Dictionary;)Lcom/com2us/peppermint/PeppermintAuthToken;
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string v0, "uid"

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "did"

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sessionkey"

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "uid"

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "did"

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "sessionkey"

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "auth_by"

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/Dictionary;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "auth_by"

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/Dictionary;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_0
    new-instance v0, Lcom/com2us/peppermint/PeppermintAuthToken;

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/com2us/peppermint/PeppermintAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getAuthBy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDictionary()Lcom/com2us/peppermint/Dictionary;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/com2us/peppermint/Dictionary;

    invoke-direct {v0}, Lcom/com2us/peppermint/Dictionary;-><init>()V

    const-string v1, "uid"

    iget-object v2, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/com2us/peppermint/Dictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "did"

    iget-object v2, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/com2us/peppermint/Dictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sessionkey"

    iget-object v2, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/com2us/peppermint/Dictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "auth_by"

    iget-object v2, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/com2us/peppermint/Dictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/com2us/peppermint/Dictionary;

    invoke-direct {v0}, Lcom/com2us/peppermint/Dictionary;-><init>()V

    goto :goto_0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintAuthToken;->a:Ljava/lang/String;

    return-object v0
.end method
