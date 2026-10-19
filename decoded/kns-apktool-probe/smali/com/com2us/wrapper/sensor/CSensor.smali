.class public Lcom/com2us/wrapper/sensor/CSensor;
.super Lcom/com2us/wrapper/kernel/CWrapper;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/sensor/CSensor$3;
    }
.end annotation


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;

.field private c:Landroid/hardware/SensorEventListener;

.field private d:Landroid/view/Display;

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:[F

.field private j:[F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->a:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->b:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->c:Landroid/hardware/SensorEventListener;

    iput-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->d:Landroid/view/Display;

    const/4 v0, 0x0

    iput v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->e:I

    iput v1, p0, Lcom/com2us/wrapper/sensor/CSensor;->f:I

    iput-wide v4, p0, Lcom/com2us/wrapper/sensor/CSensor;->g:J

    iput-wide v4, p0, Lcom/com2us/wrapper/sensor/CSensor;->h:J

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->i:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->a:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->b:Landroid/hardware/Sensor;

    iput-object p0, p0, Lcom/com2us/wrapper/sensor/CSensor;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getSystemVersionCode()I

    move-result v0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->d:Landroid/view/Display;

    iget-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->d:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->e:I

    iget v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->e:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->i:[F

    invoke-direct {p0, v0}, Lcom/com2us/wrapper/sensor/CSensor;->nativeSensorInitialize([F)V

    return-void

    :pswitch_0
    iput v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->f:I

    goto :goto_0

    :pswitch_1
    if-ne v2, v1, :cond_1

    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->f:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/com2us/wrapper/sensor/CSensor;J)J
    .locals 1

    iput-wide p1, p0, Lcom/com2us/wrapper/sensor/CSensor;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/com2us/wrapper/sensor/CSensor;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->c:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic b(Lcom/com2us/wrapper/sensor/CSensor;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->a:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic c(Lcom/com2us/wrapper/sensor/CSensor;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->b:Landroid/hardware/Sensor;

    return-object v0
.end method

.method private native nativeSensorInitialize([F)V
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapper;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V

    sget-object v0, Lcom/com2us/wrapper/sensor/CSensor$3;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/com2us/wrapper/sensor/CSensor$1;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/sensor/CSensor$1;-><init>(Lcom/com2us/wrapper/sensor/CSensor;)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/sensor/CSensor$1;->start()V

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->h:J

    new-instance v0, Lcom/com2us/wrapper/sensor/CSensor$2;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/sensor/CSensor$2;-><init>(Lcom/com2us/wrapper/sensor/CSensor;)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/sensor/CSensor$2;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->h:J

    iput-wide v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->h:J

    iget-wide v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->h:J

    iget-wide v4, p0, Lcom/com2us/wrapper/sensor/CSensor;->g:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const v2, 0x3be56042    # 0.007f

    mul-float/2addr v1, v2

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->i:[F

    iget-object v3, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    invoke-static {v2, v6, v3, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->f:I

    if-ne v2, v8, :cond_0

    iget-object v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    iget-object v3, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    aget v3, v3, v6

    sub-float v4, v7, v1

    mul-float/2addr v3, v4

    aget v4, v0, v6

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v6

    iget-object v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    iget-object v3, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    aget v3, v3, v8

    sub-float v4, v7, v1

    mul-float/2addr v3, v4

    aget v4, v0, v8

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v8

    iget-object v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    iget-object v3, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    aget v3, v3, v9

    sub-float v4, v7, v1

    mul-float/2addr v3, v4

    aget v0, v0, v9

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    aput v0, v2, v9

    :goto_0
    iget-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    iget-object v1, p0, Lcom/com2us/wrapper/sensor/CSensor;->i:[F

    invoke-static {v0, v6, v1, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    iget-object v3, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    aget v3, v3, v6

    sub-float v4, v7, v1

    mul-float/2addr v3, v4

    aget v4, v0, v8

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v6

    iget-object v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    iget-object v3, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    aget v3, v3, v8

    sub-float v4, v7, v1

    mul-float/2addr v3, v4

    aget v4, v0, v6

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    aput v3, v2, v8

    iget-object v2, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    iget-object v3, p0, Lcom/com2us/wrapper/sensor/CSensor;->j:[F

    aget v3, v3, v9

    sub-float v4, v7, v1

    mul-float/2addr v3, v4

    aget v0, v0, v9

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    aput v0, v2, v9

    goto :goto_0
.end method
