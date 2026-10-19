.class Lcom/com2us/wrapper/network/CWrapperHttp$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/network/CWrapperHttp;->a(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/com2us/wrapper/network/CWrapperHttp;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/network/CWrapperHttp;I)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    iput p2, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->a(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v1, v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->a(Lcom/com2us/wrapper/network/CWrapperHttp;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->b(Lcom/com2us/wrapper/network/CWrapperHttp;)Lcom/com2us/wrapper/network/CWrapperHttp$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/wrapper/network/CWrapperHttp$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->d(Lcom/com2us/wrapper/network/CWrapperHttp;)Lcom/com2us/wrapper/network/CHttpManager;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/network/CHttpManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->d(Lcom/com2us/wrapper/network/CWrapperHttp;)Lcom/com2us/wrapper/network/CHttpManager;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/network/CHttpManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->e(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/util/HashMap;

    move-result-object v1

    const-string v5, "Cookie"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->e(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/util/HashMap;

    move-result-object v1

    const-string v5, "Cookie"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->e(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/util/HashMap;

    move-result-object v1

    const-string v5, "Cookie"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->e(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->e(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v6}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0, v4}, Lcom/com2us/wrapper/network/CWrapperHttp;->b(Lcom/com2us/wrapper/network/CWrapperHttp;I)I

    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->a:I

    invoke-static {v0, v4}, Lcom/com2us/wrapper/network/CWrapperHttp;->nativeConnectCB(II)V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->f(Lcom/com2us/wrapper/network/CWrapperHttp;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->f(Lcom/com2us/wrapper/network/CWrapperHttp;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    sget-object v0, Lcom/com2us/wrapper/network/CWrapperHttp$2;->a:[I

    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->b(Lcom/com2us/wrapper/network/CWrapperHttp;)Lcom/com2us/wrapper/network/CWrapperHttp$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/wrapper/network/CWrapperHttp$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->a(Lcom/com2us/wrapper/network/CWrapperHttp;I)I

    :goto_3
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->b(Lcom/com2us/wrapper/network/CWrapperHttp;I)I

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    const-string v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->d(Lcom/com2us/wrapper/network/CWrapperHttp;)Lcom/com2us/wrapper/network/CHttpManager;

    move-result-object v0

    const-string v1, "Set-Cookie"

    iget-object v2, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    const-string v3, "Set-Cookie"

    invoke-virtual {v2, v3}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/wrapper/network/CHttpManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->a:I

    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->i(Lcom/com2us/wrapper/network/CWrapperHttp;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->nativeConnectCB(II)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->g(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->a(Lcom/com2us/wrapper/network/CWrapperHttp;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->g(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_6
    throw v0

    :sswitch_0
    iget v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->a:I

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->nativeIsExistConnectingCB(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    if-gtz v0, :cond_7

    move v0, v4

    :goto_5
    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_6
    iget-object v2, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v2}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_8

    iget v3, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->a:I

    invoke-static {v3, v1, v2, v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->nativeConnectingCB(I[BII)V

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->a(Lcom/com2us/wrapper/network/CWrapperHttp;[B)[B

    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->a(Lcom/com2us/wrapper/network/CWrapperHttp;I)I

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    if-gez v0, :cond_c

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v3}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_8
    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_b

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8

    :cond_b
    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/wrapper/network/CWrapperHttp;->a(Lcom/com2us/wrapper/network/CWrapperHttp;[B)[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    iget-object v1, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lcom/com2us/wrapper/network/CWrapperHttp;->a(Lcom/com2us/wrapper/network/CWrapperHttp;[B)[B

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Lcom/com2us/wrapper/network/CWrapperHttp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    new-array v2, v0, [B

    move v0, v3

    :goto_9
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_9

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/com2us/wrapper/network/CWrapperHttp$1;->b:Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-static {v6}, Lcom/com2us/wrapper/network/CWrapperHttp;->h(Lcom/com2us/wrapper/network/CWrapperHttp;)[B

    move-result-object v6

    invoke-static {v2, v5, v6, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    add-int/2addr v0, v3

    goto :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12d -> :sswitch_0
    .end sparse-switch
.end method
