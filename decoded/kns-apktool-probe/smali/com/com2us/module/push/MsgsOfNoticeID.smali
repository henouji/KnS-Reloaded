.class abstract Lcom/com2us/module/push/MsgsOfNoticeID;
.super Ljava/lang/Object;
.source "PushConfig.java"


# static fields
.field private static final fileName:Ljava/lang/String; = "msgsMap.dat"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noticeID"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 995
    const-class v7, Lcom/com2us/module/push/MsgsOfNoticeID;

    monitor-enter v7

    :try_start_0
    const-string v6, "add Msgs Data"

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 997
    invoke-static {p0}, Lcom/com2us/module/push/MsgsOfNoticeID;->loadingMsgsData(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1000
    .local v3, "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1001
    .local v5, "oldSeqArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1002
    .local v4, "newSeqArray":[Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 1004
    :cond_0
    if-eqz v5, :cond_3

    .line 1005
    array-length v6, v5

    add-int/lit8 v6, v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    .line 1007
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-lt v2, v6, :cond_2

    .line 1011
    array-length v6, v5

    aput-object p2, v4, v6

    .line 1012
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "newSeqArray["

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v5

    aget-object v8, v4, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 1020
    .end local v2    # "i":I
    :goto_1
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    :cond_1
    invoke-virtual {v3, p1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    invoke-static {p0, v3}, Lcom/com2us/module/push/MsgsOfNoticeID;->savingMsgsData(Landroid/content/Context;Ljava/util/LinkedHashMap;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v4

    .line 1028
    :goto_2
    monitor-exit v7

    return-object v6

    .line 1008
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    aget-object v6, v5, v2

    aput-object v6, v4, v2

    .line 1009
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "newSeqArray["

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v4, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 1007
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1015
    .end local v2    # "i":I
    :cond_3
    const-string v6, "oldSeqArray is null"

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 1016
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    .line 1017
    const/4 v6, 0x0

    aput-object p2, v4, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1026
    :catch_0
    move-exception v1

    .line 1027
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 1028
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 995
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v4    # "newSeqArray":[Ljava/lang/String;
    .end local v5    # "oldSeqArray":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static declared-synchronized clearAllMsgs(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1052
    const-class v2, Lcom/com2us/module/push/MsgsOfNoticeID;

    monitor-enter v2

    :try_start_0
    const-string v1, "clear all Msgs Data"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    :try_start_1
    const-string v1, "msgsMap.dat"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1058
    :goto_0
    monitor-exit v2

    return v1

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1058
    const/4 v1, 0x0

    goto :goto_0

    .line 1052
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized clearMsgs(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noticeID"    # Ljava/lang/String;

    .prologue
    .line 1033
    const-class v5, Lcom/com2us/module/push/MsgsOfNoticeID;

    monitor-enter v5

    :try_start_0
    const-string v4, "clear Msgs Data"

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 1035
    invoke-static {p0}, Lcom/com2us/module/push/MsgsOfNoticeID;->loadingMsgsData(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1038
    .local v2, "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1039
    .local v3, "seqArray":[Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    :cond_0
    if-nez v3, :cond_1

    const/4 v4, 0x1

    .line 1047
    :goto_0
    monitor-exit v5

    return v4

    .line 1043
    :cond_1
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    invoke-static {p0, v2}, Lcom/com2us/module/push/MsgsOfNoticeID;->savingMsgsData(Landroid/content/Context;Ljava/util/LinkedHashMap;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v1

    .line 1046
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1047
    const/4 v4, 0x0

    goto :goto_0

    .line 1033
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v3    # "seqArray":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static declared-synchronized loadingMsgsData(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 951
    const-class v9, Lcom/com2us/module/push/MsgsOfNoticeID;

    monitor-enter v9

    :try_start_0
    const-string v8, "loading msgs data"

    invoke-static {v8}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 953
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    .local v6, "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 955
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 958
    .local v4, "is":Ljava/io/ObjectInputStream;
    :try_start_1
    const-string v8, "msgsMap.dat"

    invoke-virtual {p0, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 959
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 961
    .end local v4    # "is":Ljava/io/ObjectInputStream;
    .local v5, "is":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/LinkedHashMap;

    move-object v6, v0

    .line 962
    const-string v8, "loading msgsMap data success"

    invoke-static {v8}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 970
    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_0
    move-object v4, v5

    .end local v5    # "is":Ljava/io/ObjectInputStream;
    .restart local v4    # "is":Ljava/io/ObjectInputStream;
    move-object v7, v6

    .line 968
    .end local v6    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .local v7, "msgsMap":Ljava/lang/Object;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :goto_1
    monitor-exit v9

    return-object v7

    .line 970
    .end local v4    # "is":Ljava/io/ObjectInputStream;
    .end local v7    # "msgsMap":Ljava/lang/Object;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v5    # "is":Ljava/io/ObjectInputStream;
    .restart local v6    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .local v2, "e2":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 951
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "is":Ljava/io/ObjectInputStream;
    .end local v6    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 964
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/ObjectInputStream;
    .restart local v6    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    move-object v7, v6

    .line 965
    .end local v6    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .local v1, "e":Ljava/lang/Exception;
    .local v7, "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 966
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 967
    .end local v7    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v6    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :try_start_6
    const-string v8, "loading msgsMap data fail"

    invoke-static {v8}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 970
    if-eqz v4, :cond_1

    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_1
    :goto_3
    move-object v7, v6

    .line 968
    .local v7, "msgsMap":Ljava/lang/Object;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    goto :goto_1

    .line 970
    .end local v7    # "msgsMap":Ljava/lang/Object;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :catch_2
    move-exception v2

    .restart local v2    # "e2":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 969
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    .line 970
    :goto_4
    if-eqz v4, :cond_2

    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 971
    :cond_2
    :goto_5
    :try_start_a
    throw v8

    .line 970
    :catch_3
    move-exception v2

    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 969
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/ObjectInputStream;
    .restart local v5    # "is":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "is":Ljava/io/ObjectInputStream;
    .restart local v4    # "is":Ljava/io/ObjectInputStream;
    goto :goto_4

    .end local v6    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v1    # "e":Ljava/lang/Exception;
    .local v7, "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :catchall_3
    move-exception v8

    move-object v6, v7

    .end local v7    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v6    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    goto :goto_4

    .line 964
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/ObjectInputStream;
    .restart local v5    # "is":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "is":Ljava/io/ObjectInputStream;
    .restart local v4    # "is":Ljava/io/ObjectInputStream;
    move-object v7, v6

    .end local v6    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v7    # "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    goto :goto_2
.end method

.method private static declared-synchronized savingMsgsData(Landroid/content/Context;Ljava/util/LinkedHashMap;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "msgsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 975
    const-class v6, Lcom/com2us/module/push/MsgsOfNoticeID;

    monitor-enter v6

    :try_start_0
    const-string v7, "saving msgs Data"

    invoke-static {v7}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    const/4 v2, 0x0

    .line 978
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 981
    .local v3, "os":Ljava/io/ObjectOutputStream;
    :try_start_1
    const-string v7, "msgsMap.dat"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 982
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 983
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    .local v4, "os":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 984
    const-string v7, "savingMsgsData is true"

    invoke-static {v7}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 990
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 985
    :cond_0
    :goto_0
    const/4 v5, 0x1

    move-object v3, v4

    .line 988
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v3    # "os":Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_1
    monitor-exit v6

    return v5

    .line 990
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .local v1, "e2":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 975
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 986
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v7, "savingMsgsData is false"

    invoke-static {v7}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 990
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v1

    .restart local v1    # "e2":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 989
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    .line 990
    :goto_3
    if-eqz v3, :cond_2

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 991
    :cond_2
    :goto_4
    :try_start_9
    throw v5

    .line 990
    :catch_3
    move-exception v1

    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 989
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v3    # "os":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 986
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v3    # "os":Ljava/io/ObjectOutputStream;
    goto :goto_2
.end method
