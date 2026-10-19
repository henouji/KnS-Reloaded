.class public Lcom/com2us/module/util/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field build:I

.field major:I

.field minor:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "build"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/com2us/module/util/Version;->major:I

    .line 18
    iput p2, p0, Lcom/com2us/module/util/Version;->minor:I

    .line 19
    iput p3, p0, Lcom/com2us/module/util/Version;->build:I

    .line 20
    return-void
.end method

.method public static parseVersion(Ljava/lang/String;)Lcom/com2us/module/util/Version;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v0, "st":Ljava/util/StringTokenizer;
    new-instance v3, Lcom/com2us/module/util/Version;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 53
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 54
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 52
    :cond_0
    invoke-direct {v3, v4, v1, v2}, Lcom/com2us/module/util/Version;-><init>(III)V

    return-object v3

    :cond_1
    move v1, v2

    .line 53
    goto :goto_0
.end method


# virtual methods
.method public compare(III)I
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "build"    # I

    .prologue
    .line 30
    iget v0, p0, Lcom/com2us/module/util/Version;->major:I

    sub-int/2addr v0, p1

    shl-int/lit8 v0, v0, 0x18

    .line 31
    iget v1, p0, Lcom/com2us/module/util/Version;->minor:I

    sub-int/2addr v1, p2

    shl-int/lit8 v1, v1, 0x10

    .line 30
    add-int/2addr v0, v1

    .line 32
    iget v1, p0, Lcom/com2us/module/util/Version;->build:I

    sub-int/2addr v1, p3

    .line 30
    add-int/2addr v0, v1

    return v0
.end method

.method public compare(Lcom/com2us/module/util/Version;)I
    .locals 3
    .param p1, "version"    # Lcom/com2us/module/util/Version;

    .prologue
    .line 36
    iget v0, p1, Lcom/com2us/module/util/Version;->major:I

    iget v1, p1, Lcom/com2us/module/util/Version;->minor:I

    iget v2, p1, Lcom/com2us/module/util/Version;->build:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/com2us/module/util/Version;->compare(III)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;)I
    .locals 7
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 39
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "."

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 41
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "wrong version format"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 43
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 44
    .local v1, "major":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 45
    .local v2, "minor":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, "build":I
    :goto_2
    invoke-virtual {p0, v1, v2, v0}, Lcom/com2us/module/util/Version;->compare(III)I

    move-result v4

    return v4

    .end local v0    # "build":I
    .end local v1    # "major":I
    .end local v2    # "minor":I
    :cond_1
    move v1, v4

    .line 43
    goto :goto_0

    .restart local v1    # "major":I
    :cond_2
    move v2, v4

    .line 44
    goto :goto_1

    .restart local v2    # "minor":I
    :cond_3
    move v0, v4

    .line 45
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    iget v1, p0, Lcom/com2us/module/util/Version;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    iget v1, p0, Lcom/com2us/module/util/Version;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    iget v1, p0, Lcom/com2us/module/util/Version;->build:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    return-object v0
.end method
