.class public Lcom/com2us/module/activeuser/ActiveUserData;
.super Ljava/lang/Object;
.source "ActiveUserData.java"


# static fields
.field public static final ADVERTISING_ID:I = 0x13

.field public static final ANDROID_ID:I = 0x7

.field public static final APP_ID:I = 0x1

.field public static final APP_VERSION:I = 0x2

.field public static final APP_VERSIONCODE:I = 0xd

.field public static final COUNTRY:I = 0x6

.field public static final DEVICE_ID:I = 0x4

.field public static final DEVICE_MODEL:I = 0x3

.field public static final ISBLUESTACKS:I = 0xc

.field public static final IS_LIMIT_AD_TRACKING:I = 0x14

.field public static final LANGUAGE:I = 0xb

.field public static final LINE_NUMBER:I = 0xa

.field public static final LOCAL_AGREEMENT_FILENAME:I = 0x11

.field public static final LOCAL_AGREEMENT_VERSION:I = 0x10

.field public static final MAC_ADDR:I = 0x9

.field public static final MCC_CODE:I = 0xe

.field public static final MNC_CODE:I = 0xf

.field public static final OS_VERSION:I = 0x5

.field public static final RESOURCE_OFFSET:I = 0x16

.field public static final SERIAL_NO:I = 0x8

.field public static final SERVER_ID:I = 0x15

.field public static final VID:I = 0x12

.field private static final constanceDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static logger:Lcom/com2us/module/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    .line 75
    const-string v0, "ActiveUser"

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1()Lcom/com2us/module/util/Logger;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    return-object v0
.end method

.method public static create(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/com2us/module/activeuser/ActiveUserData;->create(Landroid/content/Context;Z)V

    .line 114
    return-void
.end method

.method private static create(Landroid/content/Context;Z)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onInstalled"    # Z

    .prologue
    .line 130
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    const-string v15, "[ActiveUserData] create"

    invoke-virtual {v14, v15}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 132
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :try_start_0
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    :try_start_1
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v15, 0xd

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :goto_1
    if-eqz p1, :cond_0

    .line 253
    :goto_2
    return-void

    .line 136
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 143
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 148
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 150
    .local v13, "teleManager":Landroid/telephony/TelephonyManager;
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :try_start_2
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    :goto_3
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/4 v15, 0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v16, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/4 v15, 0x7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "android_id"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x9

    if-ge v14, v15, :cond_2

    .line 169
    :try_start_3
    const-string v14, "android.os.SystemProperties"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 170
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v14, "get"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v1, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 171
    .local v4, "get":Ljava/lang/reflect/Method;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ro.serialno"

    aput-object v16, v14, v15

    invoke-virtual {v4, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 180
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "get":Ljava/lang/reflect/Method;
    .local v12, "serial_no":Ljava/lang/String;
    :goto_4
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/com2us/module/util/WrapperUtility;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, "mac_addr":Ljava/lang/String;
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v15, 0x9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 194
    .end local v7    # "mac_addr":Ljava/lang/String;
    :goto_5
    :try_start_5
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v15, 0xa

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 201
    :goto_6
    const/4 v8, 0x0

    .line 202
    .local v8, "mcc":I
    const/4 v9, 0x0

    .line 205
    .local v9, "mnc":I
    :try_start_6
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "operatorCode":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 207
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_3

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v10

    .line 210
    :cond_1
    :goto_7
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v14

    if-nez v14, :cond_4

    .line 212
    const/4 v14, 0x0

    const/4 v15, 0x3

    :try_start_7
    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 213
    const/4 v14, 0x3

    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result v9

    .line 226
    :goto_8
    :try_start_8
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v15, 0xe

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v15, 0xf

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 234
    .end local v10    # "operatorCode":Ljava/lang/String;
    :goto_9
    const-string v11, ""

    .line 236
    .local v11, "resourceOffset":Ljava/lang/String;
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.com2us"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 237
    const-string v11, "_com2us"

    .line 243
    :goto_a
    sget-object v14, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v15, 0x16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 248
    :goto_b
    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUserData;->setLanguage()Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "language":Ljava/lang/String;
    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUserData;->setCountry()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "country":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/com2us/module/activeuser/ActiveUserData;->setBlueStacks(Landroid/content/Context;)V

    .line 251
    move-object/from16 v0, p0

    invoke-static {v0, v8, v6, v2}, Lcom/com2us/module/activeuser/ActiveUserData;->setAgreementLocalData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static/range {p0 .. p0}, Lcom/com2us/module/activeuser/ActiveUserData;->setAdvertisingIdThread(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 154
    .end local v2    # "country":Ljava/lang/String;
    .end local v6    # "language":Ljava/lang/String;
    .end local v8    # "mcc":I
    .end local v9    # "mnc":I
    .end local v11    # "resourceOffset":Ljava/lang/String;
    .end local v12    # "serial_no":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 155
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 173
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 174
    .local v5, "ignore":Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 176
    .restart local v12    # "serial_no":Ljava/lang/String;
    goto/16 :goto_4

    .line 178
    .end local v5    # "ignore":Ljava/lang/Exception;
    .end local v12    # "serial_no":Ljava/lang/String;
    :cond_2
    sget-object v12, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .restart local v12    # "serial_no":Ljava/lang/String;
    goto/16 :goto_4

    .line 189
    :catch_4
    move-exception v3

    .line 190
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 196
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v3

    .line 197
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 207
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "mcc":I
    .restart local v9    # "mnc":I
    .restart local v10    # "operatorCode":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 215
    :catch_6
    move-exception v3

    .line 216
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 217
    const/4 v8, 0x0

    .line 218
    const/4 v9, 0x0

    .line 221
    goto :goto_8

    .line 222
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v8, 0x0

    .line 223
    const/4 v9, 0x0

    goto :goto_8

    .line 229
    .end local v10    # "operatorCode":Ljava/lang/String;
    :catch_7
    move-exception v3

    .line 230
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 238
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v11    # "resourceOffset":Ljava/lang/String;
    :cond_5
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.gamevil"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 239
    const-string v11, "_gamevil"

    .line 240
    goto :goto_a

    .line 241
    :cond_6
    const-string v11, ""
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_a

    .line 244
    :catch_8
    move-exception v3

    .line 245
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public static createOnInstalled(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/com2us/module/activeuser/ActiveUserData;->create(Landroid/content/Context;Z)V

    .line 122
    return-void
.end method

.method public static get(I)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 83
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ActiveUserData] get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 84
    sparse-switch p0, :sswitch_data_0

    .line 92
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    .line 86
    :sswitch_0
    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUserData;->setCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :sswitch_1
    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUserData;->setLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :sswitch_2
    invoke-static {}, Lcom/com2us/module/activeuser/ActiveUserData;->getVID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xb -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getVID()Ljava/lang/String;
    .locals 8

    .prologue
    .line 477
    const-string v4, ""

    .line 480
    .local v4, "vid":Ljava/lang/String;
    :try_start_0
    const-string v5, "com.com2us.module.C2SModule"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 481
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getVID"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 482
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    sget-object v5, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[ActiveUserData] getVID : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 488
    return-object v4

    .line 483
    :catch_0
    move-exception v2

    .line 484
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    const-string v6, "[ActiveUserData] not found Platform Module, ignore getVID."

    invoke-virtual {v5, v6}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setAdvertisingIdThread(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 494
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "[ActiveUserData] setAdvertisingIdThread"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 496
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/activeuser/ActiveUserData$1;

    invoke-direct {v1, p0}, Lcom/com2us/module/activeuser/ActiveUserData$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 563
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 564
    return-void
.end method

.method private static setAgreementLocalData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # I
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "country"    # Ljava/lang/String;

    .prologue
    .line 311
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    const-string v19, "[ActiveUserData] setAgreementLocalData"

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 313
    const/4 v15, 0x0

    .line 314
    .local v15, "version":I
    const-string v4, ""

    .line 317
    .local v4, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v11, "common/ActiveUserAgreement/au_terms_meta.json"

    .line 321
    .local v11, "metaFilePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.com2us"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 322
    const-string v11, "common/ActiveUserAgreement/com2us/au_terms_meta.json"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 336
    .local v12, "page":Ljava/io/InputStream;
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 338
    .local v13, "r":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "s":Ljava/lang/String;
    if-nez v14, :cond_2

    .line 340
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 342
    const/4 v6, 0x0

    .line 344
    .local v6, "metaData":Lorg/json/JSONArray;
    :try_start_2
    new-instance v7, Lorg/json/JSONArray;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 345
    .end local v6    # "metaData":Lorg/json/JSONArray;
    .local v7, "metaData":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v18

    move/from16 v0, v18

    if-lt v5, v0, :cond_3

    .line 453
    .end local v5    # "i":I
    .end local v7    # "metaData":Lorg/json/JSONArray;
    .end local v12    # "page":Ljava/io/InputStream;
    .end local v13    # "r":Ljava/io/BufferedReader;
    .end local v14    # "s":Ljava/lang/String;
    :goto_3
    return-void

    .line 323
    :cond_0
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.gamevil"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 324
    const-string v11, "common/ActiveUserAgreement/gamevil/au_terms_meta.json"

    .line 325
    goto :goto_0

    .line 326
    :cond_1
    const-string v11, "common/ActiveUserAgreement/au_terms_meta.json"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v3

    .line 329
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[ActiveUserData] setAgreementLocalData metaFilePath exception : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 331
    const-string v11, "common/ActiveUserAgreement/au_terms_meta.json"

    goto :goto_0

    .line 339
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v12    # "page":Ljava/io/InputStream;
    .restart local v13    # "r":Ljava/io/BufferedReader;
    .restart local v14    # "s":Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1

    .line 444
    .end local v12    # "page":Ljava/io/InputStream;
    .end local v13    # "r":Ljava/io/BufferedReader;
    .end local v14    # "s":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 445
    .local v3, "e":Ljava/io/IOException;
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[ActiveUserData] setAgreementLocalData IOException : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 446
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "0"

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 346
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "i":I
    .restart local v7    # "metaData":Lorg/json/JSONArray;
    .restart local v12    # "page":Ljava/io/InputStream;
    .restart local v13    # "r":Ljava/io/BufferedReader;
    .restart local v14    # "s":Ljava/lang/String;
    :cond_3
    :try_start_6
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 348
    .local v8, "metaData_element":Lorg/json/JSONObject;
    const-string v18, "mcc"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 349
    .local v10, "metaData_element_mccArray":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_4
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 375
    const-string v18, "country"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 376
    .local v9, "metaData_element_countryArray":Lorg/json/JSONArray;
    const/16 v17, 0x0

    .local v17, "y":I
    :goto_5
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 429
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    const-string v19, "[ActiveUserData] setAgreementLocalData nothing"

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 345
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 350
    .end local v9    # "metaData_element_countryArray":Lorg/json/JSONArray;
    .end local v17    # "y":I
    :cond_4
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 351
    const-string v18, "version"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 352
    const-string v18, "file"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v4

    .line 355
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "common/ActiveUserAgreement/"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 357
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "common/ActiveUserAgreement/"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[ActiveUserData] setAgreementLocalData version : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 361
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[ActiveUserData] setAgreementLocalData fileName : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 365
    :catch_2
    move-exception v3

    .line 366
    .local v3, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[ActiveUserData] setAgreementLocalData nothing : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 368
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "[ActiveUserData] setAgreementLocalData nothing"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "0"

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 377
    .restart local v9    # "metaData_element_countryArray":Lorg/json/JSONArray;
    .restart local v17    # "y":I
    :cond_6
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 378
    const-string v18, "version"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 379
    const-string v18, "file"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v4

    .line 382
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "common/ActiveUserAgreement/"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 384
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "common/ActiveUserAgreement/"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[ActiveUserData] setAgreementLocalData version : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 388
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[ActiveUserData] setAgreementLocalData fileName : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    .line 392
    :catch_3
    move-exception v3

    .line 393
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[ActiveUserData] setAgreementLocalData nothing : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 395
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "[ActiveUserData] setAgreementLocalData nothing"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 396
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "0"

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 376
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 432
    .end local v5    # "i":I
    .end local v7    # "metaData":Lorg/json/JSONArray;
    .end local v8    # "metaData_element":Lorg/json/JSONObject;
    .end local v9    # "metaData_element_countryArray":Lorg/json/JSONArray;
    .end local v10    # "metaData_element_mccArray":Lorg/json/JSONArray;
    .end local v16    # "x":I
    .end local v17    # "y":I
    .restart local v6    # "metaData":Lorg/json/JSONArray;
    :catch_4
    move-exception v3

    .line 433
    .local v3, "e":Lorg/json/JSONException;
    :goto_6
    :try_start_b
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[ActiveUserData] setAgreementLocalData JSONException : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 434
    const/4 v6, 0x0

    .line 435
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "0"

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_3

    .line 448
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v6    # "metaData":Lorg/json/JSONArray;
    .end local v12    # "page":Ljava/io/InputStream;
    .end local v13    # "r":Ljava/io/BufferedReader;
    .end local v14    # "s":Ljava/lang/String;
    :catch_5
    move-exception v3

    .line 449
    .local v3, "e":Ljava/lang/Exception;
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[ActiveUserData] setAgreementLocalData unknown Exception : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 450
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "0"

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 437
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "metaData":Lorg/json/JSONArray;
    .restart local v12    # "page":Ljava/io/InputStream;
    .restart local v13    # "r":Ljava/io/BufferedReader;
    .restart local v14    # "s":Ljava/lang/String;
    :catch_6
    move-exception v3

    .line 438
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_c
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->logger:Lcom/com2us/module/util/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[ActiveUserData] setAgreementLocalData Exception : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 439
    const/4 v6, 0x0

    .line 440
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "0"

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v18, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v19, 0x11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_3

    .line 437
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "metaData":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    .restart local v7    # "metaData":Lorg/json/JSONArray;
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7    # "metaData":Lorg/json/JSONArray;
    .restart local v6    # "metaData":Lorg/json/JSONArray;
    goto :goto_7

    .line 432
    .end local v6    # "metaData":Lorg/json/JSONArray;
    .restart local v7    # "metaData":Lorg/json/JSONArray;
    :catch_8
    move-exception v3

    move-object v6, v7

    .end local v7    # "metaData":Lorg/json/JSONArray;
    .restart local v6    # "metaData":Lorg/json/JSONArray;
    goto/16 :goto_6
.end method

.method public static setAppid(Ljava/lang/String;)V
    .locals 2
    .param p0, "appid"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method private static setBlueStacks(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    .local v6, "strbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 292
    .local v4, "manager":Landroid/content/pm/PackageManager;
    const/16 v7, 0x2000

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 293
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "jend":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 299
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.bluestacks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    .line 300
    sget-object v7, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .end local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "j":I
    .end local v3    # "jend":I
    .end local v4    # "manager":Landroid/content/pm/PackageManager;
    .end local v6    # "strbuf":Ljava/lang/StringBuffer;
    :goto_1
    return-void

    .line 294
    .restart local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "j":I
    .restart local v3    # "jend":I
    .restart local v4    # "manager":Landroid/content/pm/PackageManager;
    .restart local v6    # "strbuf":Ljava/lang/StringBuffer;
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 295
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.bluestacks.appsyncer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 296
    const-string v7, ""

    .line 295
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 297
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_1
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 301
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    sget-object v7, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 302
    .end local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "j":I
    .end local v3    # "jend":I
    .end local v4    # "manager":Landroid/content/pm/PackageManager;
    .end local v6    # "strbuf":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static setCountry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 259
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "country":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-object v0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    const-string v0, ""

    goto :goto_0
.end method

.method private static setLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "language":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-object v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    const-string v1, ""

    goto :goto_0
.end method

.method public static setServerId(Ljava/lang/String;)V
    .locals 2
    .param p0, "server_id"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUserData;->constanceDataMap:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method
