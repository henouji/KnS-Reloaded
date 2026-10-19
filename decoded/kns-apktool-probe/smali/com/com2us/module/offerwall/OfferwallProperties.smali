.class public Lcom/com2us/module/offerwall/OfferwallProperties;
.super Ljava/lang/Object;
.source "OfferwallProperties.java"


# static fields
.field public static logger:Lcom/com2us/module/util/Logger; = null

.field private static final mPropName:Ljava/lang/String; = "offerwall.properties"

.field private static prop:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/com2us/module/offerwall/OfferwallProperties;->prop:Ljava/util/Properties;

    .line 19
    const-string v0, "Offerwall"

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/offerwall/OfferwallProperties;->logger:Lcom/com2us/module/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallProperties;->prop:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 24
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallProperties;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "Error: Properties didn\'t create"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, ""

    .line 27
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadProperties(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v4, Lcom/com2us/module/offerwall/OfferwallProperties;->prop:Ljava/util/Properties;

    if-nez v4, :cond_1

    .line 41
    sget-object v4, Lcom/com2us/module/offerwall/OfferwallProperties;->logger:Lcom/com2us/module/util/Logger;

    const-string v5, "Offerwall"

    const-string v6, "Error: Properties didn\'t create"

    invoke-virtual {v4, v5, v6}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 47
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v4, "offerwall.properties"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 48
    sget-object v4, Lcom/com2us/module/offerwall/OfferwallProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    .line 52
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    const-string v4, "offerwall.properties"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 58
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0

    .line 54
    :catch_3
    move-exception v1

    .line 55
    .local v1, "e1":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 58
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_1

    .line 57
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 58
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 59
    :cond_3
    :goto_2
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 62
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    .line 63
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 64
    :cond_4
    :goto_3
    throw v4

    .line 60
    :catch_5
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 63
    if-eqz v2, :cond_0

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_0

    :catch_6
    move-exception v4

    goto :goto_0

    .line 58
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v5

    goto :goto_2

    :catch_8
    move-exception v4

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v5

    goto :goto_3
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallProperties;->prop:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallProperties;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "Error: Properties didn\'t create"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static storeProperties(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v2, Lcom/com2us/module/offerwall/OfferwallProperties;->prop:Ljava/util/Properties;

    if-nez v2, :cond_1

    .line 71
    sget-object v2, Lcom/com2us/module/offerwall/OfferwallProperties;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Offerwall"

    const-string v4, "Error: Properties didn\'t create"

    invoke-virtual {v2, v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v1, 0x0

    .line 77
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v2, "offerwall.properties"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 78
    sget-object v2, Lcom/com2us/module/offerwall/OfferwallProperties;->prop:Ljava/util/Properties;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 79
    :catch_1
    move-exception v2

    .line 84
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    .line 81
    :catch_3
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v2

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 84
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 85
    :cond_2
    :goto_1
    throw v2

    .line 84
    :catch_5
    move-exception v3

    goto :goto_1
.end method
