.class public final Lit/partytrack/sdk/compress/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lit/partytrack/sdk/compress/b;->a:Z

    return-void
.end method

.method private static a(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lit/partytrack/sdk/compress/i;

    sget-object v2, Lit/partytrack/sdk/compress/d;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lit/partytrack/sdk/compress/i;-><init>(Landroid/content/Context;)V

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lit/partytrack/sdk/compress/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lit/partytrack/sdk/compress/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method static a()V
    .locals 2

    :try_start_0
    sget-object v0, Lit/partytrack/sdk/compress/d;->a:Landroid/content/Context;

    const-string v1, "partytrack"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method static a(I)V
    .locals 8

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lit/partytrack/sdk/compress/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "INSERT INTO %s (%s, %s, %s) VALUES (?, ?, ?);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "events"

    aput-object v3, v2, v4

    const-string v3, "event_id"

    aput-object v3, v2, v6

    const-string v3, "created_at"

    aput-object v3, v2, v7

    const-string v3, "updated_at"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lit/partytrack/sdk/compress/b;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0
.end method

.method private static a(Lit/partytrack/sdk/compress/a;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {v6}, Lit/partytrack/sdk/compress/b;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lit/partytrack/sdk/compress/a;->a:Ljava/lang/String;

    const-string v2, "start_event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lit/partytrack/sdk/compress/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "UPDATE %s SET %s = ? WHERE %s = ?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "events"

    aput-object v4, v3, v5

    const-string v4, "id"

    aput-object v4, v3, v6

    const-string v4, "id"

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lit/partytrack/sdk/compress/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "DELETE FROM %s WHERE %s = ?;"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "events"

    aput-object v4, v3, v5

    const-string v4, "id"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lit/partytrack/sdk/compress/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static a(Lit/partytrack/sdk/compress/j;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lit/partytrack/sdk/compress/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "item_name"

    iget-object v2, p0, Lit/partytrack/sdk/compress/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "item_price"

    iget v2, p0, Lit/partytrack/sdk/compress/j;->a:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "item_price_currency"

    iget-object v2, p0, Lit/partytrack/sdk/compress/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "item_num"

    iget v2, p0, Lit/partytrack/sdk/compress/j;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "INSERT INTO %s(%s, %s, %s, %s) VALUES(?, ? , ?, ?);"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "events"

    aput-object v4, v3, v6

    const-string v4, "event_identifier"

    aput-object v4, v3, v5

    const-string v4, "params"

    aput-object v4, v3, v7

    const-string v4, "created_at"

    aput-object v4, v3, v8

    const-string v4, "updated_at"

    aput-object v4, v3, v9

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lit/partytrack/sdk/compress/b;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "payment"

    aput-object v4, v3, v6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method static a(Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lit/partytrack/sdk/compress/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "INSERT INTO %s (%s, %s, %s) VALUES (?, ?, ?);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "events"

    aput-object v3, v2, v4

    const-string v3, "event_identifier"

    aput-object v3, v2, v6

    const-string v3, "created_at"

    aput-object v3, v2, v7

    const-string v3, "updated_at"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lit/partytrack/sdk/compress/b;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0
.end method

.method static a(Z)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    sget-boolean v0, Lit/partytrack/sdk/compress/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lit/partytrack/sdk/compress/d;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object v0, Lit/partytrack/sdk/compress/d;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v11, :cond_1

    move v0, v11

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v10

    goto :goto_0

    :cond_2
    sput-boolean v11, Lit/partytrack/sdk/compress/b;->a:Z

    move v9, v10

    :goto_2
    if-lt v9, v13, :cond_5

    :cond_3
    :goto_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "DELETE FROM %s WHERE resend_count >= ?"

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "events"

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Lit/partytrack/sdk/compress/b;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_4

    new-array v2, v11, [Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    sput-boolean v10, Lit/partytrack/sdk/compress/b;->a:Z

    goto :goto_1

    :cond_5
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    invoke-static {v10}, Lit/partytrack/sdk/compress/b;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "events"

    const-string v3, "id != ? AND resend_count < ?"

    new-array v4, v12, [Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v10

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const-string v7, "id ASC"

    const-string v8, "1"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v1, Lit/partytrack/sdk/compress/a;

    invoke-direct {v1, v3}, Lit/partytrack/sdk/compress/a;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_5
    if-nez p0, :cond_6

    invoke-static {}, Lit/partytrack/sdk/compress/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_6
    if-eqz v1, :cond_3

    iget v0, v1, Lit/partytrack/sdk/compress/a;->a:I

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sget-object v3, Lit/partytrack/sdk/compress/d;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lit/partytrack/sdk/compress/d;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_7

    sget-object v3, Lit/partytrack/sdk/compress/d;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    :cond_7
    invoke-virtual {v1}, Lit/partytrack/sdk/compress/a;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    const-string v3, "referrer"

    invoke-static {v3}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "full_referrer"

    invoke-static {v4}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_8

    const-string v5, "android_referrer_id"

    invoke-interface {v0, v5, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v4, :cond_9

    const-string v3, "android_full_referrer"

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {}, Lit/partytrack/sdk/compress/a;->c()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "privileged"

    const-string v4, "1"

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v3, "gmtoffset"

    sget v4, Lit/partytrack/sdk/compress/d;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "timezone"

    sget-object v4, Lit/partytrack/sdk/compress/d;->d:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "system_version"

    sget-object v4, Lit/partytrack/sdk/compress/d;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "language_code"

    sget-object v4, Lit/partytrack/sdk/compress/d;->e:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "country_code"

    sget-object v4, Lit/partytrack/sdk/compress/d;->f:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sdk_version"

    const-string v4, "1.5.1"

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "model"

    sget-object v4, Lit/partytrack/sdk/compress/d;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app_version"

    sget v4, Lit/partytrack/sdk/compress/d;->a:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lit/partytrack/sdk/compress/a;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_b

    const-string v4, "adtruth_payload"

    invoke-interface {v0, v4, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    new-instance v3, Lit/partytrack/sdk/compress/f;

    const-string v4, "a"

    invoke-static {v4}, Lit/partytrack/sdk/compress/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lit/partytrack/sdk/compress/a;->a(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lit/partytrack/sdk/compress/f;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v3}, Lit/partytrack/sdk/compress/f;->a()V

    iget v0, v3, Lit/partytrack/sdk/compress/f;->a:I

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_d

    invoke-static {v1}, Lit/partytrack/sdk/compress/b;->a(Lit/partytrack/sdk/compress/a;)V

    :cond_c
    :goto_6
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_2

    :cond_d
    iget v0, v3, Lit/partytrack/sdk/compress/f;->a:I

    const/16 v4, 0x190

    if-lt v0, v4, :cond_f

    iget v0, v3, Lit/partytrack/sdk/compress/f;->a:I

    const/16 v4, 0x1f4

    if-ge v0, v4, :cond_f

    iget v0, v1, Lit/partytrack/sdk/compress/a;->b:I

    if-nez v0, :cond_e

    iget-object v0, v1, Lit/partytrack/sdk/compress/a;->a:Ljava/lang/String;

    :goto_7
    const-string v3, "Failed to track event"

    invoke-static {v3}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Assigned event [ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ] is some possibility of don\'t register PartyTrack"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lit/partytrack/sdk/compress/a;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lit/partytrack/sdk/compress/b;->a(Lit/partytrack/sdk/compress/a;)V

    goto :goto_6

    :cond_e
    iget v0, v1, Lit/partytrack/sdk/compress/a;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_f
    iget v0, v3, Lit/partytrack/sdk/compress/f;->a:I

    const/16 v4, 0x12e

    if-ne v0, v4, :cond_10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, v3, Lit/partytrack/sdk/compress/f;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lit/partytrack/sdk/compress/c;

    invoke-direct {v2, v0}, Lit/partytrack/sdk/compress/c;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_10
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "UPDATE %s SET %s = ? WHERE %s = ?"

    new-array v4, v13, [Ljava/lang/Object;

    const-string v5, "events"

    aput-object v5, v4, v10

    const-string v5, "resend_count"

    aput-object v5, v4, v11

    const-string v5, "id"

    aput-object v5, v4, v12

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Lit/partytrack/sdk/compress/b;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_c

    new-array v4, v12, [Ljava/lang/Object;

    iget v5, v1, Lit/partytrack/sdk/compress/a;->c:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    iget v1, v1, Lit/partytrack/sdk/compress/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v11

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_11
    move-object v1, v2

    goto/16 :goto_5
.end method

.method private static a()Z
    .locals 11

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x1

    sget-boolean v0, Lit/partytrack/sdk/compress/d;->c:Z

    if-eqz v0, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    invoke-static {v10}, Lit/partytrack/sdk/compress/b;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "events"

    const-string v3, "id = 0"

    const-string v7, "id ASC"

    const-string v8, "1"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    if-ne v2, v9, :cond_1

    sput-boolean v9, Lit/partytrack/sdk/compress/d;->c:Z

    move v0, v9

    goto :goto_0

    :cond_1
    move v0, v10

    goto :goto_0
.end method
