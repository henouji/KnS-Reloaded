.class public Lg;
.super Le;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg$1;,
        Lg$a;
    }
.end annotation


# static fields
.field private static c:Landroid/media/SoundPool;

.field private static d:Lg$a;


# instance fields
.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lg;->c:Landroid/media/SoundPool;

    sput-object v0, Lg;->d:Lg$a;

    const/16 v0, 0xc

    invoke-static {v0}, Lg;->c(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Le;-><init>()V

    iput v0, p0, Lg;->e:I

    iput v0, p0, Lg;->f:I

    sget-object v0, Lg;->d:Lg$a;

    if-eqz v0, :cond_0

    sget-object v0, Lg;->d:Lg$a;

    invoke-virtual {v0, p0}, Lg$a;->a(Lg;)V

    :goto_0
    sget-object v0, Lg;->c:Landroid/media/SoundPool;

    invoke-virtual {v0, p1, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lg;->e:I

    return-void

    :cond_0
    iput-boolean v1, p0, Lg;->b:Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Le;-><init>()V

    iput v0, p0, Lg;->e:I

    iput v0, p0, Lg;->f:I

    sget-object v0, Lg;->d:Lg$a;

    if-eqz v0, :cond_0

    sget-object v0, Lg;->d:Lg$a;

    invoke-virtual {v0, p0}, Lg$a;->a(Lg;)V

    :goto_0
    sget-object v0, Lg;->c:Landroid/media/SoundPool;

    invoke-virtual {v0, p1, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lg;->e:I

    return-void

    :cond_0
    iput-boolean v1, p0, Lg;->b:Z

    goto :goto_0
.end method

.method private static c(I)V
    .locals 2

    sget-object v0, Lg;->c:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-static {}, Lg;->j()V

    :goto_0
    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getSystemVersionCode()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    new-instance v0, Lg$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg$a;-><init>(Lg$1;)V

    sput-object v0, Lg;->d:Lg$a;

    sget-object v0, Lg;->c:Landroid/media/SoundPool;

    sget-object v1, Lg;->d:Lg$a;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lg;->k()V

    goto :goto_0
.end method

.method protected static j()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    sput-object v0, Lg;->c:Landroid/media/SoundPool;

    return-void
.end method

.method protected static k()V
    .locals 4

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xc

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lg;->c:Landroid/media/SoundPool;

    return-void
.end method

.method public static l()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lg;->c:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    sget-object v0, Lg;->c:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    sput-object v1, Lg;->c:Landroid/media/SoundPool;

    :cond_0
    sget-object v0, Lg;->d:Lg$a;

    if-eqz v0, :cond_1

    sget-object v0, Lg;->d:Lg$a;

    invoke-virtual {v0}, Lg$a;->a()V

    sput-object v1, Lg;->d:Lg$a;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(I)Z
    .locals 4

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lg;->a:F

    iget v0, p0, Lg;->f:I

    if-eqz v0, :cond_0

    sget-object v0, Lg;->c:Landroid/media/SoundPool;

    iget v1, p0, Lg;->f:I

    iget v2, p0, Lg;->a:F

    iget v3, p0, Lg;->a:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized a(Z)Z
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lg;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return v8

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lg;->b:Z

    if-nez v1, :cond_2

    sget-object v1, Le$b;->a:Le$b;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v1, v0}, Lg;->a(Le$b;F)V

    move v8, v7

    goto :goto_0

    :cond_2
    if-ne p1, v7, :cond_3

    const/4 v5, -0x1

    :goto_1
    if-ne p1, v7, :cond_4

    move v4, v7

    :goto_2
    sget-object v0, Lg;->c:Landroid/media/SoundPool;

    iget v1, p0, Lg;->e:I

    iget v2, p0, Lg;->a:F

    iget v3, p0, Lg;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lg;->f:I

    iget v0, p0, Lg;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    move v0, v7

    :goto_3
    move v8, v0

    goto :goto_0

    :cond_3
    move v5, v8

    goto :goto_1

    :cond_4
    move v4, v8

    goto :goto_2

    :cond_5
    move v0, v8

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lg;->e:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg;->b:Z

    invoke-virtual {p0}, Lg;->i()V

    :cond_0
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lg;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lg;->b:Z

    if-nez v1, :cond_1

    sget-object v1, Le$b;->b:Le$b;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v2}, Lg;->a(Le$b;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    sget-object v1, Lg;->c:Landroid/media/SoundPool;

    iget v2, p0, Lg;->f:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->pause(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized c()Z
    .locals 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lg;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lg;->b:Z

    if-nez v1, :cond_1

    sget-object v1, Le$b;->c:Le$b;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v2}, Lg;->a(Le$b;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    sget-object v1, Lg;->c:Landroid/media/SoundPool;

    iget v2, p0, Lg;->f:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->resume(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized d()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lg;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lg;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Le$b;->d:Le$b;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v2}, Lg;->a(Le$b;F)V

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lg;->c:Landroid/media/SoundPool;

    iget v2, p0, Lg;->f:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    iput v0, p0, Lg;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lg;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lg;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Le$b;->e:Le$b;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lg;->a(Le$b;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lg;->c:Landroid/media/SoundPool;

    iget v1, p0, Lg;->e:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    sget-object v0, Lg;->d:Lg$a;

    invoke-virtual {v0, p0}, Lg$a;->b(Lg;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lg;->a:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
