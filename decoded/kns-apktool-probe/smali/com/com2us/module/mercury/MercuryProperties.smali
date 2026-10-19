.class public Lcom/com2us/module/mercury/MercuryProperties;
.super Ljava/lang/Object;
.source "MercuryProperties.java"


# static fields
.field private static final mPropName:Ljava/lang/String; = "mercury.properties"

.field private static prop:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/com2us/module/mercury/MercuryProperties;->prop:Ljava/util/Properties;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPID(Ljava/lang/String;)V
    .locals 4
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v1, "pidlist"

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "pidList":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 76
    const-string v0, ""

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "Mercury"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pid added. pidList : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "pidlist"

    invoke-static {v1, v0}, Lcom/com2us/module/mercury/MercuryProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static getPIDList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    const-string v1, "pidlist"

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "pidList":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 94
    const-string v0, ""

    .line 97
    :cond_0
    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    sget-object v0, Lcom/com2us/module/mercury/MercuryProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadProperties(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v2, 0x0

    .line 28
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v4, "mercury.properties"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 29
    sget-object v4, Lcom/com2us/module/mercury/MercuryProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    .line 33
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    const-string v4, "mercury.properties"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 39
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    .line 35
    :catch_2
    move-exception v1

    .line 36
    .local v1, "e1":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 39
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_1

    .line 38
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 39
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 40
    :cond_2
    :goto_2
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 43
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    .line 44
    if-eqz v2, :cond_3

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 45
    :cond_3
    :goto_3
    throw v4

    .line 41
    :catch_4
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 44
    if-eqz v2, :cond_0

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_0

    :catch_5
    move-exception v4

    goto :goto_0

    .line 39
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v5

    goto :goto_2

    :catch_7
    move-exception v4

    goto :goto_1

    .line 44
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v5

    goto :goto_3

    :catch_9
    move-exception v4

    goto :goto_0
.end method

.method public static removeProperties(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Lcom/com2us/module/mercury/MercuryProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v0, Lcom/com2us/module/mercury/MercuryProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public static storeProperties(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v2, "mercury.properties"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 53
    sget-object v2, Lcom/com2us/module/mercury/MercuryProperties;->prop:Ljava/util/Properties;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 59
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    .line 56
    :catch_2
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 59
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 60
    :cond_1
    :goto_1
    throw v2

    .line 59
    :catch_4
    move-exception v3

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_0
.end method
