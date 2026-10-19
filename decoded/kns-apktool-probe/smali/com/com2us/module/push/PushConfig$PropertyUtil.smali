.class public Lcom/com2us/module/push/PushConfig$PropertyUtil;
.super Ljava/lang/Object;
.source "PushConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/push/PushConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PropertyUtil"
.end annotation


# static fields
.field private static m_profile:Ljava/io/File;

.field private static m_propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

.field private static m_pros:Ljava/util/Properties;


# instance fields
.field private final PROPERTIY_FILE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 672
    sput-object v0, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    .line 674
    sput-object v0, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_profile:Ljava/io/File;

    .line 675
    sput-object v0, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_pros:Ljava/util/Properties;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    const-string v1, "/PushConfig.properties"

    iput-object v1, p0, Lcom/com2us/module/push/PushConfig$PropertyUtil;->PROPERTIY_FILE:Ljava/lang/String;

    .line 678
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/PushConfig.properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_profile:Ljava/io/File;

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "m_profile Path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/PushConfig.properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 680
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_pros:Ljava/util/Properties;

    .line 682
    :try_start_0
    sget-object v1, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 683
    sget-object v1, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 684
    :cond_0
    sget-object v1, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 685
    sget-object v1, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :cond_1
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Property File Load Failed -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/com2us/module/push/PushConfig$PropertyUtil;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 693
    const-class v1, Lcom/com2us/module/push/PushConfig$PropertyUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Lcom/com2us/module/push/PushConfig$PropertyUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/com2us/module/push/PushConfig$PropertyUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;

    .line 696
    :cond_0
    sget-object v0, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_propertyUtil:Lcom/com2us/module/push/PushConfig$PropertyUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearProperty()V
    .locals 1

    .prologue
    .line 728
    sget-object v0, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 729
    return-void
.end method

.method public deleteFile()V
    .locals 1

    .prologue
    .line 753
    sget-object v0, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 754
    return-void
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 719
    sget-object v0, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_pros:Ljava/util/Properties;

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
    .line 732
    sget-object v0, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized loadProperty()V
    .locals 4

    .prologue
    .line 700
    monitor-enter p0

    const/4 v1, 0x0

    .line 702
    .local v1, "m_fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 703
    .end local v1    # "m_fis":Ljava/io/FileInputStream;
    .local v2, "m_fis":Ljava/io/FileInputStream;
    :try_start_1
    sget-object v3, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 707
    if-eqz v2, :cond_2

    .line 709
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 713
    :goto_0
    const/4 v1, 0x0

    .line 716
    .end local v2    # "m_fis":Ljava/io/FileInputStream;
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 707
    if-eqz v1, :cond_0

    .line 709
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 713
    :goto_3
    const/4 v1, 0x0

    goto :goto_1

    .line 710
    :catch_1
    move-exception v0

    .line 711
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 700
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_4
    monitor-exit p0

    throw v3

    .line 706
    :catchall_1
    move-exception v3

    .line 707
    :goto_5
    if-eqz v1, :cond_1

    .line 709
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 713
    :goto_6
    const/4 v1, 0x0

    .line 715
    :cond_1
    :try_start_7
    throw v3

    .line 710
    :catch_2
    move-exception v0

    .line 711
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    .line 710
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "m_fis":Ljava/io/FileInputStream;
    .restart local v2    # "m_fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 711
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    .line 700
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "m_fis":Ljava/io/FileInputStream;
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 706
    .end local v1    # "m_fis":Ljava/io/FileInputStream;
    .restart local v2    # "m_fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "m_fis":Ljava/io/FileInputStream;
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 704
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
    :cond_2
    move-object v1, v2

    .end local v2    # "m_fis":Ljava/io/FileInputStream;
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 723
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    .line 724
    :cond_0
    sget-object v0, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit p0

    return-void

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized storeProperty(Ljava/lang/String;)V
    .locals 4
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 736
    monitor-enter p0

    const/4 v1, 0x0

    .line 738
    .local v1, "m_fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 739
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .local v2, "m_fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Lcom/com2us/module/push/PushConfig$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v3, v2, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 743
    if-eqz v2, :cond_2

    .line 745
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v1, v2

    .line 750
    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 743
    if-eqz v1, :cond_0

    .line 745
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 746
    :catch_1
    move-exception v0

    .line 747
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 736
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit p0

    throw v3

    .line 742
    :catchall_1
    move-exception v3

    .line 743
    :goto_3
    if-eqz v1, :cond_1

    .line 745
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 749
    :cond_1
    :goto_4
    :try_start_7
    throw v3

    .line 746
    :catch_2
    move-exception v0

    .line 747
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 746
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v2    # "m_fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 747
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

    .line 742
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v2    # "m_fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 740
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v2    # "m_fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 736
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v2    # "m_fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
