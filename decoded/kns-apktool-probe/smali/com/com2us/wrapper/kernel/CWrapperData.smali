.class public Lcom/com2us/wrapper/kernel/CWrapperData;
.super Lcom/com2us/wrapper/kernel/CWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/kernel/CWrapperData$1;
    }
.end annotation


# static fields
.field private static y:Lcom/com2us/wrapper/kernel/CWrapperData;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:I

.field private u:I

.field private v:Z

.field private w:I

.field private x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperData;

    invoke-direct {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;-><init>()V

    sput-object v0, Lcom/com2us/wrapper/kernel/CWrapperData;->y:Lcom/com2us/wrapper/kernel/CWrapperData;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>(Z)V

    const-string v0, "1.0.1"

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->x:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->nativeInitialize(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    const-string v1, ""

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/com2us/wrapper/kernel/CWrapperData;
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperData;->y:Lcom/com2us/wrapper/kernel/CWrapperData;

    return-object v0
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeInitialize(I)V
.end method

.method private native nativeSetScreenSize(IIIIII)V
.end method


# virtual methods
.method public getAssetFileNameAppended()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetFolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getColorBufferFormat()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->d:I

    return v0
.end method

.method public getDefinedOriginalHeight()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->j:I

    return v0
.end method

.method public getDefinedOriginalWidth()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->i:I

    return v0
.end method

.method public getDevelopmentRevision()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->w:I

    return v0
.end method

.method public getDeviceHeight()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->p:I

    return v0
.end method

.method public getDeviceWidth()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->o:I

    return v0
.end method

.method public getDisplayHeight()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->n:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->m:I

    return v0
.end method

.method public getIsFullStretch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->g:Z

    return v0
.end method

.method public getKeepScreenOnForcedly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->s:Z

    return v0
.end method

.method public getMarketArmId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getMinimumCommonVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalHeight()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->l:I

    return v0
.end method

.method public getOriginalWidth()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->k:I

    return v0
.end method

.method public getRenderType()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->c:I

    return v0
.end method

.method public getScreenBrightness()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->t:I

    return v0
.end method

.method public getTerminateIfCracked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->v:Z

    return v0
.end method

.method public getTextEncodingType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getUseSGL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->f:Z

    return v0
.end method

.method public getUseSelfTextureCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->e:Z

    return v0
.end method

.method public getViewportAlignment()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->h:I

    return v0
.end method

.method public getVolumeStyle()I
    .locals 1

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->u:I

    return v0
.end method

.method public isVersionValid()Z
    .locals 2

    invoke-virtual {p0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDevelopmentRevision()I

    move-result v0

    const-string v1, "$Revision: 3401 $"

    invoke-direct {p0, v1}, Lcom/com2us/wrapper/kernel/CWrapperData;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapper;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V

    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperData$1;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapperData;->nativeFinalize()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setDataFromNative(Ljava/lang/String;Ljava/lang/String;IIZZZIIILjava/lang/String;Ljava/lang/String;ZIIZI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->b:Ljava/lang/String;

    iput p3, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->c:I

    iput p4, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->d:I

    iput-boolean p5, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->e:Z

    iput-boolean p6, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->f:Z

    iput-boolean p7, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->g:Z

    iput p8, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->h:I

    iput p9, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->i:I

    iput p10, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->j:I

    iput-object p11, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->q:Ljava/lang/String;

    iput-object p12, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->r:Ljava/lang/String;

    iput-boolean p13, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->s:Z

    move/from16 v0, p14

    iput v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->t:I

    move/from16 v0, p15

    iput v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->u:I

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->v:Z

    move/from16 v0, p17

    iput v0, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->w:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setScreenSize(II)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->k:I

    iget v2, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->l:I

    iget v5, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->o:I

    iget v6, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->p:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/com2us/wrapper/kernel/CWrapperData;->setScreenSize(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScreenSize(IIIIII)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->k:I

    if-eq v2, p1, :cond_0

    move v2, v0

    :goto_0
    or-int v3, v1, v2

    iget v2, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->l:I

    if-eq v2, p2, :cond_1

    move v2, v0

    :goto_1
    or-int/2addr v3, v2

    iget v2, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->m:I

    if-eq v2, p3, :cond_2

    move v2, v0

    :goto_2
    or-int/2addr v3, v2

    iget v2, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->n:I

    if-eq v2, p4, :cond_3

    move v2, v0

    :goto_3
    or-int/2addr v3, v2

    iget v2, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->o:I

    if-eq v2, p5, :cond_4

    move v2, v0

    :goto_4
    or-int/2addr v2, v3

    iget v3, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, p6, :cond_5

    :goto_5
    or-int/2addr v0, v2

    if-nez v0, :cond_6

    :goto_6
    monitor-exit p0

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    :try_start_1
    iput p1, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->k:I

    iput p2, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->l:I

    iput p3, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->m:I

    iput p4, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->n:I

    iput p5, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->o:I

    iput p6, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->p:I

    iget v1, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->k:I

    iget v2, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->l:I

    iget v3, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->m:I

    iget v4, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->n:I

    iget v5, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->o:I

    iget v6, p0, Lcom/com2us/wrapper/kernel/CWrapperData;->p:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/com2us/wrapper/kernel/CWrapperData;->nativeSetScreenSize(IIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
