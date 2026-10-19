.class public Lcom/com2us/peppermint/LocalStorage;
.super Ljava/lang/Object;


# static fields
.field public static HUB_SharedPreferences:Ljava/lang/String;

.field private static a:Ljava/lang/String;

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HUB_SharedPreferences"

    sput-object v0, Lcom/com2us/peppermint/LocalStorage;->HUB_SharedPreferences:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/peppermint/LocalStorage;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/peppermint/LocalStorage;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/com2us/peppermint/LocalStorage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getDataValueWithKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/com2us/peppermint/LocalStorage;->HUB_SharedPreferences:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/com2us/peppermint/util/PeppermintEncryption;

    invoke-direct {v1}, Lcom/com2us/peppermint/util/PeppermintEncryption;-><init>()V

    sget-boolean v2, Lcom/com2us/peppermint/LocalStorage;->a:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/com2us/peppermint/LocalStorage;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/com2us/peppermint/util/PeppermintEncryption;->decryptDES(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEncrytion()Z
    .locals 1

    sget-boolean v0, Lcom/com2us/peppermint/LocalStorage;->a:Z

    return v0
.end method

.method public static varargs getHashDataValueWithKey(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/com2us/peppermint/LocalStorage;->HUB_SharedPreferences:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    array-length v4, p1

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    aget-object v5, p1, v2

    :try_start_0
    new-instance v0, Lcom/com2us/peppermint/util/PeppermintEncryption;

    invoke-direct {v0}, Lcom/com2us/peppermint/util/PeppermintEncryption;-><init>()V

    sget-boolean v6, Lcom/com2us/peppermint/LocalStorage;->a:Z

    if-eqz v6, :cond_1

    invoke-static {p0}, Lcom/com2us/peppermint/LocalStorage;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lcom/com2us/peppermint/util/PeppermintEncryption;->decryptDES(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, ""

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static varargs isKeysExist(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/com2us/peppermint/LocalStorage;->HUB_SharedPreferences:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    array-length v3, p1

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    aget-object v4, p1, v1

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static varargs removeDataValueWithKey(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/com2us/peppermint/LocalStorage;->HUB_SharedPreferences:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    array-length v2, p1

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    :cond_0
    aget-object v3, p1, v0

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setDataValueWithKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/com2us/peppermint/LocalStorage;->HUB_SharedPreferences:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/com2us/peppermint/util/PeppermintEncryption;

    invoke-direct {v2}, Lcom/com2us/peppermint/util/PeppermintEncryption;-><init>()V

    sget-boolean v3, Lcom/com2us/peppermint/LocalStorage;->a:Z

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/com2us/peppermint/LocalStorage;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Lcom/com2us/peppermint/util/PeppermintEncryption;->encryptDES(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :cond_0
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setEncrytion(Z)V
    .locals 0

    sput-boolean p0, Lcom/com2us/peppermint/LocalStorage;->a:Z

    return-void
.end method

.method public static setEncrytion(ZLjava/lang/String;)V
    .locals 0

    sput-boolean p0, Lcom/com2us/peppermint/LocalStorage;->a:Z

    sput-object p1, Lcom/com2us/peppermint/LocalStorage;->a:Ljava/lang/String;

    return-void
.end method

.method public static setHashValueWithKey(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/com2us/peppermint/LocalStorage;->HUB_SharedPreferences:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v5, Lcom/com2us/peppermint/util/PeppermintEncryption;

    invoke-direct {v5}, Lcom/com2us/peppermint/util/PeppermintEncryption;-><init>()V

    sget-boolean v1, Lcom/com2us/peppermint/LocalStorage;->a:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/com2us/peppermint/LocalStorage;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Lcom/com2us/peppermint/util/PeppermintEncryption;->encryptDES(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1
.end method
