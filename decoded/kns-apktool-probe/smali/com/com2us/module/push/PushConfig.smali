.class public Lcom/com2us/module/push/PushConfig;
.super Ljava/lang/Object;
.source "PushConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/push/PushConfig$PropertyUtil;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$com2us$module$push$Push$RegisterState:[I = null

.field protected static LOG:Z = false

.field protected static final LOG_TAG:Ljava/lang/String; = "Push"

.field public static final VERSION:Ljava/lang/String; = "2.5.5"

.field private static VID:Ljava/lang/String; = null

.field protected static isUseTestServer:Z = false

.field protected static logger:Lcom/com2us/module/util/Logger; = null

.field protected static final realServerSenderURL:Ljava/lang/String; = "https://testowner.github.io/testrepo/api/"

.field protected static final realServerURL:Ljava/lang/String; = "https://testowner.github.io/testrepo/api/"

.field protected static final testServerURL:Ljava/lang/String; = "https://testowner.github.io/testrepo/api/"


# direct methods
.method static synthetic $SWITCH_TABLE$com$com2us$module$push$Push$RegisterState()[I
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/com2us/module/push/PushConfig;->$SWITCH_TABLE$com$com2us$module$push$Push$RegisterState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/com2us/module/push/Push$RegisterState;->values()[Lcom/com2us/module/push/Push$RegisterState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->LOGIN:Lcom/com2us/module/push/Push$RegisterState;

    invoke-virtual {v1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->LOGOUT:Lcom/com2us/module/push/Push$RegisterState;

    invoke-virtual {v1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->REGISTER:Lcom/com2us/module/push/Push$RegisterState;

    invoke-virtual {v1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->SENDER:Lcom/com2us/module/push/Push$RegisterState;

    invoke-virtual {v1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->UNREGISTER:Lcom/com2us/module/push/Push$RegisterState;

    invoke-virtual {v1}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/com2us/module/push/PushConfig;->$SWITCH_TABLE$com$com2us$module$push$Push$RegisterState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const-string v0, "Push"

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/push/PushConfig;->logger:Lcom/com2us/module/util/Logger;

    .line 67
    sput-boolean v1, Lcom/com2us/module/push/PushConfig;->LOG:Z

    .line 68
    sput-boolean v1, Lcom/com2us/module/push/PushConfig;->isUseTestServer:Z

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/com2us/module/push/PushConfig;->VID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static GetMACAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 450
    const/4 v1, 0x0

    .line 452
    .local v1, "macAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/com2us/module/util/WrapperUtility;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 456
    :goto_0
    return-object v1

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static LogI(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 920
    sget-object v0, Lcom/com2us/module/push/PushConfig;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v0, p0}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method protected static ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 759
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected static getBitmapFromByteArray([B)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmapData"    # [B

    .prologue
    .line 511
    const-string v2, "getBitmapFromByteArray"

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 513
    const/4 v0, 0x0

    .line 515
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 517
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    invoke-static {p0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 523
    :cond_0
    :goto_0
    return-object v0

    .line 518
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBitmapFromByteArray Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getByteFromUrl(Ljava/lang/String;)[B
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 528
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getByteFromUrl : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 530
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 531
    const-string v9, "url is Empty"

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 532
    const/4 v5, 0x0

    .line 564
    :cond_0
    :goto_0
    return-object v5

    .line 535
    :cond_1
    const/4 v6, 0x0

    .line 537
    .local v6, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 538
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 539
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/16 v9, 0x1fa0

    new-array v2, v9, [B

    .line 542
    .local v2, "buffer":[B
    const/4 v5, 0x0

    .line 545
    .local v5, "imageByte":[B
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 546
    .local v8, "targeturl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 547
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 549
    :goto_1
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "readLen":I
    if-gtz v7, :cond_4

    .line 552
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 560
    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 561
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 562
    :cond_3
    :goto_3
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    goto :goto_0

    .line 550
    :cond_4
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v1, v2, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 554
    .end local v7    # "readLen":I
    .end local v8    # "targeturl":Ljava/net/URL;
    :catch_1
    move-exception v4

    .line 555
    .local v4, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 556
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 560
    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 561
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 562
    :cond_6
    :goto_5
    if-eqz v3, :cond_0

    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    :catch_2
    move-exception v9

    goto :goto_0

    .line 559
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 560
    if-eqz v6, :cond_7

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 561
    :cond_7
    :goto_6
    if-eqz v1, :cond_8

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 562
    :cond_8
    :goto_7
    if-eqz v3, :cond_9

    :try_start_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 563
    :cond_9
    :goto_8
    throw v9

    .line 560
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_4

    .line 561
    :catch_4
    move-exception v9

    goto :goto_5

    .line 560
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v10

    goto :goto_6

    .line 561
    :catch_6
    move-exception v10

    goto :goto_7

    .line 562
    :catch_7
    move-exception v10

    goto :goto_8

    .line 560
    .restart local v7    # "readLen":I
    .restart local v8    # "targeturl":Ljava/net/URL;
    :catch_8
    move-exception v9

    goto :goto_2

    .line 561
    :catch_9
    move-exception v9

    goto :goto_3
.end method

.method protected static getDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 462
    const-string v1, "getDID"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 463
    invoke-static {p0}, Lcom/com2us/module/util/DeviceIdentity;->getDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "did":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 465
    return-object v0
.end method

.method protected static getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 841
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 843
    .local v4, "manager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v3, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 844
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const/4 v9, 0x0

    invoke-virtual {v4, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 846
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iend":I
    :goto_0
    if-lt v1, v2, :cond_0

    move-object v0, v8

    .line 875
    :goto_1
    return-object v0

    .line 847
    :cond_0
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 848
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 849
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 850
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 851
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pkgName : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 852
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "return className ok : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto :goto_1

    .line 846
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static getUDID(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 392
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 394
    .local v0, "UDID":Ljava/lang/Object;
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 395
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 401
    .end local v0    # "UDID":Ljava/lang/Object;
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-object v0

    .line 398
    .restart local v0    # "UDID":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static getVID(Lcom/com2us/module/push/Push$RegisterState;)Ljava/lang/String;
    .locals 7
    .param p0, "sendType"    # Lcom/com2us/module/push/Push$RegisterState;

    .prologue
    .line 474
    const-string v5, "getVID"

    invoke-static {v5}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 475
    const/4 v4, 0x0

    .line 477
    .local v4, "vid":Ljava/lang/String;
    invoke-static {}, Lcom/com2us/module/push/PushConfig;->$SWITCH_TABLE$com$com2us$module$push$Push$RegisterState()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/com2us/module/push/Push$RegisterState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 498
    :goto_0
    return-object v4

    .line 481
    :pswitch_0
    sget-object v4, Lcom/com2us/module/push/PushConfig;->VID:Ljava/lang/String;

    .line 482
    goto :goto_0

    .line 486
    :pswitch_1
    :try_start_0
    const-string v5, "com.com2us.module.C2SModule"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 487
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getVID"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 488
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VID : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 491
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "not found Platform Module, ignore getVID."

    invoke-static {v5}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static isRunningThisActivity(Landroid/content/Context;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 765
    const-string v9, "isRunningThisActivity check"

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 767
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 768
    .local v4, "activityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x0

    .line 769
    .local v3, "activePackages":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 771
    .local v0, "activeClasses":Ljava/lang/String;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v9, v12, :cond_3

    .line 772
    const-string v9, "isRunningThisActivity - in Android SDK 21 higher"

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 774
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 775
    .local v2, "activePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 776
    .local v7, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 781
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "activePackages":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 801
    .end local v2    # "activePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v3    # "activePackages":[Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_1

    .line 802
    array-length v12, v3

    move v9, v10

    :goto_2
    if-lt v9, v12, :cond_5

    .line 814
    :cond_1
    const-string v9, "isRunningThisActivity - show nothing"

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    move v9, v10

    .line 815
    :goto_3
    return v9

    .line 776
    .restart local v2    # "activePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 777
    .local v6, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v12, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v13, 0x64

    if-ne v12, v13, :cond_0

    .line 778
    iget-object v12, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 785
    .end local v2    # "activePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    const-string v9, "isRunningThisActivity - in Android 20 and before version"

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 788
    const-string v9, "android.permission.GET_TASKS"

    invoke-virtual {p0, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_4

    .line 789
    const-string v9, "isRunningThisActivity - GET_TASKS check return"

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    move v9, v10

    .line 790
    goto :goto_3

    .line 793
    :cond_4
    invoke-virtual {v4, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 794
    .local v8, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 795
    .local v5, "componentName":Landroid/content/ComponentName;
    new-array v3, v11, [Ljava/lang/String;

    .line 796
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v10

    .line 797
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 802
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5
    aget-object v1, v3, v9

    .line 803
    .local v1, "activePackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 804
    const-string v9, "com.com2us.module.push.ShowMsgActivity"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 805
    const-string v9, "isRunningThisActivity - showing popup"

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 806
    const/4 v9, 0x2

    goto :goto_3

    .line 808
    :cond_6
    const-string v9, "isRunningThisActivity - gaming"

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    move v9, v11

    .line 809
    goto :goto_3

    .line 802
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method protected static saveReceivedPush(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 880
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "saveReceivedPush() : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "noticeID"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 882
    const-string v7, "noticeID"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 884
    .local v2, "noticeID":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v6, :cond_0

    const-string v7, "null"

    invoke-virtual {v2, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    const-string v7, "isGCMPush"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 888
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const v8, 0xf4240

    sub-int v1, v7, v8

    .line 889
    .local v1, "inNoticeID":I
    if-lez v1, :cond_3

    .end local v1    # "inNoticeID":I
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 894
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "gcm"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 899
    :goto_3
    invoke-static {p0}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getInstance(Landroid/content/Context;)Lcom/com2us/module/push/PushConfig$PropertyUtil;

    move-result-object v3

    .line 900
    .local v3, "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    invoke-virtual {v3}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->loadProperty()V

    .line 902
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 903
    .local v5, "strBuf":Ljava/lang/StringBuffer;
    const-string v7, "receivedPush"

    invoke-virtual {v3, v7}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 904
    .local v4, "savedReceivedPush":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "saveReceivedPush() saved Received Push : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 906
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v6, :cond_2

    const-string v6, "null"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 907
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 908
    const-string v6, "receivedPush"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :goto_4
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    .line 915
    invoke-static {p0}, Lcom/com2us/module/push/Push;->sendCallback(Landroid/content/Context;)V

    goto :goto_0

    .end local v3    # "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    .end local v4    # "savedReceivedPush":Ljava/lang/String;
    .end local v5    # "strBuf":Ljava/lang/StringBuffer;
    .restart local v1    # "inNoticeID":I
    :cond_3
    move v1, v6

    .line 889
    goto :goto_1

    .line 890
    .end local v1    # "inNoticeID":I
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "convert original noticeID Exception : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 892
    const-string v2, "1"

    goto :goto_2

    .line 896
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "local"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 910
    .restart local v3    # "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    .restart local v4    # "savedReceivedPush":Ljava/lang/String;
    .restart local v5    # "strBuf":Ljava/lang/StringBuffer;
    :cond_5
    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 911
    const-string v6, "receivedPush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected static sendToServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "strPostData"    # Ljava/lang/String;

    .prologue
    .line 638
    const-string v8, "Send To Log"

    invoke-static {v8}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 641
    :try_start_0
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 642
    .local v3, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v8, 0x2710

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 643
    const/16 v8, 0x2710

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 645
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 646
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/com2us/module/push/PushConfig;->isUseTestServer:Z

    if-eqz v8, :cond_0

    const-string v8, "https://testowner.github.io/testrepo/api/"

    :goto_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "confirm.php"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 647
    .local v4, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v8, "UTF-8"

    invoke-direct {v2, p0, v8}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .local v2, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v8, "Content-type"

    const-string v9, "text/html"

    invoke-virtual {v4, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 651
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 652
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 654
    .local v6, "responseEntity":Lorg/apache/http/HttpEntity;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sendToPost Response Status Code : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 656
    if-eqz v6, :cond_1

    .line 658
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 659
    .local v7, "returnValue":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sendToPost RESPONSE : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 665
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v7    # "returnValue":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 646
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    :cond_0
    const-string v8, "https://testowner.github.io/testrepo/api/"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    .restart local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "responseEntity":Lorg/apache/http/HttpEntity;
    :cond_1
    const-string v7, "Wrong Return Value"

    goto :goto_1

    .line 663
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "responseEntity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    const-string v7, "Send to Server Failed"

    goto :goto_1
.end method

.method protected static setBadge(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "badgeCount"    # I

    .prologue
    .line 382
    const-string v1, "setBadge"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "badge_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v1, "badge_count_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v1, "badge_count_class_name"

    invoke-static {p0}, Lcom/com2us/module/push/PushConfig;->getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    return-void
.end method

.method protected static setPushType(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x0

    .line 332
    const-string v4, "isRunning"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 334
    .local v1, "isRunning":I
    const-string v4, "bScreenLock"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 336
    .local v0, "bScreenLock":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 337
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .local v3, "typeToken":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 377
    .end local v3    # "typeToken":Ljava/util/StringTokenizer;
    :goto_1
    const-string v4, "badge"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {p0, v4}, Lcom/com2us/module/push/PushConfig;->setBadge(Landroid/content/Context;I)V

    .line 378
    return-void

    .line 339
    .restart local v3    # "typeToken":Ljava/util/StringTokenizer;
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "token":Ljava/lang/String;
    const-string v4, "bar"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    const-string v4, "setPushType : bar"

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 342
    invoke-static {p0, p1}, Lcom/com2us/module/push/NotificationRegister;->setNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 343
    :cond_1
    const-string v4, "popup"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 344
    packed-switch v1, :pswitch_data_0

    .line 360
    const-string v4, "setPushType : default"

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :pswitch_0
    const-string v4, "setPushType : show nothing"

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 347
    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/com2us/module/push/PushConfig;->startDialogActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 348
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/com2us/module/push/NotificationRegister;->setToast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    goto :goto_0

    .line 351
    :pswitch_1
    const-string v4, "setPushType : gaming"

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 352
    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lcom/com2us/module/push/PushConfig;->startDialogActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 353
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/com2us/module/push/NotificationRegister;->setToast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    goto :goto_0

    .line 356
    :pswitch_2
    const-string v4, "setPushType : showing popup"

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 357
    invoke-static {p0, p1}, Lcom/com2us/module/push/PushConfig;->startDialogActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 363
    :cond_4
    const-string v4, "toast"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 364
    const-string v4, "setPushType : toast"

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 365
    invoke-static {p0, p1, p2}, Lcom/com2us/module/push/NotificationRegister;->setToast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    goto :goto_0

    .line 367
    :cond_5
    const-string v4, "setPushType : token is nothing, default bar"

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 368
    invoke-static {p0, p1}, Lcom/com2us/module/push/NotificationRegister;->setNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 373
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "typeToken":Ljava/util/StringTokenizer;
    :cond_6
    const-string v4, "setPushType : type is null, default bar"

    invoke-static {v4}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 374
    invoke-static {p0, p1}, Lcom/com2us/module/push/NotificationRegister;->setNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static setReceiveData(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-static/range {p0 .. p0}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getInstance(Landroid/content/Context;)Lcom/com2us/module/push/PushConfig$PropertyUtil;

    move-result-object v20

    .line 80
    .local v20, "propertyUtil":Lcom/com2us/module/push/PushConfig$PropertyUtil;
    invoke-virtual/range {v20 .. v20}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->loadProperty()V

    .line 83
    const-string v22, "true"

    const-string v23, "isUseTestServer"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 84
    const/16 v22, 0x1

    sput-boolean v22, Lcom/com2us/module/push/PushConfig;->isUseTestServer:Z

    .line 90
    :goto_0
    const-string v22, "true"

    const-string v23, "log"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 91
    sget-object v22, Lcom/com2us/module/push/PushConfig;->logger:Lcom/com2us/module/util/Logger;

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 92
    const/16 v22, 0x1

    sput-boolean v22, Lcom/com2us/module/push/PushConfig;->LOG:Z

    .line 98
    :goto_1
    const-string v22, "0"

    const-string v23, "isPush"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    const-string v22, "2"

    const-string v23, "isPush"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 99
    :cond_0
    const-string v22, "isPush : DEFAULT FALSE or USER FALSE"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 100
    const/16 p1, 0x0

    .line 310
    .end local p1    # "intent":Landroid/content/Intent;
    :goto_2
    return-object p1

    .line 86
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_1
    const/16 v22, 0x0

    sput-boolean v22, Lcom/com2us/module/push/PushConfig;->isUseTestServer:Z

    goto :goto_0

    .line 94
    :cond_2
    sget-object v22, Lcom/com2us/module/push/PushConfig;->logger:Lcom/com2us/module/util/Logger;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/com2us/module/util/Logger;->setLogged(Z)V

    .line 95
    const/16 v22, 0x0

    sput-boolean v22, Lcom/com2us/module/push/PushConfig;->LOG:Z

    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "icon"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_15

    const-string v22, ""

    :goto_3
    const-string v23, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 105
    .local v11, "iconResID":I
    if-nez v11, :cond_4

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "icon"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 109
    const-string v22, "ReceiveData icon setting..."

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "icon"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->getByteFromUrl(Ljava/lang/String;)[B

    move-result-object v10

    .line 112
    .local v10, "iconData":[B
    if-eqz v10, :cond_16

    .line 113
    const-string v22, "iconData"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v10    # "iconData":[B
    :cond_4
    :goto_4
    const-string v22, "ic_c2s_notification_small_icon"

    const-string v23, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 125
    .local v21, "smallIconResID":I
    if-nez v21, :cond_5

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v21, v0

    .line 128
    :cond_5
    const-string v22, "smallIconResID"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const/4 v5, 0x0

    .line 132
    .local v5, "bScreenLock":Z
    const-string v22, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/KeyguardManager;

    .line 133
    .local v17, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual/range {v17 .. v17}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    .line 134
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "bScreenLock : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 136
    const-string v22, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    .line 137
    .local v19, "pm":Landroid/os/PowerManager;
    if-nez v5, :cond_18

    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x15

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_17

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v22

    if-eqz v22, :cond_18

    :cond_6
    const/4 v5, 0x0

    .line 138
    :goto_5
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "bScreenLock || !pm.isScreenOn() : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 144
    const/4 v15, 0x1

    .line 145
    .local v15, "isSound":I
    :try_start_1
    const-string v22, "isSound"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v22

    if-nez v22, :cond_19

    const/4 v15, 0x1

    .line 148
    :goto_6
    const/16 v16, 0x1

    .line 149
    .local v16, "isVib":I
    :try_start_2
    const-string v22, "isVib"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v22

    if-nez v22, :cond_1a

    const/16 v16, 0x1

    .line 152
    :goto_7
    invoke-static/range {p0 .. p0}, Lcom/com2us/module/push/PushConfig;->isRunningThisActivity(Landroid/content/Context;)I

    move-result v14

    .line 155
    .local v14, "isRunning":I
    const/4 v13, 0x1

    .line 156
    .local v13, "isOperation":Z
    :try_start_3
    const-string v22, "false"

    const-string v23, "isOperation"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v22

    if-eqz v22, :cond_1b

    const/4 v13, 0x0

    .line 158
    :goto_8
    if-eqz v5, :cond_1c

    const/4 v13, 0x1

    .line 162
    :cond_7
    :goto_9
    const/4 v12, 0x1

    .line 163
    .local v12, "isGCMOperation":Z
    :try_start_4
    const-string v22, "false"

    const-string v23, "isGCMOperation"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v22

    if-eqz v22, :cond_1d

    const/4 v12, 0x0

    .line 165
    :goto_a
    if-eqz v5, :cond_1e

    const/4 v12, 0x1

    .line 169
    :cond_8
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "noticeID"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 170
    const-string v22, "ReceiveData noticeID is null or not String."

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 172
    :try_start_5
    const-string v22, "noticeID"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "noticeID"

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 181
    :cond_9
    :goto_c
    :try_start_6
    const-string v22, "badge"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "badge"

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 188
    :goto_d
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "bigpicture"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_20

    .line 189
    const-string v22, "ReceiveData bigpicture setting..."

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 191
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "bigpicture"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->getByteFromUrl(Ljava/lang/String;)[B

    move-result-object v6

    .line 192
    .local v6, "bigpictureData":[B
    if-eqz v6, :cond_1f

    .line 193
    const-string v22, "bigpictureData"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 204
    .end local v6    # "bigpictureData":[B
    :goto_e
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "buckettype"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 205
    .local v8, "buckettype":I
    const-string v22, "buckettype"

    if-ltz v8, :cond_21

    .end local v8    # "buckettype":I
    :goto_f
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 211
    :goto_10
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "bucketsize"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 212
    .local v7, "bucketsize":I
    const-string v22, "bucketsize"

    const/16 v23, 0x1

    move/from16 v0, v23

    if-lt v7, v0, :cond_22

    .end local v7    # "bucketsize":I
    :goto_11
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 219
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "htmltitle"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 220
    const-string v22, "title"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "htmltitle"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "htmlmsg"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 223
    const-string v22, "msg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "htmlmsg"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "htmlbigmsg"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 226
    const-string v22, "bigmsg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "htmlbigmsg"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "htmlsummaryText"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 229
    const-string v22, "summaryText"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "htmlsummaryText"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "htmlticker"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 232
    const-string v22, "ticker"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "htmlticker"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "title"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 236
    const-string v22, "title"

    const-string v23, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "msg"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 239
    const-string v22, "msg"

    const-string v23, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "bigmsg"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 242
    const-string v22, "bigmsg"

    const-string v23, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "summaryText"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 245
    const-string v22, "summaryText"

    const-string v23, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "ticker"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 248
    const-string v22, "ticker"

    const-string v23, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :cond_13
    const-string v22, "className"

    invoke-static/range {p0 .. p0}, Lcom/com2us/module/push/PushConfig;->getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v23, "udid"

    invoke-static/range {p0 .. p0}, Lcom/com2us/module/push/PushConfig;->getUDID(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-static/range {p0 .. p0}, Lcom/com2us/module/push/PushConfig;->GetMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 253
    .local v18, "mac":Ljava/lang/String;
    if-eqz v18, :cond_14

    const-string v22, "mac"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :cond_14
    const-string v22, "androidid"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "android_id"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v22, "isUseTestServer"

    sget-boolean v23, Lcom/com2us/module/push/PushConfig;->isUseTestServer:Z

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    const-string v22, "log"

    sget-boolean v23, Lcom/com2us/module/push/PushConfig;->LOG:Z

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    const-string v22, "appid"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "appid":Ljava/lang/String;
    const-string v22, "appid"

    if-eqz v4, :cond_23

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_23

    .end local v4    # "appid":Ljava/lang/String;
    :goto_13
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v22, "packageName"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v22, "iconResID"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v22, "bScreenLock"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    const-string v22, "isSound"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string v22, "isVib"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string v22, "isRunning"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v22, "isOperation"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    const-string v22, "isGCMOperation"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    const-string v22, "language"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v22, "country"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData title : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "title"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 272
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData msg : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "msg"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 273
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData bigmsg : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "bigmsg"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 274
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData summaryText : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "summaryText"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 275
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData ticker : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "ticker"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 276
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData noticeID : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "noticeID"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 277
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData type : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "type"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 278
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData icon : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "icon"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 279
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData sound : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "sound"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 280
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData vib : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "vib"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 281
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData active : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "active"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 282
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData bulk_id : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "bulk_id"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 283
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData appid : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "appid"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 284
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData packageName : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "packageName"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 285
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData className : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "className"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 286
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData udid : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "udid"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 287
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData mac : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "mac"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 288
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData androidid : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "androidid"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 289
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData broadcastAction : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "broadcastAction"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 290
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData language : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "language"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 291
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData country : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "country"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 292
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData sendtype : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "sendtype"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 293
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData badge : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "badge"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 294
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData bigpicture : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "bigpicture"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 295
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData buckettype : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "buckettype"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 296
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData bucketsize : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "bucketsize"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 298
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SettingData iconResID : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "iconResID"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 299
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SettingData bScreenLock : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "bScreenLock"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 300
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SettingData isSound : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "isSound"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 301
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SettingData isVib : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "isVib"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 302
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SettingData isRunning : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "isRunning"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 303
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SettingData isOperation : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "isOperation"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 304
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SettingData isGCMOperation : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "isGCMOperation"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 305
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SettingData isGCMPush : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "isGCMPush"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 306
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SettingData is containsKey - bigpictureData : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "bigpictureData"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 307
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SettingData is containsKey - iconData : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "iconData"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 308
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SettingData is smallIconResID : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "smallIconResID"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 104
    .end local v5    # "bScreenLock":Z
    .end local v11    # "iconResID":I
    .end local v12    # "isGCMOperation":Z
    .end local v13    # "isOperation":Z
    .end local v14    # "isRunning":I
    .end local v15    # "isSound":I
    .end local v16    # "isVib":I
    .end local v17    # "keyguardManager":Landroid/app/KeyguardManager;
    .end local v18    # "mac":Ljava/lang/String;
    .end local v19    # "pm":Landroid/os/PowerManager;
    .end local v21    # "smallIconResID":I
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "icon"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_3

    .line 115
    .restart local v10    # "iconData":[B
    .restart local v11    # "iconResID":I
    :cond_16
    :try_start_a
    const-string v22, "ReceiveData icon is null"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_4

    .line 117
    .end local v10    # "iconData":[B
    :catch_0
    move-exception v9

    .line 118
    .local v9, "e":Ljava/lang/Exception;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData icon Exception : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 137
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "bScreenLock":Z
    .restart local v17    # "keyguardManager":Landroid/app/KeyguardManager;
    .restart local v19    # "pm":Landroid/os/PowerManager;
    .restart local v21    # "smallIconResID":I
    :cond_17
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v22

    if-nez v22, :cond_6

    :cond_18
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 145
    .restart local v15    # "isSound":I
    :cond_19
    :try_start_b
    const-string v22, "isSound"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result v15

    goto/16 :goto_6

    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 149
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v16    # "isVib":I
    :cond_1a
    :try_start_c
    const-string v22, "isVib"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/com2us/module/push/PushConfig$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-result v16

    goto/16 :goto_7

    :catch_2
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    const/16 v16, 0x1

    goto/16 :goto_7

    .line 156
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "isOperation":Z
    .restart local v14    # "isRunning":I
    :cond_1b
    const/4 v13, 0x1

    goto/16 :goto_8

    :catch_3
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    const/4 v13, 0x1

    goto/16 :goto_8

    .line 159
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1c
    if-nez v13, :cond_7

    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_7

    const/4 v13, 0x1

    goto/16 :goto_9

    .line 163
    .restart local v12    # "isGCMOperation":Z
    :cond_1d
    const/4 v12, 0x1

    goto/16 :goto_a

    :catch_4
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    const/4 v12, 0x1

    goto/16 :goto_a

    .line 166
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1e
    if-nez v12, :cond_8

    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_8

    const/4 v12, 0x1

    goto/16 :goto_b

    .line 173
    :catch_5
    move-exception v9

    .line 174
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 175
    const-string v22, "noticeID"

    const-string v23, "1"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_c

    .line 182
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v9

    .line 183
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 184
    const-string v22, "badge"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_d

    .line 194
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "bigpictureData":[B
    :cond_1f
    :try_start_d
    const-string v22, "ReceiveData bigpictureData is null"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_e

    .line 195
    .end local v6    # "bigpictureData":[B
    :catch_7
    move-exception v9

    .line 196
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReceiveData bigpicture Exception : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 199
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_20
    const-string v22, "ReceiveData bigpictureData is null or low SDK Version"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 205
    .restart local v8    # "buckettype":I
    :cond_21
    const/4 v8, 0x0

    goto/16 :goto_f

    .line 206
    .end local v8    # "buckettype":I
    :catch_8
    move-exception v9

    .line 207
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 208
    const-string v22, "buckettype"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_10

    .line 212
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "bucketsize":I
    :cond_22
    const/4 v7, 0x1

    goto/16 :goto_11

    .line 213
    .end local v7    # "bucketsize":I
    :catch_9
    move-exception v9

    .line 214
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 215
    const-string v22, "bucketsize"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_12

    .line 258
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "appid":Ljava/lang/String;
    .restart local v18    # "mac":Ljava/lang/String;
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_13
.end method

.method protected static setVID(Ljava/lang/String;)V
    .locals 1
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 505
    const-string v0, "setVID"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 506
    sput-object p0, Lcom/com2us/module/push/PushConfig;->VID:Ljava/lang/String;

    .line 507
    return-void
.end method

.method protected static startDialogActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/com2us/module/push/ShowMsgActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 325
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.method protected static startPushWakeLock(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/com2us/module/push/PushWakeLock;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 317
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 319
    return-void
.end method

.method protected static strPostDataBuilder(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 570
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 573
    .local v1, "jsonObjectPostData":Lorg/json/JSONObject;
    const-string v5, "1100001"

    .line 575
    .local v5, "noticeID":Ljava/lang/String;
    :try_start_0
    const-string v9, "noticeID"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const v10, 0x10c8e0

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 581
    :goto_0
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 582
    .local v8, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    .line 583
    .local v4, "networkOperator":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_1

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    .line 584
    .local v7, "simOperator":Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    .line 586
    .local v6, "operator":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 587
    move-object v6, v4

    .line 588
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "get networkOperator = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 594
    :goto_2
    const/4 v2, 0x0

    .line 595
    .local v2, "mcc":I
    const/4 v3, 0x0

    .line 597
    .local v3, "mnc":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 599
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_1
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 600
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mcc = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 601
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 602
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mnc = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 613
    :goto_3
    :try_start_2
    const-string v9, "bulk_id"

    const-string v10, "bulk_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    const-string v9, "appid"

    const-string v10, "appid"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    const-string v9, "udid"

    const-string v10, "udid"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    const-string v9, "null"

    const-string v10, "mac"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 617
    const-string v9, "mac"

    const-string v10, "mac"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 618
    :cond_0
    const-string v9, "androidid"

    const-string v10, "androidid"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 620
    const-string v9, "noticeid"

    invoke-virtual {v1, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    const-string v9, "language"

    const-string v10, "language"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    const-string v9, "country"

    const-string v10, "country"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    const-string v9, "sendtype"

    const-string v10, "sendtype"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    const-string v9, "platform"

    const-string v10, "gcm"

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    const-string v9, "did"

    invoke-static {p0}, Lcom/com2us/module/push/PushConfig;->getDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    const-string v9, "mcc"

    invoke-virtual {v1, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 627
    const-string v9, "mnc"

    invoke-virtual {v1, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 632
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "jsonObjectPostData : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 576
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v4    # "networkOperator":Ljava/lang/String;
    .end local v6    # "operator":Ljava/lang/String;
    .end local v7    # "simOperator":Ljava/lang/String;
    .end local v8    # "tel":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "1100001"

    goto/16 :goto_0

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "networkOperator":Ljava/lang/String;
    .restart local v8    # "tel":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 590
    .restart local v6    # "operator":Ljava/lang/String;
    .restart local v7    # "simOperator":Ljava/lang/String;
    :cond_2
    move-object v6, v7

    .line 591
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "get simOperator = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 603
    .restart local v2    # "mcc":I
    .restart local v3    # "mnc":I
    :catch_1
    move-exception v0

    .line 604
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mcc | mnc parse exception : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 605
    const/4 v2, 0x0

    .line 606
    const/4 v3, 0x0

    .line 608
    goto/16 :goto_3

    .line 609
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v9, "getOperator is empty"

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 629
    :catch_2
    move-exception v0

    .line 630
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
