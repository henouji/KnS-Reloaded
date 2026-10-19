.class public Lcom/com2us/peppermint/Dictionary;
.super Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/com2us/peppermint/Dictionary;
    .locals 8

    const/4 v7, 0x2

    const/4 v0, 0x0

    new-instance v2, Lcom/com2us/peppermint/Dictionary;

    invoke-direct {v2}, Lcom/com2us/peppermint/Dictionary;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    :cond_0
    return-object v2

    :cond_1
    aget-object v0, v3, v1

    const-string v5, "="

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    if-ne v5, v7, :cond_2

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v0, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    const/4 v6, 0x1

    :try_start_1
    aget-object v0, v0, v6

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v2, v5, v0}, Lcom/com2us/peppermint/Dictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-?\\d+(\\.\\d+)?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static queryDictionary(Ljava/lang/String;)Lcom/com2us/peppermint/Dictionary;
    .locals 2

    const-string v0, "c2shub"

    const-string v1, "http"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/com2us/peppermint/Dictionary;->a(Ljava/lang/String;)Lcom/com2us/peppermint/Dictionary;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/com2us/peppermint/Dictionary;

    invoke-direct {v0}, Lcom/com2us/peppermint/Dictionary;-><init>()V

    goto :goto_0
.end method
