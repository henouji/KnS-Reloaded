.class Lcom/com2us/wrapper/sensor/CSensor$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/sensor/CSensor;->onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/sensor/CSensor;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/sensor/CSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/sensor/CSensor$2;->a:Lcom/com2us/wrapper/sensor/CSensor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x190

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor$2;->a:Lcom/com2us/wrapper/sensor/CSensor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/com2us/wrapper/sensor/CSensor;->a(Lcom/com2us/wrapper/sensor/CSensor;J)J

    iget-object v0, p0, Lcom/com2us/wrapper/sensor/CSensor$2;->a:Lcom/com2us/wrapper/sensor/CSensor;

    invoke-static {v0}, Lcom/com2us/wrapper/sensor/CSensor;->b(Lcom/com2us/wrapper/sensor/CSensor;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/sensor/CSensor$2;->a:Lcom/com2us/wrapper/sensor/CSensor;

    invoke-static {v1}, Lcom/com2us/wrapper/sensor/CSensor;->a(Lcom/com2us/wrapper/sensor/CSensor;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/wrapper/sensor/CSensor$2;->a:Lcom/com2us/wrapper/sensor/CSensor;

    invoke-static {v2}, Lcom/com2us/wrapper/sensor/CSensor;->c(Lcom/com2us/wrapper/sensor/CSensor;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

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
