.class public Lcom/com2us/module/util/VersionEx;
.super Lcom/com2us/module/util/Version;
.source "VersionEx.java"


# instance fields
.field private revision:I

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;I)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "build"    # I
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "revision"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/com2us/module/util/Version;-><init>(III)V

    .line 17
    iput-object p4, p0, Lcom/com2us/module/util/VersionEx;->status:Ljava/lang/String;

    .line 18
    iput p5, p0, Lcom/com2us/module/util/VersionEx;->revision:I

    .line 19
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/String;)I
    .locals 7
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    .local v3, "ret":I
    const/16 v5, 0x5f

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 33
    .local v2, "idx":I
    if-lez v2, :cond_1

    .line 34
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-super {p0, p1}, Lcom/com2us/module/util/Version;->compare(Ljava/lang/String;)I

    move-result v3

    .line 40
    if-nez v3, :cond_4

    .line 41
    new-instance v4, Ljava/util/StringTokenizer;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-direct {v4, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "_status":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, "_revision":I
    :cond_0
    iget-object v5, p0, Lcom/com2us/module/util/VersionEx;->status:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 46
    if-nez v3, :cond_3

    iget v5, p0, Lcom/com2us/module/util/VersionEx;->revision:I

    sub-int/2addr v5, v0

    .line 48
    .end local v0    # "_revision":I
    .end local v1    # "_status":Ljava/lang/String;
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :goto_1
    return v5

    .line 36
    :cond_1
    const/4 v5, -0x1

    goto :goto_1

    .line 43
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    :cond_2
    const-string v1, "0"

    goto :goto_0

    .restart local v0    # "_revision":I
    .restart local v1    # "_status":Ljava/lang/String;
    :cond_3
    move v5, v3

    .line 46
    goto :goto_1

    .end local v0    # "_revision":I
    .end local v1    # "_status":Ljava/lang/String;
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :cond_4
    move v5, v3

    .line 48
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x5f

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/com2us/module/util/Version;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/com2us/module/util/VersionEx;->status:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/util/VersionEx;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_0
    iget v1, p0, Lcom/com2us/module/util/VersionEx;->revision:I

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/com2us/module/util/VersionEx;->revision:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
