.class public Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;
.super Ljava/lang/Object;
.source "DefaultBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/inapp/DefaultBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PropertyUtil"
.end annotation


# instance fields
.field private PROPERTIY_FILE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private m_profile:Ljava/io/File;

.field private m_pros:Ljava/util/Properties;

.field final synthetic this$0:Lcom/com2us/module/inapp/DefaultBilling;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/DefaultBilling;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 228
    iput-object p1, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->this$0:Lcom/com2us/module/inapp/DefaultBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const-string v3, "InApp"

    iput-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->TAG:Ljava/lang/String;

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->PROPERTIY_FILE:Ljava/lang/String;

    .line 225
    iput-object v5, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_profile:Ljava/io/File;

    .line 226
    iput-object v5, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_pros:Ljava/util/Properties;

    .line 230
    if-nez p3, :cond_3

    sget-object v3, Lcom/com2us/module/inapp/DefaultBilling;->LOG_TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->TAG:Ljava/lang/String;

    .line 232
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->PROPERTIY_FILE:Ljava/lang/String;

    .line 234
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->PROPERTIY_FILE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_profile:Ljava/io/File;

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "m_profile Path : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->PROPERTIY_FILE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 236
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    iput-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_pros:Ljava/util/Properties;

    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, "m_fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 242
    iget-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 243
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local v1    # "m_fis":Ljava/io/FileInputStream;
    .local v2, "m_fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    if-eqz v2, :cond_5

    .line 252
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 256
    :goto_1
    const/4 v1, 0x0

    .line 259
    .end local v2    # "m_fis":Ljava/io/FileInputStream;
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    return-void

    .line 231
    .end local v1    # "m_fis":Ljava/io/FileInputStream;
    :cond_3
    iput-object p3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->TAG:Ljava/lang/String;

    goto/16 :goto_0

    .line 246
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Property File Load Failed -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    if-eqz v1, :cond_2

    .line 252
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v1, 0x0

    goto :goto_2

    .line 253
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 249
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 250
    :goto_5
    if-eqz v1, :cond_4

    .line 252
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 256
    :goto_6
    const/4 v1, 0x0

    .line 258
    :cond_4
    throw v3

    .line 253
    :catch_2
    move-exception v0

    .line 254
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 253
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "m_fis":Ljava/io/FileInputStream;
    .restart local v2    # "m_fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 254
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 249
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "m_fis":Ljava/io/FileInputStream;
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 246
    .end local v1    # "m_fis":Ljava/io/FileInputStream;
    .restart local v2    # "m_fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "m_fis":Ljava/io/FileInputStream;
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "m_fis":Ljava/io/FileInputStream;
    .restart local v2    # "m_fis":Ljava/io/FileInputStream;
    :cond_5
    move-object v1, v2

    .end local v2    # "m_fis":Ljava/io/FileInputStream;
    .restart local v1    # "m_fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public clearProperty()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 273
    return-void
.end method

.method public deleteFile()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 298
    return-void
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_pros:Ljava/util/Properties;

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
    .line 276
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized storeProperty(Ljava/lang/String;)V
    .locals 4
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 280
    monitor-enter p0

    const/4 v1, 0x0

    .line 282
    .local v1, "m_fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_profile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .local v2, "m_fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->m_pros:Ljava/util/Properties;

    invoke-virtual {v3, v2, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 287
    if-eqz v2, :cond_2

    .line 289
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v1, v2

    .line 294
    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    if-eqz v1, :cond_0

    .line 289
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 290
    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 280
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit p0

    throw v3

    .line 286
    :catchall_1
    move-exception v3

    .line 287
    :goto_3
    if-eqz v1, :cond_1

    .line 289
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 293
    :cond_1
    :goto_4
    :try_start_7
    throw v3

    .line 290
    :catch_2
    move-exception v0

    .line 291
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 290
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v2    # "m_fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 291
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

    .line 286
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v2    # "m_fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 284
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v2    # "m_fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 280
    .end local v1    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v2    # "m_fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "m_fos":Ljava/io/FileOutputStream;
    .restart local v1    # "m_fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
