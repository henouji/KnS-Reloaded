.class public final Lcom/com2us/module/activeuser/ActiveUserNetwork;
.super Ljava/lang/Object;
.source "ActiveUserNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;,
        Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;,
        Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;,
        Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;,
        Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;,
        Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedModuleVersionData;,
        Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;,
        Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;
    }
.end annotation


# static fields
.field private static final ENC_FORMAT:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field protected static GATEWAY_TARGET_SERVER:Ljava/lang/String; = null

.field public static final REQUEST_AGREEMENT:Ljava/lang/String; = "agreement"

.field public static final REQUEST_CONFIGURATION:Ljava/lang/String; = "get_config"

.field public static final REQUEST_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final REQUEST_GETDID:Ljava/lang/String; = "get_did"

.field public static final REQUEST_REFERRER:Ljava/lang/String; = "referrer"

.field public static final REQUEST_SESSION:Ljava/lang/String; = "session_log"

.field public static final REQUEST_UPDATEDID:Ljava/lang/String; = "update_did"

.field public static final TIMEOUT:I = 0x3a98

.field private static final cryptAlgorithm:Ljava/lang/String; = "AES"

.field private static final cryptMode:Ljava/lang/String; = "CBC"

.field private static final cryptPadding:Ljava/lang/String; = "PKCS7Padding"

.field private static isEnabledDownload:Z

.field private static logger:Lcom/com2us/module/util/Logger;

.field private static spec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/module/activeuser/ActiveUserNetwork;->isEnabledDownload:Z

    .line 64
    const-string v0, "ActiveUser"

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    .line 68
    const-string v0, "http://activeuser.com2us.net/gateway.php"

    sput-object v0, Lcom/com2us/module/activeuser/ActiveUserNetwork;->GATEWAY_TARGET_SERVER:Ljava/lang/String;

    .line 82
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/com2us/module/activeuser/ActiveUserNetwork;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 87
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creaetSecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 945
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static createDateAsGMT()Ljava/lang/String;
    .locals 5

    .prologue
    .line 762
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 763
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/SimpleTimeZone;

    const/4 v3, 0x0

    const-string v4, "GMT"

    invoke-direct {v2, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 764
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 765
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static createHash(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 10
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 950
    const/4 v2, 0x0

    .line 952
    .local v2, "md":Ljava/security/MessageDigest;
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 956
    :goto_0
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 958
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 960
    .local v3, "mdByte":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 961
    .local v4, "mdStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 962
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-lt v1, v5, :cond_1

    .line 967
    .end local v1    # "i":I
    :cond_0
    return-object v4

    .line 953
    .end local v3    # "mdByte":[B
    .end local v4    # "mdStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 963
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "i":I
    .restart local v3    # "mdByte":[B
    .restart local v4    # "mdStr":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v9, v3, v1

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 962
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static decrypt(Ljava/lang/String;[B)[B
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 981
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 982
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    invoke-static {p0}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->creaetSecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    sget-object v3, Lcom/com2us/module/activeuser/ActiveUserNetwork;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 983
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 973
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 974
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->creaetSecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    sget-object v3, Lcom/com2us/module/activeuser/ActiveUserNetwork;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 975
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static makeSendData(Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .param p0, "requestCmd"    # Ljava/lang/String;

    .prologue
    .line 562
    sget-object v22, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "isEnabledDownload : "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v24, Lcom/com2us/module/activeuser/ActiveUserNetwork;->isEnabledDownload:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 564
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 567
    .local v10, "dataMap":Lorg/json/JSONObject;
    :try_start_0
    const-string v22, "appid"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 571
    .local v18, "utcCurrentTime":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v21

    .line 572
    .local v21, "z":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v15

    .line 573
    .local v15, "offset":I
    int-to-long v0, v15

    move-wide/from16 v22, v0

    add-long v8, v18, v22

    .line 575
    .local v8, "currtentTime":J
    const-string v22, "download"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 576
    const-string v22, "api"

    const-string v23, "download"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const/4 v13, 0x0

    .line 582
    .local v13, "isEnable":Z
    sget-boolean v22, Lcom/com2us/module/activeuser/ActiveUserNetwork;->isEnabledDownload:Z

    if-eqz v22, :cond_0

    .line 584
    const/4 v13, 0x1

    .line 586
    :cond_0
    if-nez v13, :cond_1

    const/4 v14, 0x0

    .line 757
    .end local v8    # "currtentTime":J
    .end local v13    # "isEnable":Z
    .end local v15    # "offset":I
    .end local v18    # "utcCurrentTime":J
    .end local v21    # "z":Ljava/util/TimeZone;
    :goto_0
    return-object v14

    .line 589
    .restart local v8    # "currtentTime":J
    .restart local v13    # "isEnable":Z
    .restart local v15    # "offset":I
    .restart local v18    # "utcCurrentTime":J
    .restart local v21    # "z":Ljava/util/TimeZone;
    :cond_1
    const-string v22, "Y"

    const-string v23, "downloadchk_referrer"

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 590
    const-string v22, "referrer"

    const-string v23, "referrer"

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    :cond_2
    const-string v23, "hacking"

    invoke-static {}, Lcom/com2us/module/util/WrapperUtility;->IsCracked()Z

    move-result v22

    if-eqz v22, :cond_5

    const-string v22, "1"

    :goto_1
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 594
    const-string v22, "appversion"

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 595
    const-string v22, "platform"

    const-string v23, "A"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 596
    const-string v22, "mac"

    const/16 v23, 0x9

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 597
    const-string v22, "mdn"

    const/16 v23, 0xa

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 598
    const-string v22, "imei"

    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 599
    const-string v22, "android_id"

    const/16 v23, 0x7

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 600
    const-string v22, "osversion"

    const/16 v23, 0x5

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    const-string v22, "device"

    const/16 v23, 0x3

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    const-string v22, "country"

    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 603
    const-string v22, "language"

    const/16 v23, 0xb

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 604
    const-string v22, "bluestacks"

    const/16 v23, 0xc

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    const-string v22, "did_data"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 606
    .local v11, "did":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 607
    const-string v22, "did"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 609
    :cond_3
    const/16 v17, 0x0

    .line 611
    .local v17, "versionList":Lorg/json/JSONObject;
    :try_start_1
    new-instance v17, Lorg/json/JSONObject;

    .end local v17    # "versionList":Lorg/json/JSONObject;
    const-string v22, "moduleversioncheck_data"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 616
    .restart local v17    # "versionList":Lorg/json/JSONObject;
    :goto_2
    :try_start_2
    const-string v22, "versions"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 617
    const-string v22, "advertising_id"

    const/16 v23, 0x13

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 618
    const-string v22, "is_limit_ad_tracking"

    const/16 v23, 0x14

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 755
    .end local v8    # "currtentTime":J
    .end local v11    # "did":Ljava/lang/String;
    .end local v13    # "isEnable":Z
    .end local v15    # "offset":I
    .end local v17    # "versionList":Lorg/json/JSONObject;
    .end local v18    # "utcCurrentTime":J
    .end local v21    # "z":Ljava/util/TimeZone;
    :cond_4
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    .line 756
    .local v14, "jsonStr":Ljava/lang/String;
    sget-object v22, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    const-string v23, "ActiveUser"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "[ActiveUserNetwork][makeSendData]"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    .end local v14    # "jsonStr":Ljava/lang/String;
    .restart local v8    # "currtentTime":J
    .restart local v13    # "isEnable":Z
    .restart local v15    # "offset":I
    .restart local v18    # "utcCurrentTime":J
    .restart local v21    # "z":Ljava/util/TimeZone;
    :cond_5
    :try_start_3
    const-string v22, "0"

    goto/16 :goto_1

    .line 612
    .restart local v11    # "did":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 613
    .local v12, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 614
    .restart local v17    # "versionList":Lorg/json/JSONObject;
    sget-object v22, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "versionList data getProperty failed : "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 749
    .end local v8    # "currtentTime":J
    .end local v11    # "did":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "isEnable":Z
    .end local v15    # "offset":I
    .end local v17    # "versionList":Lorg/json/JSONObject;
    .end local v18    # "utcCurrentTime":J
    .end local v21    # "z":Ljava/util/TimeZone;
    :catch_1
    move-exception v12

    .line 750
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 751
    new-instance v10, Lorg/json/JSONObject;

    .end local v10    # "dataMap":Lorg/json/JSONObject;
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .restart local v10    # "dataMap":Lorg/json/JSONObject;
    goto :goto_3

    .line 623
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v8    # "currtentTime":J
    .restart local v15    # "offset":I
    .restart local v18    # "utcCurrentTime":J
    .restart local v21    # "z":Ljava/util/TimeZone;
    :cond_6
    :try_start_4
    const-string v22, "referrer"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 624
    const-string v22, "api"

    const-string v23, "referrer"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    const-string v22, "appversion"

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    const-string v22, "referrer"

    const-string v23, "referrer"

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 628
    :cond_7
    const-string v22, "session_log"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 629
    const-string v22, "api"

    const-string v23, "session_log"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    const-string v22, "did_data"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 632
    .restart local v11    # "did":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 633
    const-string v22, "did"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 634
    const/16 v22, 0x12

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v20

    .line 635
    .local v20, "vid":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v22, "vid"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 637
    .end local v20    # "vid":Ljava/lang/String;
    :cond_8
    const/16 v16, 0x0

    .line 639
    .local v16, "sessions":Lorg/json/JSONArray;
    :try_start_5
    new-instance v16, Lorg/json/JSONArray;

    .end local v16    # "sessions":Lorg/json/JSONArray;
    const-string v22, "sessions_data"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 644
    .restart local v16    # "sessions":Lorg/json/JSONArray;
    :goto_4
    :try_start_6
    const-string v22, "sessions"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 640
    .end local v16    # "sessions":Lorg/json/JSONArray;
    :catch_2
    move-exception v12

    .line 641
    .restart local v12    # "e":Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 642
    .restart local v16    # "sessions":Lorg/json/JSONArray;
    sget-object v22, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "session data getProperty failed: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 646
    .end local v11    # "did":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "sessions":Lorg/json/JSONArray;
    :cond_9
    const-string v22, "get_did"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 647
    const-string v22, "api"

    const-string v23, "get_did"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    const-string v22, "platform"

    const-string v23, "A"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 649
    const-string v22, "mac"

    const/16 v23, 0x9

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    const-string v22, "mdn"

    const/16 v23, 0xa

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    const-string v22, "imei"

    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    const-string v22, "android_id"

    const/16 v23, 0x7

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    const-string v22, "osversion"

    const/16 v23, 0x5

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 654
    const-string v22, "device"

    const/16 v23, 0x3

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    const-string v23, "hacking"

    invoke-static {}, Lcom/com2us/module/util/WrapperUtility;->IsCracked()Z

    move-result v22

    if-eqz v22, :cond_a

    const-string v22, "1"

    :goto_5
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    const-string v22, "advertising_id"

    const/16 v23, 0x13

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    const-string v22, "is_limit_ad_tracking"

    const/16 v23, 0x14

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 655
    :cond_a
    const-string v22, "0"

    goto :goto_5

    .line 659
    :cond_b
    const-string v22, "update_did"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 660
    const-string v22, "api"

    const-string v23, "update_did"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    const-string v22, "did_data"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 662
    .restart local v11    # "did":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 663
    const-string v22, "did"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    :cond_c
    const-string v22, "platform"

    const-string v23, "A"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 666
    const-string v22, "mac"

    const/16 v23, 0x9

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    const-string v22, "mdn"

    const/16 v23, 0xa

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 668
    const-string v22, "imei"

    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    const-string v22, "android_id"

    const/16 v23, 0x7

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 670
    const-string v22, "osversion"

    const/16 v23, 0x5

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    const-string v22, "device"

    const/16 v23, 0x3

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    const-string v23, "hacking"

    invoke-static {}, Lcom/com2us/module/util/WrapperUtility;->IsCracked()Z

    move-result v22

    if-eqz v22, :cond_d

    const-string v22, "1"

    :goto_6
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    const-string v22, "advertising_id"

    const/16 v23, 0x13

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    const-string v22, "is_limit_ad_tracking"

    const/16 v23, 0x14

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 672
    :cond_d
    const-string v22, "0"

    goto :goto_6

    .line 690
    .end local v11    # "did":Ljava/lang/String;
    :cond_e
    const-string v22, "get_config"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 691
    const-string v22, "api"

    const-string v23, "get_config"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    const-string v22, "appversion"

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    const-string v22, "platform"

    const-string v23, "A"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    const-string v22, "did_data"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 695
    .restart local v11    # "did":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 696
    const-string v22, "did"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    :cond_f
    const-string v22, "mcc"

    const/16 v23, 0xe

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    const-string v22, "mnc"

    const/16 v23, 0xf

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    const-string v22, "country"

    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    const-string v22, "language"

    const/16 v23, 0xb

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 702
    const-string v22, "server_id"

    const/16 v23, 0x15

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    const-string v22, "mdn"

    const/16 v23, 0xa

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 704
    const-string v22, "timestamp"

    const-wide/16 v24, 0x3e8

    div-long v24, v8, v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v10, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 705
    const-string v22, "timezone_offset"

    div-int/lit16 v0, v15, 0x3e8

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 706
    const-string v22, "agreement_version"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 707
    .local v7, "agreement_version":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result v22

    if-nez v22, :cond_10

    .line 709
    :try_start_7
    const-string v22, "agreement_version"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 716
    :goto_7
    :try_start_8
    const-string v22, "agreement_sms_property"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 717
    .local v6, "agreement_sms":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result v22

    if-nez v22, :cond_11

    .line 719
    :try_start_9
    const-string v22, "agreement_sms"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_3

    .line 720
    :catch_3
    move-exception v12

    .line 721
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 722
    const-string v22, "agreement_sms"

    sget-object v23, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 710
    .end local v6    # "agreement_sms":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v12

    .line 711
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v22, "agreement_version"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_7

    .line 714
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_10
    const-string v22, "agreement_version"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_7

    .line 725
    .restart local v6    # "agreement_sms":Ljava/lang/String;
    :cond_11
    const-string v22, "agreement_sms"

    sget-object v23, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 728
    .end local v6    # "agreement_sms":Ljava/lang/String;
    .end local v7    # "agreement_version":Ljava/lang/String;
    .end local v11    # "did":Ljava/lang/String;
    :cond_12
    const-string v22, "agreement"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 729
    const-string v22, "api"

    const-string v23, "agreement"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    const-string v22, "appversion"

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    const-string v22, "platform"

    const-string v23, "A"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    const-string v22, "did_data"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 733
    .restart local v11    # "did":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_13

    .line 734
    const-string v22, "did"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    :cond_13
    const-string v22, "country"

    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 737
    const-string v22, "language"

    const/16 v23, 0xb

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 738
    const-string v22, "agreement_version_data"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 739
    .local v4, "agreementData":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_14

    .line 740
    const-string v22, "agreement"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 742
    :cond_14
    const-string v22, "agreement_ex_scheme_data"

    invoke-static/range {v22 .. v22}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, "agreement_exData":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_15

    .line 744
    const-string v22, "agreement_ex"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    :cond_15
    const-string v22, "mcc"

    const/16 v23, 0xe

    invoke-static/range {v23 .. v23}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3
.end method

.method public static parseReceiveData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 17
    .param p0, "requestCmd"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 776
    sget-object v13, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    const-string v14, "ActiveUser"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[ActiveUserNetwork][parseReceivedData] "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v13, "download"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 780
    new-instance v11, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;

    invoke-direct {v11}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;-><init>()V

    .line 783
    .local v11, "recvData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 784
    .local v6, "jObj":Lorg/json/JSONObject;
    const-string v13, "errno"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->errno:I

    .line 785
    const-string v13, "error"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->error:Ljava/lang/String;

    .line 786
    const-string v13, "did"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->did:Ljava/lang/String;

    .line 788
    const-string v13, "config"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 789
    .local v3, "config":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 790
    const-string v13, "session_max_num"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_1

    const-string v13, "session_max_num"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    :goto_0
    iput v13, v11, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->session_max_num:I

    .line 791
    const-string v13, "session_max_time"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const v14, 0x15180

    if-ge v13, v14, :cond_2

    const-string v13, "session_max_time"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    :goto_1
    iput v13, v11, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->session_max_time:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v3    # "config":Lorg/json/JSONObject;
    .end local v6    # "jObj":Lorg/json/JSONObject;
    .end local v11    # "recvData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;
    :cond_0
    :goto_2
    return-object v11

    .line 790
    .restart local v3    # "config":Lorg/json/JSONObject;
    .restart local v6    # "jObj":Lorg/json/JSONObject;
    .restart local v11    # "recvData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;
    :cond_1
    const/4 v13, 0x1

    goto :goto_0

    .line 791
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 820
    .end local v3    # "config":Lorg/json/JSONObject;
    .end local v6    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 821
    .local v5, "e":Lorg/json/JSONException;
    throw v5

    .line 826
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v11    # "recvData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;
    :cond_3
    const-string v13, "referrer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 827
    new-instance v4, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;

    invoke-direct {v4}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;-><init>()V

    .line 829
    .local v4, "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 830
    .restart local v6    # "jObj":Lorg/json/JSONObject;
    const-string v13, "errno"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v4, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;->errno:I

    .line 831
    const-string v13, "error"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;->error:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v4

    .line 840
    goto :goto_2

    .line 837
    .end local v6    # "jObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 838
    .restart local v5    # "e":Lorg/json/JSONException;
    throw v5

    .line 842
    .end local v4    # "data":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedReferrerData;
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_4
    const-string v13, "session_log"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 843
    new-instance v12, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;

    invoke-direct {v12}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;-><init>()V

    .line 845
    .local v12, "recvSessionData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 846
    .restart local v6    # "jObj":Lorg/json/JSONObject;
    const-string v13, "errno"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->errno:I

    .line 847
    const-string v13, "error"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->error:Ljava/lang/String;

    .line 849
    const-string v13, "config"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 850
    .restart local v3    # "config":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    .line 851
    const-string v13, "session_max_num"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_6

    const-string v13, "session_max_num"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    :goto_3
    iput v13, v12, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->session_max_num:I

    .line 852
    const-string v13, "session_max_time"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const v14, 0x15180

    if-ge v13, v14, :cond_7

    const-string v13, "session_max_time"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    :goto_4
    iput v13, v12, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;->session_max_time:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    move-object v11, v12

    .line 857
    goto/16 :goto_2

    .line 851
    :cond_6
    const/4 v13, 0x1

    goto :goto_3

    .line 852
    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    .line 854
    .end local v3    # "config":Lorg/json/JSONObject;
    .end local v6    # "jObj":Lorg/json/JSONObject;
    :catch_2
    move-exception v5

    .line 855
    .restart local v5    # "e":Lorg/json/JSONException;
    throw v5

    .line 859
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v12    # "recvSessionData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedSessionData;
    :cond_8
    const-string v13, "get_did"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "update_did"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 860
    :cond_9
    new-instance v10, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;

    invoke-direct {v10}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;-><init>()V

    .line 862
    .local v10, "recvDIDData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 863
    .restart local v6    # "jObj":Lorg/json/JSONObject;
    const-string v13, "errno"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v10, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;->errno:I

    .line 864
    const-string v13, "error"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;->error:Ljava/lang/String;

    .line 865
    const-string v13, "did"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;->did:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v11, v10

    .line 869
    goto/16 :goto_2

    .line 866
    .end local v6    # "jObj":Lorg/json/JSONObject;
    :catch_3
    move-exception v5

    .line 867
    .restart local v5    # "e":Lorg/json/JSONException;
    throw v5

    .line 882
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v10    # "recvDIDData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDIDData;
    :cond_a
    const-string v13, "get_config"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 883
    new-instance v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;

    invoke-direct {v9}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;-><init>()V

    .line 885
    .local v9, "recvConfigurationData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;
    :try_start_4
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 886
    .restart local v6    # "jObj":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 887
    .local v1, "agreementObj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 888
    .local v2, "agreement_exObj":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 890
    .local v7, "noticeObj":Lorg/json/JSONObject;
    const-string v13, "errno"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->errno:I

    .line 891
    const-string v13, "error"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->error:Ljava/lang/String;

    .line 893
    const-string v13, "agreement"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 894
    const-string v13, "agreement_ex"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 895
    const-string v13, "notice"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 897
    if-eqz v1, :cond_b

    .line 898
    const-string v13, "show"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_show:I

    .line 899
    const-string v13, "version"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_version:I

    .line 900
    const-string v13, "url"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_url:Ljava/lang/String;

    .line 901
    const-string v13, "review_url"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_review_url:Ljava/lang/String;

    .line 904
    :cond_b
    if-nez v2, :cond_c

    .line 905
    const/4 v13, 0x0

    iput v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_ex_show:I

    .line 911
    :goto_5
    if-nez v7, :cond_d

    .line 912
    const/4 v13, 0x0

    iput v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_show:I

    :goto_6
    move-object v11, v9

    .line 925
    goto/16 :goto_2

    .line 907
    :cond_c
    const/4 v13, 0x1

    iput v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_ex_show:I

    .line 908
    const-string v13, "url"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->agreement_ex_url:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 922
    .end local v1    # "agreementObj":Lorg/json/JSONObject;
    .end local v2    # "agreement_exObj":Lorg/json/JSONObject;
    .end local v6    # "jObj":Lorg/json/JSONObject;
    .end local v7    # "noticeObj":Lorg/json/JSONObject;
    :catch_4
    move-exception v5

    .line 923
    .restart local v5    # "e":Lorg/json/JSONException;
    throw v5

    .line 914
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v1    # "agreementObj":Lorg/json/JSONObject;
    .restart local v2    # "agreement_exObj":Lorg/json/JSONObject;
    .restart local v6    # "jObj":Lorg/json/JSONObject;
    .restart local v7    # "noticeObj":Lorg/json/JSONObject;
    :cond_d
    const/4 v13, 0x1

    :try_start_5
    iput v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_show:I

    .line 915
    const-string v13, "title"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_title:Ljava/lang/String;

    .line 916
    const-string v13, "message"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_message:Ljava/lang/String;

    .line 917
    const-string v13, "button"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_button:Ljava/lang/String;

    .line 918
    const-string v13, "action"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_action:I

    .line 919
    const-string v13, "url"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;->notice_url:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 927
    .end local v1    # "agreementObj":Lorg/json/JSONObject;
    .end local v2    # "agreement_exObj":Lorg/json/JSONObject;
    .end local v6    # "jObj":Lorg/json/JSONObject;
    .end local v7    # "noticeObj":Lorg/json/JSONObject;
    .end local v9    # "recvConfigurationData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;
    :cond_e
    const-string v13, "agreement"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 928
    new-instance v8, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;

    invoke-direct {v8}, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;-><init>()V

    .line 930
    .local v8, "recvAgreementData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;
    :try_start_6
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 931
    .restart local v6    # "jObj":Lorg/json/JSONObject;
    const-string v13, "errno"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v8, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;->errno:I

    .line 932
    const-string v13, "error"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;->error:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v11, v8

    .line 936
    goto/16 :goto_2

    .line 933
    .end local v6    # "jObj":Lorg/json/JSONObject;
    :catch_5
    move-exception v5

    .line 934
    .restart local v5    # "e":Lorg/json/JSONException;
    throw v5

    .line 940
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v8    # "recvAgreementData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedAgreementData;
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method public static processNetworkTask(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "requestCmd"    # Ljava/lang/String;

    .prologue
    .line 442
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUserNetwork;->GATEWAY_TARGET_SERVER:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->processNetworkTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized processNetworkTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 32
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "requestCmd"    # Ljava/lang/String;

    .prologue
    .line 451
    const-class v27, Lcom/com2us/module/activeuser/ActiveUserNetwork;

    monitor-enter v27

    const/16 v21, 0x0

    .line 452
    .local v21, "responseStr":Ljava/lang/String;
    const/4 v13, 0x0

    .line 453
    .local v13, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v5, 0x0

    .line 455
    .local v5, "client":Lorg/apache/http/client/HttpClient;
    const/16 v18, 0x0

    .line 456
    .local v18, "recvTimeStamp":Ljava/lang/String;
    const/16 v16, 0x0

    .line 458
    .local v16, "recvHash":Ljava/lang/String;
    :try_start_0
    new-instance v12, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v12}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 462
    .local v12, "httpClientParams":Lorg/apache/http/params/HttpParams;
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->makeSendData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v23

    .line 464
    .local v23, "sendData":Ljava/lang/String;
    if-nez v23, :cond_0

    const/16 v26, 0x0

    .line 552
    :goto_0
    monitor-exit v27

    return-object v26

    .line 466
    :cond_0
    :try_start_1
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .local v6, "client":Lorg/apache/http/client/HttpClient;
    const/4 v9, 0x0

    .line 470
    .local v9, "entity":Lorg/apache/http/entity/StringEntity;
    :try_start_2
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 471
    .end local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v14, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_3
    const-string v26, "Content-type"

    const-string v28, "text/html"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    .line 476
    .local v25, "timestamp":Ljava/lang/String;
    const-string v26, "MD5"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->createHash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v11

    .line 477
    .local v11, "hash":Ljava/lang/String;
    const-string v26, "MD5"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->createHash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v29, 0x10

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 479
    .local v15, "key":Ljava/lang/String;
    const-string v26, "REQ-TIMESTAMP"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v26, "REQ-AUTHKEY"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 482
    const/4 v4, 0x0

    .line 484
    .local v4, "base64Data":[B
    :try_start_4
    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->encrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v26

    const/16 v28, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v4

    .line 489
    :goto_1
    :try_start_5
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 491
    .local v24, "strBase64Data":Ljava/lang/String;
    sget-object v26, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "[ActiveUserNetwork][processNetworkTask] send data : "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 493
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    const-string v26, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v10, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .local v10, "entity":Lorg/apache/http/entity/StringEntity;
    move-object v9, v10

    .end local v10    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    move-object v13, v14

    .line 501
    .end local v4    # "base64Data":[B
    .end local v11    # "hash":Ljava/lang/String;
    .end local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v15    # "key":Ljava/lang/String;
    .end local v24    # "strBase64Data":Ljava/lang/String;
    .end local v25    # "timestamp":Ljava/lang/String;
    .restart local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_2
    :try_start_6
    invoke-virtual {v13, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 503
    invoke-interface {v6, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 505
    .local v19, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v26

    const/16 v28, 0xc8

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 507
    const-string v26, "REQ-TIMESTAMP"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 508
    const-string v26, "REQ-AUTHKEY"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 510
    sget-object v26, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "[ActiveUserNetwork][processNetworkTask] recvTimeStamp="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", recvHash="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 512
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    .line 513
    .local v20, "responseEntity":Lorg/apache/http/HttpEntity;
    if-eqz v20, :cond_1

    .line 514
    invoke-static/range {v20 .. v20}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v21

    .line 515
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 527
    .end local v20    # "responseEntity":Lorg/apache/http/HttpEntity;
    :cond_1
    :try_start_7
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    move-object/from16 v22, v21

    .line 530
    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "responseStr":Ljava/lang/String;
    .local v22, "responseStr":Ljava/lang/String;
    :goto_3
    if-eqz v22, :cond_3

    .line 532
    :try_start_8
    const-string v26, "MD5"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->createHash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v29, 0x10

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 534
    .restart local v15    # "key":Ljava/lang/String;
    const/4 v7, 0x0

    .line 535
    .local v7, "decodeBase64byte":[B
    const/16 v26, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 537
    new-instance v21, Ljava/lang/String;

    invoke-static {v15, v7}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->decrypt(Ljava/lang/String;[B)[B

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 538
    .end local v22    # "responseStr":Ljava/lang/String;
    .restart local v21    # "responseStr":Ljava/lang/String;
    :try_start_9
    sget-object v26, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "[ActiveUserNetwork][processNetworkTask] gateway responseStr ("

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 540
    const-string v26, "MD5"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->createHash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v17

    .line 542
    .local v17, "recvMsgHash":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 543
    sget-object v26, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    const-string v28, "[ActiveUserNetwork][processNetworkTask] gateway response hash equals true"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/ActiveUserNetwork;->parseReceiveData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v26

    goto/16 :goto_0

    .line 485
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v7    # "decodeBase64byte":[B
    .end local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v17    # "recvMsgHash":Ljava/lang/String;
    .restart local v4    # "base64Data":[B
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v11    # "hash":Ljava/lang/String;
    .restart local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v25    # "timestamp":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 486
    .local v8, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_1

    .line 495
    .end local v4    # "base64Data":[B
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "hash":Ljava/lang/String;
    .end local v15    # "key":Ljava/lang/String;
    .end local v25    # "timestamp":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v13, v14

    .line 496
    .end local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    .restart local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_4
    :try_start_b
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_2

    .line 519
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v8

    move-object v5, v6

    .line 520
    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    .local v8, "e":Ljava/lang/RuntimeException;
    :goto_5
    :try_start_c
    sget-object v26, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    const-string v28, "[ActiveUserNetwork][processNetworkTask]"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 521
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 527
    :try_start_d
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object/from16 v22, v21

    .end local v21    # "responseStr":Ljava/lang/String;
    .restart local v22    # "responseStr":Ljava/lang/String;
    goto/16 :goto_3

    .line 497
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "responseStr":Ljava/lang/String;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v21    # "responseStr":Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 498
    .local v8, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_e
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_2

    .line 522
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    move-object v5, v6

    .line 523
    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    .local v8, "e":Ljava/io/IOException;
    :goto_7
    :try_start_f
    sget-object v26, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    const-string v28, "[ActiveUserNetwork][processNetworkTask]"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 527
    :try_start_10
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object/from16 v22, v21

    .end local v21    # "responseStr":Ljava/lang/String;
    .restart local v22    # "responseStr":Ljava/lang/String;
    goto/16 :goto_3

    .line 524
    .end local v8    # "e":Ljava/io/IOException;
    .end local v22    # "responseStr":Ljava/lang/String;
    .restart local v21    # "responseStr":Ljava/lang/String;
    :catch_5
    move-exception v8

    .line 525
    .local v8, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_11
    sget-object v26, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    const-string v28, "[ActiveUserNetwork][processNetworkTask]"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 527
    :try_start_12
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object/from16 v22, v21

    .end local v21    # "responseStr":Ljava/lang/String;
    .restart local v22    # "responseStr":Ljava/lang/String;
    goto/16 :goto_3

    .line 526
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v22    # "responseStr":Ljava/lang/String;
    .restart local v21    # "responseStr":Ljava/lang/String;
    :catchall_0
    move-exception v26

    .line 527
    :goto_9
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 528
    throw v26
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 451
    .end local v12    # "httpClientParams":Lorg/apache/http/params/HttpParams;
    .end local v23    # "sendData":Ljava/lang/String;
    :catchall_1
    move-exception v26

    :goto_a
    monitor-exit v27

    throw v26

    .line 546
    .restart local v7    # "decodeBase64byte":[B
    .restart local v12    # "httpClientParams":Lorg/apache/http/params/HttpParams;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v17    # "recvMsgHash":Ljava/lang/String;
    .restart local v23    # "sendData":Ljava/lang/String;
    :cond_2
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 548
    .end local v7    # "decodeBase64byte":[B
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "recvMsgHash":Ljava/lang/String;
    .end local v21    # "responseStr":Ljava/lang/String;
    .restart local v22    # "responseStr":Ljava/lang/String;
    :catch_6
    move-exception v8

    move-object/from16 v21, v22

    .line 549
    .end local v22    # "responseStr":Ljava/lang/String;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v21    # "responseStr":Ljava/lang/String;
    :goto_b
    :try_start_13
    sget-object v26, Lcom/com2us/module/activeuser/ActiveUserNetwork;->logger:Lcom/com2us/module/util/Logger;

    const-string v28, "[ActiveUserNetwork][processNetworkTask]"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 552
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_c
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 548
    .restart local v7    # "decodeBase64byte":[B
    .restart local v15    # "key":Ljava/lang/String;
    :catch_7
    move-exception v8

    goto :goto_b

    .line 526
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v7    # "decodeBase64byte":[B
    .end local v15    # "key":Ljava/lang/String;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    :catchall_2
    move-exception v26

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_9

    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catchall_3
    move-exception v26

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    move-object v13, v14

    .end local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_9

    .line 524
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    :catch_8
    move-exception v8

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_8

    .line 522
    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_9
    move-exception v8

    goto :goto_7

    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_a
    move-exception v8

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    move-object v13, v14

    .end local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_7

    .line 519
    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_b
    move-exception v8

    goto/16 :goto_5

    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_c
    move-exception v8

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    move-object v13, v14

    .end local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_5

    .line 497
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_d
    move-exception v8

    move-object v13, v14

    .end local v14    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v13    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_6

    .line 495
    :catch_e
    move-exception v8

    goto/16 :goto_4

    .line 451
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    :catchall_4
    move-exception v26

    move-object v5, v6

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_a

    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "responseStr":Ljava/lang/String;
    .restart local v22    # "responseStr":Ljava/lang/String;
    :catchall_5
    move-exception v26

    move-object/from16 v21, v22

    .end local v22    # "responseStr":Ljava/lang/String;
    .restart local v21    # "responseStr":Ljava/lang/String;
    goto :goto_a

    .end local v21    # "responseStr":Ljava/lang/String;
    .restart local v22    # "responseStr":Ljava/lang/String;
    :cond_3
    move-object/from16 v21, v22

    .end local v22    # "responseStr":Ljava/lang/String;
    .restart local v21    # "responseStr":Ljava/lang/String;
    goto :goto_c
.end method

.method public static setEnableUserAgree(Z)V
    .locals 0
    .param p0, "agree"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 311
    return-void
.end method

.method public static setEnabledDownload(Z)V
    .locals 0
    .param p0, "isEnabled"    # Z

    .prologue
    .line 301
    sput-boolean p0, Lcom/com2us/module/activeuser/ActiveUserNetwork;->isEnabledDownload:Z

    .line 302
    return-void
.end method
