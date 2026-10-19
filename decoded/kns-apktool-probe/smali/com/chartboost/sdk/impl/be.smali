.class public Lcom/chartboost/sdk/impl/be;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/be$c;,
        Lcom/chartboost/sdk/impl/be$b;,
        Lcom/chartboost/sdk/impl/be$a;
    }
.end annotation


# static fields
.field public static a:Lcom/chartboost/sdk/impl/be;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/chartboost/sdk/Libraries/h;

.field private static d:Lcom/chartboost/sdk/impl/m;

.field private static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/chartboost/sdk/impl/be$b;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/chartboost/sdk/impl/be$a;

.field private static g:Lcom/chartboost/sdk/impl/be$a;

.field private static h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static j:Z

.field private static k:Lcom/chartboost/sdk/Model/a;

.field private static l:Z

.field private static m:Ljava/util/Observer;

.field private static n:Lcom/chartboost/sdk/impl/ba$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/impl/be;->j:Z

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/impl/be;->l:Z

    .line 109
    new-instance v0, Lcom/chartboost/sdk/impl/be$1;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/be$1;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->m:Ljava/util/Observer;

    .line 207
    new-instance v0, Lcom/chartboost/sdk/impl/be$2;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/be$2;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->n:Lcom/chartboost/sdk/impl/ba$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/be$a;)Lcom/chartboost/sdk/impl/be$a;
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/chartboost/sdk/impl/be;
    .locals 2

    .prologue
    .line 128
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->a:Lcom/chartboost/sdk/impl/be;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/chartboost/sdk/impl/be;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/be;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->a:Lcom/chartboost/sdk/impl/be;

    .line 130
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->m()V

    .line 132
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->a:Lcom/chartboost/sdk/impl/be;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 232
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->e()V

    .line 234
    if-eqz p0, :cond_6

    .line 235
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 236
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 237
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->c()[Ljava/lang/String;

    move-result-object v4

    .line 238
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->o()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 239
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->c(I)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    .line 240
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "video"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    const-string v7, "video"

    invoke-virtual {v5, v7}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 244
    sget-object v7, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v7, v6}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 245
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v7, Lcom/chartboost/sdk/impl/be;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 248
    :cond_2
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 250
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 251
    sget-object v0, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sput-object v0, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    .line 253
    :cond_4
    sget-boolean v0, Lcom/chartboost/sdk/impl/be;->j:Z

    if-eqz v0, :cond_5

    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/impl/be;->j:Z

    .line 255
    :cond_5
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v5, "synchronizeVideos: Delete and Download new videos"

    invoke-static {v0, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-static {v2, v4}, Lcom/chartboost/sdk/impl/be;->a(Ljava/util/HashMap;[Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    invoke-static {v3}, Lcom/chartboost/sdk/impl/be;->a(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :cond_6
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 448
    const-class v0, Lcom/chartboost/sdk/impl/be;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/chartboost/sdk/impl/be;->k:Lcom/chartboost/sdk/Model/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    monitor-exit v0

    return-void

    .line 448
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized a(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    const-class v2, Lcom/chartboost/sdk/impl/be;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v1, "downloadVideos: Downloading videos from server"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    new-instance v4, Lcom/chartboost/sdk/impl/be$c;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/chartboost/sdk/impl/be$c;-><init>(Lcom/chartboost/sdk/impl/be$1;)V

    .line 291
    new-instance v5, Lcom/chartboost/sdk/impl/be$b;

    const/4 v6, 0x0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v6, v1, v4, v0}, Lcom/chartboost/sdk/impl/be$b;-><init>(ILjava/lang/String;Lcom/chartboost/sdk/impl/be$c;Ljava/lang/String;)V

    .line 292
    new-instance v1, Lcom/chartboost/sdk/impl/d;

    const/16 v6, 0x7530

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v1, v6, v7, v8}, Lcom/chartboost/sdk/impl/d;-><init>(IIF)V

    invoke-virtual {v5, v1}, Lcom/chartboost/sdk/impl/be$b;->a(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/l;

    .line 295
    invoke-static {v4, v5}, Lcom/chartboost/sdk/impl/be$c;->a(Lcom/chartboost/sdk/impl/be$c;Lcom/chartboost/sdk/impl/be$b;)Lcom/chartboost/sdk/impl/be$b;

    .line 296
    sget-object v1, Lcom/chartboost/sdk/impl/be;->m:Ljava/util/Observer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/chartboost/sdk/impl/be$b;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/l;

    .line 297
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/chartboost/sdk/impl/be;->d:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 300
    :cond_0
    monitor-exit v2

    return-void
.end method

.method private static declared-synchronized a(Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 270
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v2, "deleteVideos: Deleteing videos in cache"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 272
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 273
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 274
    sget-object v4, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 275
    if-eqz v3, :cond_0

    .line 276
    sget-object v4, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_1
    monitor-exit v1

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/be$a;)Lcom/chartboost/sdk/impl/be$a;
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    return-object p0
.end method

.method public static declared-synchronized b()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 157
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/chartboost/sdk/impl/be;->l:Z

    if-nez v2, :cond_0

    .line 158
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->m()V

    .line 160
    :cond_0
    sget-object v2, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v3, "Calling Prfetch Video"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v2, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sget-object v3, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sget-object v3, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_2

    .line 202
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 167
    :cond_2
    :try_start_1
    sget-object v2, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 168
    sget-object v2, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 169
    sget-object v2, Lcom/chartboost/sdk/impl/be;->d:Lcom/chartboost/sdk/impl/m;

    sget-object v3, Lcom/chartboost/sdk/impl/be;->m:Ljava/util/Observer;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/Object;)V

    .line 170
    sget-object v2, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    sput-object v2, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    .line 171
    sget-object v2, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v3, "prefetchVideo: Clearing all volley request for new start"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    :cond_3
    sget-object v2, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sput-object v2, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    .line 178
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 179
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->c()[Ljava/lang/String;

    move-result-object v3

    .line 180
    if-eqz v3, :cond_4

    .line 181
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->c()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 182
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    :cond_4
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->d()V

    .line 189
    sget-object v0, Lcom/chartboost/sdk/impl/be;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 190
    sget-object v0, Lcom/chartboost/sdk/impl/be;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 193
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v3, "/api/video-prefetch"

    invoke-direct {v0, v3}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v3, "local-videos"

    invoke-virtual {v0, v3, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v3, 0x0

    const-string v4, "status"

    sget-object v5, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "videos"

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v6, 0x0

    const-string v7, "video"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v8}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "id"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/g;->b(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 200
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ba;->b(Z)V

    .line 201
    sget-object v2, Lcom/chartboost/sdk/impl/be;->n:Lcom/chartboost/sdk/impl/ba$c;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->b(Ljava/lang/String;)V

    .line 405
    :cond_0
    return-void
.end method

.method public static b(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 410
    if-nez p0, :cond_0

    .line 422
    :goto_0
    return v1

    .line 413
    :cond_0
    const-string v0, "assets"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    .line 415
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 417
    if-eqz v0, :cond_1

    const-string v0, "video-portrait"

    :goto_1
    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 419
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_0

    .line 417
    :cond_1
    const-string v0, "video-landscape"

    goto :goto_1

    :cond_2
    move v0, v1

    .line 422
    goto :goto_2
.end method

.method public static declared-synchronized b(Lcom/chartboost/sdk/Model/a;)Z
    .locals 3

    .prologue
    .line 454
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v2, "Saving video impression request for video prefetch completion"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-static {p0}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Model/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    const/4 v0, 0x1

    .line 459
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/chartboost/sdk/impl/be;->k:Lcom/chartboost/sdk/Model/a;

    return-object p0
.end method

.method public static c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->a()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized d()V
    .locals 3

    .prologue
    .line 392
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->d:Lcom/chartboost/sdk/impl/m;

    sget-object v2, Lcom/chartboost/sdk/impl/be;->m:Ljava/util/Observer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit v1

    return-void

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e()Z
    .locals 3

    .prologue
    .line 426
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    sget-object v2, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 427
    const/4 v0, 0x1

    .line 428
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->n()V

    return-void
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    return-object v0
.end method

.method static synthetic i()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/be;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic j()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/be;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic k()Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/be;->k:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic l()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static declared-synchronized m()V
    .locals 4

    .prologue
    .line 139
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/chartboost/sdk/impl/be;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    monitor-exit v1

    return-void

    .line 141
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/chartboost/sdk/impl/be;->l:Z

    .line 143
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "CBVideoDirectory"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/Libraries/h;

    .line 144
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 145
    sget-object v0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    sput-object v0, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    .line 146
    sget-object v0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    sput-object v0, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    .line 147
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/be;->d:Lcom/chartboost/sdk/impl/m;

    .line 150
    invoke-static {}, Lcom/chartboost/sdk/impl/az;->a()Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    sget-object v2, Lcom/chartboost/sdk/impl/be;->m:Ljava/util/Observer;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->addObserver(Ljava/util/Observer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized n()V
    .locals 5

    .prologue
    .line 433
    const-class v2, Lcom/chartboost/sdk/impl/be;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Ljava/lang/String;

    const-string v1, "Process Request called"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    sget-object v0, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 445
    :cond_0
    monitor-exit v2

    return-void

    .line 436
    :cond_1
    :try_start_1
    sget-object v0, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 438
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 439
    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sput-object v1, Lcom/chartboost/sdk/impl/be;->g:Lcom/chartboost/sdk/impl/be$a;

    .line 440
    sget-object v4, Lcom/chartboost/sdk/impl/be;->d:Lcom/chartboost/sdk/impl/m;

    sget-object v1, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;

    .line 441
    sget-object v1, Lcom/chartboost/sdk/impl/be;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
