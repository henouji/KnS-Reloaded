.class public Lcom/com2us/wrapper/function/CFunction;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:Landroid/telephony/TelephonyManager;

.field private static f:Landroid/os/Vibrator;

.field private static g:Landroid/app/ActivityManager;

.field private static h:Landroid/app/Activity;

.field private static i:Landroid/opengl/GLSurfaceView;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput v1, Lcom/com2us/wrapper/function/CFunction;->a:I

    sput v1, Lcom/com2us/wrapper/function/CFunction;->b:I

    sput v1, Lcom/com2us/wrapper/function/CFunction;->c:I

    sput v1, Lcom/com2us/wrapper/function/CFunction;->d:I

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->e:Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->f:Landroid/os/Vibrator;

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->g:Landroid/app/ActivityManager;

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->i:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDPtoPX(I)I
    .locals 2

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static declared-synchronized convertDisplaytoOriginal(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-class v1, Lcom/com2us/wrapper/function/CFunction;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget v2, Lcom/com2us/wrapper/function/CFunction;->a:I

    iget v3, p0, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, v3

    sget v3, Lcom/com2us/wrapper/function/CFunction;->c:I

    div-int/2addr v2, v3

    int-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    sget v2, Lcom/com2us/wrapper/function/CFunction;->b:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v3

    sget v3, Lcom/com2us/wrapper/function/CFunction;->d:I

    div-int/2addr v2, v3

    int-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized convertDisplaytoOriginal([Landroid/graphics/Point;)[Landroid/graphics/Point;
    .locals 4

    const-class v1, Lcom/com2us/wrapper/function/CFunction;

    monitor-enter v1

    :try_start_0
    array-length v0, p0

    new-array v2, v0, [Landroid/graphics/Point;

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/com2us/wrapper/function/CFunction;->convertDisplaytoOriginal(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized convertOriginaltoDisplay(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-class v1, Lcom/com2us/wrapper/function/CFunction;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget v2, Lcom/com2us/wrapper/function/CFunction;->c:I

    iget v3, p0, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, v3

    sget v3, Lcom/com2us/wrapper/function/CFunction;->a:I

    div-int/2addr v2, v3

    int-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    sget v2, Lcom/com2us/wrapper/function/CFunction;->d:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v3

    sget v3, Lcom/com2us/wrapper/function/CFunction;->b:I

    div-int/2addr v2, v3

    int-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized convertOriginaltoDisplay([Landroid/graphics/Point;)[Landroid/graphics/Point;
    .locals 4

    const-class v1, Lcom/com2us/wrapper/function/CFunction;

    monitor-enter v1

    :try_start_0
    array-length v0, p0

    new-array v2, v0, [Landroid/graphics/Point;

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/com2us/wrapper/function/CFunction;->convertOriginaltoDisplay(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getActiveAirplaneMode()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    return-object v0
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApkFilePath()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCom2usUniqueId()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/com2us/wrapper/common/CCommonAPI;->getNonModifiedMacAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "SHA-1"

    invoke-static {v3, v4}, Lcom/com2us/wrapper/common/CCommonAPI;->generateHashtoHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/wrapper/common/CCommonAPI;->generateCRC32toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getGLSurfaceView()Landroid/opengl/GLSurfaceView;
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->i:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public static getInitialCountry()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static getInitialLanguage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "id"

    goto :goto_0

    :cond_3
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "he"

    goto :goto_0

    :cond_4
    const-string v1, "ji"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "yi"

    goto :goto_0
.end method

.method public static getMIN(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/com2us/wrapper/function/CFunction;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    goto :goto_0
.end method

.method public static getNativeAvailableMemory()J
    .locals 2

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    sget-object v1, Lcom/com2us/wrapper/function/CFunction;->g:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumber()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static getRoaming()Z
    .locals 1

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    return v0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getSystemVersionCode()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getUserDir()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V
    .locals 2

    sput-object p0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    sput-object p1, Lcom/com2us/wrapper/function/CFunction;->i:Landroid/opengl/GLSurfaceView;

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->g:Landroid/app/ActivityManager;

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->e:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->f:Landroid/os/Vibrator;

    const-string v0, "US"

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->j:Ljava/lang/String;

    const-string v0, "en"

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->k:Ljava/lang/String;

    return-void
.end method

.method public static isActiveUsim()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/com2us/wrapper/function/CFunction;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized onSizeChanged(IIII)V
    .locals 2

    const-class v1, Lcom/com2us/wrapper/function/CFunction;

    monitor-enter v1

    :try_start_0
    sput p0, Lcom/com2us/wrapper/function/CFunction;->a:I

    sput p1, Lcom/com2us/wrapper/function/CFunction;->b:I

    sput p2, Lcom/com2us/wrapper/function/CFunction;->c:I

    sput p3, Lcom/com2us/wrapper/function/CFunction;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static runOnGlThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->i:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setControlByPX(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 7

    new-instance v0, Lcom/com2us/wrapper/function/CFunction$1;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/com2us/wrapper/function/CFunction$1;-><init>(Landroid/view/View;IILandroid/view/View;II)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startVibrate(J)V
    .locals 2

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->f:Landroid/os/Vibrator;

    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public static stopVibrate()V
    .locals 1

    sget-object v0, Lcom/com2us/wrapper/function/CFunction;->f:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method public static uninitialize()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->h:Landroid/app/Activity;

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->i:Landroid/opengl/GLSurfaceView;

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->g:Landroid/app/ActivityManager;

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->e:Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/com2us/wrapper/function/CFunction;->f:Landroid/os/Vibrator;

    return-void
.end method
