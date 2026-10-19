.class public Lcom/com2us/wrapper/network/CWrapperHttp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/network/CWrapperHttp$2;,
        Lcom/com2us/wrapper/network/CWrapperHttp$a;
    }
.end annotation


# instance fields
.field private a:Ljava/net/HttpURLConnection;

.field private b:Ljava/net/URL;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Lcom/com2us/wrapper/network/CWrapperHttp$a;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:[B

.field private j:Lcom/com2us/wrapper/network/CHttpManager;


# direct methods
.method public constructor <init>(Lcom/com2us/wrapper/network/CHttpManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->j:Lcom/com2us/wrapper/network/CHttpManager;

    sget-object v0, Lcom/com2us/wrapper/network/CWrapperHttp$a;->a:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    iput-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->f:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    iput-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->a:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->i:[B

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->c:Ljava/util/HashMap;

    const/16 v0, 0x7530

    iput v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->g:I

    return-void
.end method

.method static synthetic a(Lcom/com2us/wrapper/network/CWrapperHttp;I)I
    .locals 0

    iput p1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->d:I

    return p1
.end method

.method static synthetic a(Lcom/com2us/wrapper/network/CWrapperHttp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/com2us/wrapper/network/CWrapperHttp;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->a:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method static synthetic a(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->b:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/wrapper/network/CWrapperHttp;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->i:[B

    return-object p1
.end method

.method static synthetic b(Lcom/com2us/wrapper/network/CWrapperHttp;I)I
    .locals 0

    iput p1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    return p1
.end method

.method static synthetic b(Lcom/com2us/wrapper/network/CWrapperHttp;)Lcom/com2us/wrapper/network/CWrapperHttp$a;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->f:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    return-object v0
.end method

.method static synthetic c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->a:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic d(Lcom/com2us/wrapper/network/CWrapperHttp;)Lcom/com2us/wrapper/network/CHttpManager;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->j:Lcom/com2us/wrapper/network/CHttpManager;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(?i).*http://.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*https://.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->b:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f(Lcom/com2us/wrapper/network/CWrapperHttp;)I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->g:I

    return v0
.end method

.method static synthetic g(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/com2us/wrapper/network/CWrapperHttp;)[B
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->i:[B

    return-object v0
.end method

.method static synthetic i(Lcom/com2us/wrapper/network/CWrapperHttp;)I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->d:I

    return v0
.end method

.method public static native nativeConnectCB(II)V
.end method

.method public static native nativeConnectingCB(I[BII)V
.end method

.method public static native nativeIsExistConnectingCB(I)Z
.end method


# virtual methods
.method public a(I)I
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x7

    :goto_0
    return v0

    :cond_0
    iput v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    new-instance v0, Lcom/com2us/wrapper/network/CWrapperHttp$1;

    invoke-direct {v0, p0, p1}, Lcom/com2us/wrapper/network/CWrapperHttp$1;-><init>(Lcom/com2us/wrapper/network/CWrapperHttp;I)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp$1;->start()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/com2us/wrapper/network/CWrapperHttp;->i()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/com2us/wrapper/network/CWrapperHttp$a;->a:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    invoke-virtual {v1}, Lcom/com2us/wrapper/network/CWrapperHttp$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/com2us/wrapper/network/CWrapperHttp$a;->a:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    iput-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->f:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/com2us/wrapper/network/CWrapperHttp$a;->b:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    invoke-virtual {v1}, Lcom/com2us/wrapper/network/CWrapperHttp$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/com2us/wrapper/network/CWrapperHttp$a;->b:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    iput-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->f:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/com2us/wrapper/network/CWrapperHttp$a;->c:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    invoke-virtual {v1}, Lcom/com2us/wrapper/network/CWrapperHttp$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/com2us/wrapper/network/CWrapperHttp$a;->c:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    iput-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->f:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    iput-object p2, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->h:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v0, -0x9

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/com2us/wrapper/network/CWrapperHttp;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->b:Ljava/net/URL;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a()[B
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->i:[B

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->i:[B

    goto :goto_0
.end method

.method public b(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/com2us/wrapper/network/CWrapperHttp;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->g:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/com2us/wrapper/network/CWrapperHttp;->i()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/com2us/wrapper/network/CWrapperHttp;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->a:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/com2us/wrapper/network/CWrapperHttp;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->f:Lcom/com2us/wrapper/network/CWrapperHttp$a;

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp$a;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public d()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()I
    .locals 2

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    goto :goto_0
.end method

.method public i()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->e:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp;->g:I

    return v0
.end method
