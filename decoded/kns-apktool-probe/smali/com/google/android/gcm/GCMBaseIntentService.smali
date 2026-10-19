.class public abstract Lcom/google/android/gcm/GCMBaseIntentService;
.super Landroid/app/IntentService;
.source "GCMBaseIntentService.java"


# static fields
.field private static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_BACKOFF_MS:I

.field public static final TAG:Ljava/lang/String; = "GCMBaseIntentService"

.field private static final TOKEN:Ljava/lang/String;

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GCM_LIB"

.field private static sCounter:I

.field private static final sRandom:Ljava/util/Random;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final mSenderId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    const-class v0, Lcom/google/android/gcm/GCMBaseIntentService;

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gcm/GCMBaseIntentService;->sCounter:I

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xe10

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 71
    sput v0, Lcom/google/android/gcm/GCMBaseIntentService;->MAX_BACKOFF_MS:I

    .line 76
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    .line 75
    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->TOKEN:Ljava/lang/String;

    .line 77
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GCMIntentService-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/gcm/GCMBaseIntentService;->sCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/gcm/GCMBaseIntentService;->sCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mSenderId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 246
    const-string v12, "registration_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "registrationId":Ljava/lang/String;
    const-string v12, "error"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "error":Ljava/lang/String;
    const-string v12, "unregistered"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 249
    .local v11, "unregistered":Ljava/lang/String;
    const-string v12, "GCMBaseIntentService"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "handleRegistration: registrationId = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 250
    const-string v14, ", error = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", unregistered = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 249
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-eqz v7, :cond_1

    .line 254
    invoke-static/range {p1 .. p1}, Lcom/google/android/gcm/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 255
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/google/android/gcm/GCMRegistrar;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gcm/GCMBaseIntentService;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    if-eqz v11, :cond_2

    .line 263
    invoke-static/range {p1 .. p1}, Lcom/google/android/gcm/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 265
    invoke-static/range {p1 .. p1}, Lcom/google/android/gcm/GCMRegistrar;->clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, "oldRegistrationId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gcm/GCMBaseIntentService;->onUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v6    # "oldRegistrationId":Ljava/lang/String;
    :cond_2
    const-string v12, "GCMBaseIntentService"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Registration error: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v12, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gcm/GCMBaseIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 275
    .local v8, "retry":Z
    if-eqz v8, :cond_3

    .line 276
    invoke-static/range {p1 .. p1}, Lcom/google/android/gcm/GCMRegistrar;->getBackoff(Landroid/content/Context;)I

    move-result v3

    .line 277
    .local v3, "backoffTimeMs":I
    div-int/lit8 v12, v3, 0x2

    .line 278
    sget-object v13, Lcom/google/android/gcm/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    invoke-virtual {v13, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    .line 277
    add-int v5, v12, v13

    .line 279
    .local v5, "nextAttempt":I
    const-string v12, "GCMBaseIntentService"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Scheduling registration retry, backoff = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 279
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v9, "retryIntent":Landroid/content/Intent;
    const-string v12, "token"

    sget-object v13, Lcom/google/android/gcm/GCMBaseIntentService;->TOKEN:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 287
    .local v10, "retryPendingIntent":Landroid/app/PendingIntent;
    const-string v12, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 286
    check-cast v2, Landroid/app/AlarmManager;

    .line 288
    .local v2, "am":Landroid/app/AlarmManager;
    const/4 v12, 0x3

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 288
    invoke-virtual {v2, v12, v14, v15, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 292
    sget v12, Lcom/google/android/gcm/GCMBaseIntentService;->MAX_BACKOFF_MS:I

    if-ge v3, v12, :cond_0

    .line 293
    mul-int/lit8 v12, v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/gcm/GCMRegistrar;->setBackoff(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 296
    .end local v2    # "am":Landroid/app/AlarmManager;
    .end local v3    # "backoffTimeMs":I
    .end local v5    # "nextAttempt":I
    .end local v9    # "retryIntent":Landroid/content/Intent;
    .end local v10    # "retryPendingIntent":Landroid/app/PendingIntent;
    :cond_3
    const-string v12, "GCMBaseIntentService"

    const-string v13, "Not retrying failed operation"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 300
    .end local v8    # "retry":Z
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gcm/GCMBaseIntentService;->onError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 229
    sget-object v2, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 230
    :try_start_0
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 233
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    check-cast v0, Landroid/os/PowerManager;

    .line 234
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    .line 235
    const-string v3, "GCM_LIB"

    .line 234
    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 229
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    const-string v1, "GCMBaseIntentService"

    const-string v2, "Acquiring wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 241
    :cond_1
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 243
    return-void

    .line 229
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected onDeletedMessages(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "total"    # I

    .prologue
    .line 105
    return-void
.end method

.method protected abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gcm/GCMBaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 153
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    const-string v7, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 155
    invoke-direct {p0, v1, p1}, Lcom/google/android/gcm/GCMBaseIntentService;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    :goto_0
    sget-object v8, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 207
    :try_start_1
    sget-object v7, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_9

    .line 208
    const-string v7, "GCMBaseIntentService"

    const-string v9, "Releasing wakelock"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v7, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 205
    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 216
    :goto_2
    return-void

    .line 156
    :cond_1
    :try_start_2
    const-string v7, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 159
    const-string v7, "message_type"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "messageType":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 161
    const-string v7, "deleted_messages"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 163
    const-string v7, "total_deleted"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 164
    .local v4, "sTotal":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 166
    :try_start_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 167
    .local v6, "total":I
    const-string v7, "GCMBaseIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Received deleted messages notification: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0, v1, v6}, Lcom/google/android/gcm/GCMBaseIntentService;->onDeletedMessages(Landroid/content/Context;I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 170
    .end local v6    # "total":I
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v7, "GCMBaseIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GCM returned invalid number of deleted messages: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 171
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 198
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "messageType":Ljava/lang/String;
    .end local v4    # "sTotal":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 205
    sget-object v8, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 207
    :try_start_5
    sget-object v9, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_8

    .line 208
    const-string v9, "GCMBaseIntentService"

    const-string v10, "Releasing wakelock"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v9, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 205
    :goto_3
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 215
    throw v7

    .line 177
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "messageType":Ljava/lang/String;
    :cond_2
    :try_start_6
    const-string v7, "GCMBaseIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Received unknown special message: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 181
    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gcm/GCMBaseIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 183
    .end local v3    # "messageType":Ljava/lang/String;
    :cond_4
    const-string v7, "com.google.android.gcm.intent.RETRY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 184
    const-string v7, "token"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "token":Ljava/lang/String;
    sget-object v7, Lcom/google/android/gcm/GCMBaseIntentService;->TOKEN:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 188
    const-string v7, "GCMBaseIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Received invalid token: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 205
    sget-object v8, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 207
    :try_start_7
    sget-object v7, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_5

    .line 208
    const-string v7, "GCMBaseIntentService"

    const-string v9, "Releasing wakelock"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v7, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 205
    :goto_4
    monitor-exit v8

    goto/16 :goto_2

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v7

    .line 212
    :cond_5
    :try_start_8
    const-string v7, "GCMBaseIntentService"

    const-string v9, "Wakelock reference is null"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 192
    :cond_6
    :try_start_9
    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 193
    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->internalUnregister(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 195
    :cond_7
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mSenderId:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Lcom/google/android/gcm/GCMRegistrar;->internalRegister(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 212
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "token":Ljava/lang/String;
    :cond_8
    :try_start_a
    const-string v9, "GCMBaseIntentService"

    const-string v10, "Wakelock reference is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 205
    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v7

    .line 212
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_9
    :try_start_b
    const-string v7, "GCMBaseIntentService"

    const-string v9, "Wakelock reference is null"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 205
    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v7
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end method
