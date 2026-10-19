.class public Lcom/com2us/module/push/PushResourceHandler;
.super Ljava/lang/Object;
.source "PushResourceHandler.java"


# static fields
.field private static final PUSH_FILE_NAME:Ljava/lang/String; = "push.dat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized load(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/com2us/module/push/PushResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const-class v6, Lcom/com2us/module/push/PushResourceHandler;

    monitor-enter v6

    :try_start_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .local v2, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    const/4 v3, 0x0

    .line 36
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    const-string v7, "push.dat"

    invoke-virtual {p0, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/LinkedHashMap;

    move-object v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 41
    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v4

    .line 44
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "[PushResourceHandler]load: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 45
    monitor-exit v6

    return-object v2

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    sget-boolean v5, Lcom/com2us/module/push/PushConfig;->LOG:Z

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 41
    :cond_1
    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    .line 40
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 41
    :goto_2
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 43
    :cond_2
    :goto_3
    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 32
    .end local v2    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 41
    .restart local v2    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0

    :catch_3
    move-exception v7

    goto :goto_3

    .line 40
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 38
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :cond_3
    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0
.end method

.method public static putIntentExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;)Landroid/content/Intent;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "noticeID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/com2us/module/push/PushResource;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/push/PushResource;

    .line 51
    .local v0, "res":Lcom/com2us/module/push/PushResource;
    const-string v1, "title"

    iget-object v2, v0, Lcom/com2us/module/push/PushResource;->title:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "msg"

    iget-object v2, v0, Lcom/com2us/module/push/PushResource;->msg:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "bigmsg"

    iget-object v2, v0, Lcom/com2us/module/push/PushResource;->bigmsg:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "ticker"

    iget-object v2, v0, Lcom/com2us/module/push/PushResource;->ticker:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "noticeID"

    iget-object v2, v0, Lcom/com2us/module/push/PushResource;->noticeID:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "type"

    iget-object v2, v0, Lcom/com2us/module/push/PushResource;->type:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "icon"

    iget-object v2, v0, Lcom/com2us/module/push/PushResource;->icon:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "sound"

    iget-object v2, v0, Lcom/com2us/module/push/PushResource;->sound:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "active"

    iget-object v2, v0, Lcom/com2us/module/push/PushResource;->active:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "packageName"

    iget-object v2, v0, Lcom/com2us/module/push/PushResource;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "broadcastAction"

    iget-object v2, v0, Lcom/com2us/module/push/PushResource;->broadcastAction:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "buckettype"

    iget v2, v0, Lcom/com2us/module/push/PushResource;->buckettype:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v1, "bucketsize"

    iget v2, v0, Lcom/com2us/module/push/PushResource;->bucketsize:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v1, "bigpicture"

    iget-object v2, v0, Lcom/com2us/module/push/PushResource;->bigpicture:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    return-object p0
.end method

.method public static declared-synchronized save(Landroid/content/Context;Ljava/util/LinkedHashMap;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/com2us/module/push/PushResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/com2us/module/push/PushResource;>;"
    const-class v4, Lcom/com2us/module/push/PushResourceHandler;

    monitor-enter v4

    const/4 v1, 0x0

    .line 20
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    const-string v5, "push.dat"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 25
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v1, v2

    .line 27
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    :cond_0
    :goto_0
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[PushResourceHandler]save: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    monitor-exit v4

    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    sget-boolean v3, Lcom/com2us/module/push/PushConfig;->LOG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 25
    :cond_1
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    .line 24
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 25
    :goto_2
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 26
    :cond_2
    :goto_3
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 18
    :catchall_1
    move-exception v3

    :goto_4
    monitor-exit v4

    throw v3

    .line 25
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_3

    .line 24
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 22
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 18
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_4

    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :cond_3
    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0
.end method
