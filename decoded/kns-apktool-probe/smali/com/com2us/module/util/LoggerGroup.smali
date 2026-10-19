.class public abstract Lcom/com2us/module/util/LoggerGroup;
.super Ljava/lang/Object;
.source "LoggerGroup.java"


# static fields
.field private static locked:Z

.field private static logged:Z

.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/com2us/module/util/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/com2us/module/util/LoggerGroup;->logged:Z

    .line 18
    sput-boolean v0, Lcom/com2us/module/util/LoggerGroup;->locked:Z

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/com2us/module/util/LoggerGroup;->map:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;
    .locals 2
    .param p0, "TAG"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v1, Lcom/com2us/module/util/LoggerGroup;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/com2us/module/util/LoggerGroup;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/util/Logger;

    .line 80
    .local v0, "logger":Lcom/com2us/module/util/Logger;
    sget-boolean v1, Lcom/com2us/module/util/LoggerGroup;->locked:Z

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->setLocked(Z)V

    .line 101
    :goto_0
    return-object v0

    .line 83
    .end local v0    # "logger":Lcom/com2us/module/util/Logger;
    :cond_0
    new-instance v0, Lcom/com2us/module/util/Logger;

    invoke-direct {v0, p0}, Lcom/com2us/module/util/Logger;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v0    # "logger":Lcom/com2us/module/util/Logger;
    sget-boolean v1, Lcom/com2us/module/util/LoggerGroup;->logged:Z

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 86
    sget-boolean v1, Lcom/com2us/module/util/LoggerGroup;->locked:Z

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->setLocked(Z)V

    .line 88
    sget-object v1, Lcom/com2us/module/util/LoggerGroup;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static createLogger(Ljava/lang/String;Landroid/app/Activity;)Lcom/com2us/module/util/Logger;
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    .line 107
    .local v0, "logger":Lcom/com2us/module/util/Logger;
    invoke-virtual {v0, p1}, Lcom/com2us/module/util/Logger;->setActivity(Landroid/app/Activity;)V

    .line 108
    return-object v0
.end method

.method public static isLocked()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/com2us/module/util/LoggerGroup;->locked:Z

    return v0
.end method

.method public static setLocked(Z)V
    .locals 2
    .param p0, "locked"    # Z

    .prologue
    .line 44
    sget-object v1, Lcom/com2us/module/util/LoggerGroup;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/com2us/module/util/Logger;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    sput-boolean p0, Lcom/com2us/module/util/LoggerGroup;->locked:Z

    .line 47
    return-void

    .line 45
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/com2us/module/util/Logger;

    invoke-virtual {v1, p0}, Lcom/com2us/module/util/Logger;->setLocked(Z)V

    goto :goto_0
.end method

.method public static setLogged(Z)V
    .locals 2
    .param p0, "isLogged"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lcom/com2us/module/util/LoggerGroup;->logged:Z

    .line 26
    sget-object v1, Lcom/com2us/module/util/LoggerGroup;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/com2us/module/util/Logger;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    return-void

    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/com2us/module/util/Logger;

    invoke-virtual {v1, p0}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    goto :goto_0
.end method

.method public static setLogged(ZLjava/lang/String;)V
    .locals 1
    .param p0, "isLogged"    # Z
    .param p1, "TAG"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/com2us/module/util/LoggerGroup;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/util/Logger;

    invoke-virtual {v0, p0}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 32
    return-void
.end method

.method public static varargs setLogged(Z[Ljava/lang/String;)V
    .locals 4
    .param p0, "isLogged"    # Z
    .param p1, "TAGs"    # [Ljava/lang/String;

    .prologue
    .line 35
    array-length v3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 37
    return-void

    .line 35
    :cond_0
    aget-object v0, p1, v2

    .line 36
    .local v0, "tag":Ljava/lang/String;
    sget-object v1, Lcom/com2us/module/util/LoggerGroup;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/com2us/module/util/Logger;

    invoke-virtual {v1, p0}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 35
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public static showTag()V
    .locals 5

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[showTag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/com2us/module/util/LoggerGroup;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    const-string v2, "LoggerGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 71
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
