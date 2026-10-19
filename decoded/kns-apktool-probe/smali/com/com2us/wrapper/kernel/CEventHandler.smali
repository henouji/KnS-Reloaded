.class public Lcom/com2us/wrapper/kernel/CEventHandler;
.super Lcom/com2us/wrapper/kernel/CWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/kernel/CEventHandler$2;,
        Lcom/com2us/wrapper/kernel/CEventHandler$a;,
        Lcom/com2us/wrapper/kernel/CEventHandler$EventData;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/com2us/wrapper/kernel/CEventHandler$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/com2us/wrapper/kernel/CEventHandler$EventData;

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x100

    const/16 v2, 0x8

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    iput v3, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->a:I

    iput v2, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->b:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->c:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->d:Z

    new-instance v0, Lcom/com2us/wrapper/kernel/CEventHandler$EventData;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/kernel/CEventHandler$EventData;-><init>(Lcom/com2us/wrapper/kernel/CEventHandler;)V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->e:Lcom/com2us/wrapper/kernel/CEventHandler$EventData;

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->f:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->g:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->e:Lcom/com2us/wrapper/kernel/CEventHandler$EventData;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->f:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/com2us/wrapper/kernel/CEventHandler;->nativeEventHandlerInitialize(Lcom/com2us/wrapper/kernel/CEventHandler$EventData;Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method static synthetic a(Lcom/com2us/wrapper/kernel/CEventHandler;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->c:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/wrapper/kernel/CEventHandler;SSSBB)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/com2us/wrapper/kernel/CEventHandler;->a(SSSBB)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/com2us/wrapper/kernel/CEventHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->d:Z

    return p1
.end method

.method private declared-synchronized a(SSSBB)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->e:Lcom/com2us/wrapper/kernel/CEventHandler$EventData;

    iget v0, v0, Lcom/com2us/wrapper/kernel/CEventHandler$EventData;->front:I

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->e:Lcom/com2us/wrapper/kernel/CEventHandler$EventData;

    iget v1, v1, Lcom/com2us/wrapper/kernel/CEventHandler$EventData;->rear:I

    add-int/lit8 v2, v0, 0x1

    rem-int/lit16 v2, v2, 0x100

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_0
    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x100

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->e:Lcom/com2us/wrapper/kernel/CEventHandler$EventData;

    iput v0, v1, Lcom/com2us/wrapper/kernel/CEventHandler$EventData;->front:I

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->e:Lcom/com2us/wrapper/kernel/CEventHandler$EventData;

    iget v0, v0, Lcom/com2us/wrapper/kernel/CEventHandler$EventData;->rear:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native nativeEventHandlerInitialize(Lcom/com2us/wrapper/kernel/CEventHandler$EventData;Ljava/nio/ByteBuffer;II)V
.end method

.method private native nativeRemoveAll()V
.end method


# virtual methods
.method public declared-synchronized addEvent(IIIII)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->d:Z

    if-nez v0, :cond_1

    int-to-short v1, p1

    int-to-short v2, p2

    int-to-short v3, p3

    int-to-byte v4, p4

    int-to-byte v5, p5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/com2us/wrapper/kernel/CEventHandler;->a(SSSBB)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->c:Ljava/util/Vector;

    new-instance v0, Lcom/com2us/wrapper/kernel/CEventHandler$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/com2us/wrapper/kernel/CEventHandler$a;-><init>(Lcom/com2us/wrapper/kernel/CEventHandler;IIIII)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->d:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/wrapper/kernel/CEventHandler$1;

    invoke-direct {v1, p0, p0}, Lcom/com2us/wrapper/kernel/CEventHandler$1;-><init>(Lcom/com2us/wrapper/kernel/CEventHandler;Lcom/com2us/wrapper/kernel/CEventHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->c:Ljava/util/Vector;

    new-instance v0, Lcom/com2us/wrapper/kernel/CEventHandler$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/com2us/wrapper/kernel/CEventHandler$a;-><init>(Lcom/com2us/wrapper/kernel/CEventHandler;IIIII)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapper;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V

    sget-object v0, Lcom/com2us/wrapper/kernel/CEventHandler$2;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/com2us/wrapper/kernel/CEventHandler;->removeEventAll()V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized removeEventAll()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CEventHandler;->nativeRemoveAll()V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
