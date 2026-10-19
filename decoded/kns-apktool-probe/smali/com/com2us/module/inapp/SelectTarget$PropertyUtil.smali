.class Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;
.super Ljava/lang/Object;
.source "SelectTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/inapp/SelectTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertyUtil"
.end annotation


# static fields
.field private static m_propertyUtil:Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;


# instance fields
.field private PROPERTIY_FILE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private m_profile:Ljava/io/File;

.field private m_pros:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_propertyUtil:Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    const-string v3, "InApp"

    iput-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->TAG:Ljava/lang/String;

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->PROPERTIY_FILE:Ljava/lang/String;

    .line 472
    iput-object v5, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_profile:Ljava/io/File;

    .line 473
    iput-object v5, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_pros:Ljava/util/Properties;

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->PROPERTIY_FILE:Ljava/lang/String;

    .line 485
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->PROPERTIY_FILE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_profile:Ljava/io/File;

    .line 486
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    iput-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_pros:Ljava/util/Properties;

    .line 487
    const/4 v1, 0x0

    .line 489
    .local v1, "m_fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 490
    iget-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 491
    :cond_0
    iget-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 492
    iget-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 493
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    .end local v1    # "m_fis":Ljava/io/FileInputStream;
    .local v2, "m_fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 499
    if-eqz v2, :cond_4

    .line 501
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 505
    :goto_0
    const/4 v1, 0x0

    .line 508
    .end local v2    # "m_fis":Ljava/io/FileInputStream;
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    if-eqz v1, :cond_2

    .line 501
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 505
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v1, 0x0

    goto :goto_1

    .line 502
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 503
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 498
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 499
    :goto_4
    if-eqz v1, :cond_3

    .line 501
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 505
    :goto_5
    const/4 v1, 0x0

    .line 507
    :cond_3
    throw v3

    .line 502
    :catch_2
    move-exception v0

    .line 503
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "m_fis":Ljava/io/FileInputStream;
    .restart local v2    # "m_fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 503
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 498
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "m_fis":Ljava/io/FileInputStream;
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 496
    .end local v1    # "m_fis":Ljava/io/FileInputStream;
    .restart local v2    # "m_fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "m_fis":Ljava/io/FileInputStream;
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "m_fis":Ljava/io/FileInputStream;
    .restart local v2    # "m_fis":Ljava/io/FileInputStream;
    :cond_4
    move-object v1, v2

    .end local v2    # "m_fis":Ljava/io/FileInputStream;
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;)V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 477
    sget-object v0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_propertyUtil:Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;

    invoke-direct {v0, p0}, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_propertyUtil:Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;

    .line 478
    :cond_0
    sget-object v0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_propertyUtil:Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;

    return-object v0
.end method


# virtual methods
.method public clearProperty()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 520
    return-void
.end method

.method public deleteFile()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 545
    return-void
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keysProperty()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    monitor-exit p0

    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized storeProperty(Ljava/lang/String;)V
    .locals 4
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 527
    monitor-enter p0

    const/4 v1, 0x0

    .line 529
    .local v1, "m_fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 530
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .local v2, "m_fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v3, v2, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 534
    if-eqz v2, :cond_2

    .line 536
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v1, v2

    .line 541
    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 534
    if-eqz v1, :cond_0

    .line 536
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 537
    :catch_1
    move-exception v0

    .line 538
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 527
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit p0

    throw v3

    .line 533
    :catchall_1
    move-exception v3

    .line 534
    :goto_3
    if-eqz v1, :cond_1

    .line 536
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 540
    :cond_1
    :goto_4
    :try_start_7
    throw v3

    .line 537
    :catch_2
    move-exception v0

    .line 538
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 537
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v2    # "m_fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 538
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    move-object v1, v2

    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 533
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v2    # "m_fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 531
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v2    # "m_fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 527
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v2    # "m_fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
