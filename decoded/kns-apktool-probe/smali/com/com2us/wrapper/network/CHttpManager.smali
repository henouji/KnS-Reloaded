.class public Lcom/com2us/wrapper/network/CHttpManager;
.super Lcom/com2us/wrapper/kernel/CWrapper;


# instance fields
.field private a:Ljava/util/HashMap;
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

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/com2us/wrapper/network/CWrapperHttp;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    iput v1, p0, Lcom/com2us/wrapper/network/CHttpManager;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->a:Ljava/util/HashMap;

    iput v1, p0, Lcom/com2us/wrapper/network/CHttpManager;->c:I

    return-void
.end method


# virtual methods
.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public netHttpCloseEx(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->b()V

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public netHttpConnectEx(I)I
    .locals 3

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->nativeConnectCB(II)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0, p1}, Lcom/com2us/wrapper/network/CWrapperHttp;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public netHttpGetEncodingEx(I[BI)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, -0x9

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lt v0, p3, :cond_3

    const/16 v0, -0x12

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public netHttpGetHeaderFieldEx(ILjava/lang/String;[BI)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    const/16 v0, -0x9

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0, p2}, Lcom/com2us/wrapper/network/CWrapperHttp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lt v0, p4, :cond_4

    const/16 v0, -0x12

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2, p3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public netHttpGetLengthEx(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->h()I

    move-result v0

    goto :goto_0
.end method

.method public netHttpGetProperty(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->k()I

    move-result v0

    goto :goto_0
.end method

.method public netHttpGetRequestMethodEx(I[BI)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, -0x9

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lt v0, p3, :cond_3

    const/16 v0, -0x12

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public netHttpGetRequestPropertyEx(ILjava/lang/String;[BI)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    const/16 v0, -0x9

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0, p2}, Lcom/com2us/wrapper/network/CWrapperHttp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lt v0, p4, :cond_4

    const/16 v0, -0x12

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2, p3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public netHttpGetResponseBody(I[BI)I
    .locals 5

    const/4 v4, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, -0x9

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->j()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->a()[B

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v0, v2

    if-lt v0, p3, :cond_3

    const/16 v0, -0x12

    goto :goto_0

    :cond_3
    invoke-static {v2, v4, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public netHttpGetResponseBodyLength(I)I
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->j()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->a()[B

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    array-length v1, v0

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public netHttpGetResponseCodeEx(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->d()I

    move-result v0

    goto :goto_0
.end method

.method public netHttpGetResponseMessageEx(I[BI)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, -0x9

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lt v0, p3, :cond_3

    const/16 v0, -0x12

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public netHttpGetTypeEx(I[BI)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, -0x9

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0}, Lcom/com2us/wrapper/network/CWrapperHttp;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lt v0, p3, :cond_3

    const/16 v0, -0x12

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public netHttpIsContains(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public netHttpOpenEx(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/com2us/wrapper/common/CCommonAPI;->getActiveNetwork()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, -0xe

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/network/CWrapperHttp;-><init>(Lcom/com2us/wrapper/network/CHttpManager;)V

    invoke-virtual {v0, p1}, Lcom/com2us/wrapper/network/CWrapperHttp;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, -0x9

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    iget v2, p0, Lcom/com2us/wrapper/network/CHttpManager;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/com2us/wrapper/network/CHttpManager;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/com2us/wrapper/network/CHttpManager;->c:I

    :cond_2
    iget-object v1, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    iget v2, p0, Lcom/com2us/wrapper/network/CHttpManager;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/com2us/wrapper/network/CHttpManager;->c:I

    goto :goto_0
.end method

.method public netHttpSetProperty(II)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    if-gez p2, :cond_1

    const/16 v0, -0x9

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0, p2}, Lcom/com2us/wrapper/network/CWrapperHttp;->b(I)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public netHttpSetRequestMethodEx(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, -0x9

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0, p2, p3}, Lcom/com2us/wrapper/network/CWrapperHttp;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public netHttpSetRequestPropertyEx(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, -0x9

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/wrapper/network/CWrapperHttp;

    invoke-virtual {v0, p2, p3}, Lcom/com2us/wrapper/network/CWrapperHttp;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/network/CHttpManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
