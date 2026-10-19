.class public Lf;
.super Le;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field private c:Landroid/media/MediaPlayer;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Le;-><init>()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-object v0, p0, Lf;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf;->e:Z

    invoke-direct {p0, p1, p2}, Lf;->a(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Le;-><init>()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-object v0, p0, Lf;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf;->e:Z

    invoke-direct {p0, p1}, Lf;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf;->e:Z

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-direct {p0, p2}, Lf;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lf;->e:Z

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, p1}, Lf;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lf;->d:Ljava/lang/String;

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    iget v1, p0, Lf;->a:F

    iget v2, p0, Lf;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(I)Z
    .locals 3

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lf;->a:F

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    iget v1, p0, Lf;->a:F

    iget v2, p0, Lf;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized a(Z)Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf;->b:Z

    if-nez v0, :cond_1

    sget-object v1, Le$b;->a:Le$b;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lf;->a(Le$b;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return v2

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf;->b:Z

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized b()Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Le$b;->b:Le$b;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lf;->a(Le$b;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Le$b;->c:Le$b;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lf;->a(Le$b;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Le$b;->d:Le$b;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lf;->a(Le$b;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf;->b:Z

    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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
    iget-boolean v0, p0, Lf;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Le$b;->e:Le$b;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lf;->a(Le$b;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf;->c:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lf;->a:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lf;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-boolean v0, p0, Lf;->b:Z

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lf;->c:Landroid/media/MediaPlayer;

    :try_start_0
    iget-boolean v1, p0, Lf;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->assetOpenFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lf;->d:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lf;->a(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lf;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lf;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lf;->b:Z

    invoke-virtual {p0}, Lf;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf;->b:Z

    invoke-virtual {p0}, Lf;->i()V

    return-void
.end method
