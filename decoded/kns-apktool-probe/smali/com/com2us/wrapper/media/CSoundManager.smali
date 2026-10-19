.class public Lcom/com2us/wrapper/media/CSoundManager;
.super Lcom/com2us/wrapper/kernel/CWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/media/CSoundManager$1;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Le;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/com2us/wrapper/media/CSoundManager;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x64

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    iput v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->b:I

    iput v1, p0, Lcom/com2us/wrapper/media/CSoundManager;->c:I

    iput v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->d:I

    iput v1, p0, Lcom/com2us/wrapper/media/CSoundManager;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    return-void
.end method

.method private static declared-synchronized a()I
    .locals 2

    const-class v1, Lcom/com2us/wrapper/media/CSoundManager;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/com2us/wrapper/media/CSoundManager;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/com2us/wrapper/media/CSoundManager;->a:I

    sget v0, Lcom/com2us/wrapper/media/CSoundManager;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCurrentPlaying(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->d:I

    goto :goto_0
.end method

.method public getVolume(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->c:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->e:I

    goto :goto_0
.end method

.method public onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapper;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V

    sget-object v0, Lcom/com2us/wrapper/media/CSoundManager$1;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    invoke-virtual {v0}, Le;->d()Z

    invoke-virtual {v0}, Le;->e()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lg;->l()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setSoundCompoent(ILcom/com2us/wrapper/media/CSoundManager;)V
    .locals 3

    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    iget-object v1, p2, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVolume(IZ)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    invoke-virtual {v0}, Le;->g()Z

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v0, v1}, Le;->a(I)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iput v1, p0, Lcom/com2us/wrapper/media/CSoundManager;->c:I

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iput v1, p0, Lcom/com2us/wrapper/media/CSoundManager;->e:I

    goto :goto_1
.end method

.method public soundCreate(Ljava/lang/String;Z)I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, -0x1

    sget-object v1, Lcom/com2us/wrapper/function/CResource$EResourcePathType;->ASSETS:Lcom/com2us/wrapper/function/CResource$EResourcePathType;

    invoke-static {p1, v1}, Lcom/com2us/wrapper/function/CResource;->getFullPathName(Ljava/lang/String;Lcom/com2us/wrapper/function/CResource$EResourcePathType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/wrapper/function/CResource;->assetOpenFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_1

    :try_start_0
    new-instance v1, Lf;

    invoke-direct {v1, v4, v3}, Lf;-><init>(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/com2us/wrapper/media/CSoundManager;->a()I

    move-result v0

    iget-object v2, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v0

    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_0

    :cond_1
    new-instance v1, Lg;

    invoke-direct {v1, v4}, Lg;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/com2us/wrapper/function/CResource$EResourcePathType;->SDCARD:Lcom/com2us/wrapper/function/CResource$EResourcePathType;

    invoke-static {p1, v1}, Lcom/com2us/wrapper/function/CResource;->getFullPathName(Ljava/lang/String;Lcom/com2us/wrapper/function/CResource$EResourcePathType;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_3

    :try_start_2
    new-instance v1, Lf;

    invoke-direct {v1, v3}, Lf;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :cond_3
    new-instance v1, Lg;

    invoke-direct {v1, v3}, Lg;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_5

    :try_start_3
    new-instance v1, Lf;

    invoke-direct {v1, p1}, Lf;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :cond_5
    new-instance v1, Lg;

    invoke-direct {v1, p1}, Lg;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

.method public soundDestroy(I)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Le;->e()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public soundGetVolume(I)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Le;->f()I

    move-result v0

    goto :goto_0
.end method

.method public soundPause(I)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Le;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public soundPlay(IZ)Z
    .locals 3

    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Le;->g()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iput p1, p0, Lcom/com2us/wrapper/media/CSoundManager;->b:I

    :goto_1
    invoke-virtual {v0, p2}, Le;->a(Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/com2us/wrapper/media/CSoundManager;->d:I

    goto :goto_1
.end method

.method public soundPrepare(I)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Le;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public soundResume(I)Z
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Le;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public soundSetVolume(II)Z
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x64

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v2}, Le;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method public soundStop(I)Z
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/com2us/wrapper/media/CSoundManager;->b:I

    if-ne v1, p1, :cond_2

    iput v2, p0, Lcom/com2us/wrapper/media/CSoundManager;->b:I

    :cond_1
    :goto_1
    invoke-virtual {v0}, Le;->d()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/com2us/wrapper/media/CSoundManager;->d:I

    if-ne v1, p1, :cond_1

    iput v2, p0, Lcom/com2us/wrapper/media/CSoundManager;->d:I

    goto :goto_1
.end method

.method public stopAll(Z)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    invoke-virtual {v0}, Le;->g()Z

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Le;->d()Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iput v3, p0, Lcom/com2us/wrapper/media/CSoundManager;->b:I

    :goto_1
    return-void

    :cond_2
    iput v3, p0, Lcom/com2us/wrapper/media/CSoundManager;->d:I

    goto :goto_1
.end method

.method public stopCurrent(Z)V
    .locals 2

    iget-object v1, p0, Lcom/com2us/wrapper/media/CSoundManager;->f:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->b:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/com2us/wrapper/media/CSoundManager;->d:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Le;->d()Z

    goto :goto_1
.end method
