.class public abstract Lcom/chartboost/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/d$a;
    }
.end annotation


# static fields
.field protected static a:Landroid/os/Handler;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/chartboost/sdk/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/d;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/d$a;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    .line 47
    return-void
.end method

.method private final declared-synchronized s(Lcom/chartboost/sdk/Model/a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->n(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;

    move-result-object v2

    .line 163
    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Request already in process for impression with location"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    monitor-exit p0

    return v0

    .line 167
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->p(Lcom/chartboost/sdk/Model/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 168
    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 403
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->q(Lcom/chartboost/sdk/Model/a;)V

    .line 92
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 93
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->d:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 94
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 3

    .prologue
    .line 305
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 306
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p2, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 319
    :goto_0
    return-void

    .line 309
    :cond_0
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 310
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p2, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 318
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/Model/a$a;

    invoke-virtual {p1, p2, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/Model/a$a;)V

    goto :goto_0
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 175
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 182
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 184
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/d$a;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 185
    return-void

    .line 178
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected final a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 327
    const-string v0, "location"

    iget-object v1, p2, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/a;->f:Z

    if-eqz v0, :cond_0

    .line 329
    const-string v0, "cache"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/impl/ba;->b(Z)V

    .line 332
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getValidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/ba;->b(Landroid/content/Context;)V

    .line 334
    iput-boolean v2, p2, Lcom/chartboost/sdk/Model/a;->q:Z

    .line 335
    new-instance v0, Lcom/chartboost/sdk/d$3;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/sdk/d$3;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V

    .line 354
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    sget-object v1, Lcom/chartboost/sdk/d;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/d$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/chartboost/sdk/d$1;-><init>(Lcom/chartboost/sdk/d;Ljava/lang/String;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final b()Lcom/chartboost/sdk/d$a;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/d$a;

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->c()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/d$a;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/d$a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->c(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected final b(Lcom/chartboost/sdk/Model/a;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/chartboost/sdk/d$a;->h(Lcom/chartboost/sdk/Model/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cbPrefSessionCount"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 105
    if-ne v2, v1, :cond_0

    .line 106
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    move v0, v1

    .line 107
    goto :goto_0
.end method

.method protected abstract c()Lcom/chartboost/sdk/d$a;
.end method

.method protected c(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->f(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->g(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/d;->s(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    if-nez v0, :cond_2

    .line 127
    invoke-static {}, Lcom/chartboost/sdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->i:Z

    .line 129
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 133
    :cond_2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/a;)V

    .line 142
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Landroid/content/Context;
    .locals 3

    .prologue
    .line 440
    :try_start_0
    const-class v0, Lcom/chartboost/sdk/Chartboost;

    const-string v1, "getValidContext"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 441
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 442
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-object v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    const-string v1, "Error encountered getting valid context"

    invoke-static {p0, v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->throwProguardError(Ljava/lang/Exception;)V

    .line 447
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;

    .line 389
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->m(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Lcom/chartboost/sdk/Model/a;)Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    return-void
.end method

.method protected final f(Lcom/chartboost/sdk/Model/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-static {}, Lcom/chartboost/sdk/b;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 212
    :goto_0
    return v0

    .line 200
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 201
    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/az;->a()Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/az;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 208
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 212
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected g(Lcom/chartboost/sdk/Model/a;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 217
    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v3, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-eq v2, v3, :cond_0

    move v2, v0

    .line 218
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/chartboost/sdk/d$a;->f(Lcom/chartboost/sdk/Model/a;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 239
    :goto_1
    return-void

    :cond_0
    move v2, v1

    .line 217
    goto :goto_0

    .line 221
    :cond_1
    iget-object v3, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v4, Lcom/chartboost/sdk/Model/a$b;->d:Lcom/chartboost/sdk/Model/a$b;

    if-ne v3, v4, :cond_3

    .line 222
    :goto_2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->i(Lcom/chartboost/sdk/Model/a;)V

    .line 224
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v3

    .line 225
    if-eqz v3, :cond_2

    .line 226
    invoke-virtual {v3}, Lcom/chartboost/sdk/e;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 227
    invoke-virtual {v3, p1, v1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 234
    :cond_2
    if-eqz v2, :cond_5

    .line 235
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->h(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 221
    goto :goto_2

    .line 228
    :cond_4
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->i:Z

    if-eqz v1, :cond_2

    .line 229
    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 237
    :cond_5
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_1
.end method

.method protected h(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 244
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 245
    return-void
.end method

.method protected i(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->j(Lcom/chartboost/sdk/Model/a;)V

    .line 251
    return-void
.end method

.method public final j(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->g:Z

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->g:Z

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    .line 263
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->k(Lcom/chartboost/sdk/Model/a;)V

    .line 264
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 265
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final k(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    .line 270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Z)V

    .line 271
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->b(Landroid/content/Context;)V

    .line 273
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    if-eqz v1, :cond_1

    .line 274
    const-string v1, "cached"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    :goto_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "ad_id"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_0

    .line 280
    const-string v2, "ad_id"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    :cond_0
    new-instance v1, Lcom/chartboost/sdk/d$2;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/d$2;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V

    .line 289
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void

    .line 276
    :cond_1
    const-string v1, "cached"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;
.end method

.method protected final m(Lcom/chartboost/sdk/Model/a;)Z
    .locals 6

    .prologue
    .line 296
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 297
    const-wide/32 v2, 0x15180

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized n(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;
    .locals 2

    .prologue
    .line 360
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized o(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 368
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    monitor-exit p0

    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized p(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 374
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_0
    monitor-exit p0

    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected q(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    return-void
.end method

.method public r(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 464
    return-void
.end method
