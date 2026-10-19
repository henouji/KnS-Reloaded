.class public final Lit/partytrack/sdk/compress/i;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "partytrack"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "CREATE TABLE %s(%s %s, %s %s, %s %s, %s %s, %s %s, %s %s, %s %s);"

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "events"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "INTEGER PRIMARY KEY"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "event_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "INTEGER NOT NULL DEFAULT 0"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "event_identifier"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "TEXT NOT NULL DEFAULT \'\'"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "params"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "TEXT"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "resend_count"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "INTEGER DEFAULT 0"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "created_at"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "INTEGER NOT NULL"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "updated_at"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "INTEGER NOT NULL"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
