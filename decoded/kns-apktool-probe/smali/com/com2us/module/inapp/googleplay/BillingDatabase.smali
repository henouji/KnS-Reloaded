.class public Lcom/com2us/module/inapp/googleplay/BillingDatabase;
.super Ljava/lang/Object;
.source "BillingDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/inapp/googleplay/BillingDatabase$DatabaseHelper;
    }
.end annotation


# instance fields
.field private mDatabaseHelper:Lcom/com2us/module/inapp/googleplay/BillingDatabase$DatabaseHelper;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/com2us/module/inapp/googleplay/BillingDatabase$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lcom/com2us/module/inapp/googleplay/BillingDatabase$DatabaseHelper;-><init>(Lcom/com2us/module/inapp/googleplay/BillingDatabase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->mDatabaseHelper:Lcom/com2us/module/inapp/googleplay/BillingDatabase$DatabaseHelper;

    .line 16
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->mDatabaseHelper:Lcom/com2us/module/inapp/googleplay/BillingDatabase$DatabaseHelper;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->mDatabaseHelper:Lcom/com2us/module/inapp/googleplay/BillingDatabase$DatabaseHelper;

    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase$DatabaseHelper;->close()V

    .line 21
    return-void
.end method

.method public declared-synchronized deleteLogData(Ljava/lang/String;)V
    .locals 5
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deletePurchase(Ljava/lang/String;)V
    .locals 5
    .param p1, "signedData"    # Ljava/lang/String;

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-static {v3}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLogData()[[Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 82
    monitor-enter p0

    const/4 v12, 0x0

    .line 83
    .local v12, "ret":[[Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    .line 84
    .local v3, "columns":[Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 86
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 88
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_0

    move-object v1, v13

    .line 105
    :goto_0
    monitor-exit p0

    return-object v1

    .line 91
    :cond_0
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    move-object v12, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    const/4 v10, 0x0

    .line 94
    .local v10, "cnt":I
    :goto_1
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 100
    if-eqz v11, :cond_1

    .line 101
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    move-object v1, v12

    .line 105
    goto :goto_0

    .line 96
    :cond_2
    :try_start_4
    aget-object v1, v12, v10

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 99
    :catchall_0
    move-exception v1

    .line 100
    if-eqz v11, :cond_3

    .line 101
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_3
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 82
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v10    # "cnt":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPurchaseData()[[Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 38
    monitor-enter p0

    const/4 v12, 0x0

    .line 39
    .local v12, "ret":[[Ljava/lang/String;
    const/4 v1, 0x4

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    .line 40
    .local v3, "columns":[Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 41
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 42
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 43
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 45
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 47
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_0

    move-object v1, v13

    .line 67
    :goto_0
    monitor-exit p0

    return-object v1

    .line 50
    :cond_0
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    move-object v12, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    const/4 v10, 0x0

    .line 53
    .local v10, "cnt":I
    :goto_1
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 62
    if-eqz v11, :cond_1

    .line 63
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    move-object v1, v12

    .line 67
    goto :goto_0

    .line 55
    :cond_2
    :try_start_4
    aget-object v1, v12, v10

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 56
    aget-object v1, v12, v10

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 57
    aget-object v1, v12, v10

    const/4 v2, 0x2

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 58
    aget-object v1, v12, v10

    const/4 v2, 0x3

    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    if-eqz v11, :cond_3

    .line 63
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_3
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 38
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v10    # "cnt":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateLogData(Ljava/lang/String;)V
    .locals 4
    .param p1, "logData"    # Ljava/lang/String;

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 71
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updatePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "responseStr"    # Ljava/lang/String;

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 25
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 24
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
