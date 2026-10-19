.class public Lcom/com2us/module/activeuser/ActiveUserProperties;
.super Ljava/lang/Object;
.source "ActiveUserProperties.java"


# static fields
.field protected static ACTIVE_USER_PROPERTIES:Ljava/lang/String; = null

.field public static final AGREEMENT_CHECKED_LIST_PROPERTY:Ljava/lang/String; = "agreement_checked_list"

.field public static final AGREEMENT_EX_SCHEME_DATA_PROPERTY:Ljava/lang/String; = "agreement_ex_scheme_data"

.field public static final AGREEMENT_LOG_PROPERTY:Ljava/lang/String; = "agreement_log_property"

.field public static final AGREEMENT_LOG_VALUE_COMPLETED:Ljava/lang/String; = "agreement_log_completed"

.field public static final AGREEMENT_LOG_VALUE_SENDING:Ljava/lang/String; = "agreement_log_sending"

.field public static final AGREEMENT_PRIVACY_PROPERTY:Ljava/lang/String; = "userinfo_agree_privacy"

.field public static final AGREEMENT_PRIVACY_VALUE_AGREE:Ljava/lang/String; = "AGREE"

.field public static final AGREEMENT_PRIVACY_VALUE_COMPLETED:Ljava/lang/String; = "COMPLETED"

.field public static final AGREEMENT_REVIEW_URL_PROPERTY:Ljava/lang/String; = "agreement_review_url"

.field public static final AGREEMENT_SMS_PROPERTY:Ljava/lang/String; = "agreement_sms_property"

.field public static final AGREEMENT_SMS_VALUE_AGREE:Ljava/lang/String; = "1"

.field public static final AGREEMENT_SMS_VALUE_DISAGREE:Ljava/lang/String; = "0"

.field public static final AGREEMENT_SMS_VALUE_UNKNOWN:Ljava/lang/String; = "null"

.field public static final AGREEMENT_VERSION_DATA_PROPERTY:Ljava/lang/String; = "agreement_version_data"

.field public static final AGREEMENT_VERSION_PROPERTY:Ljava/lang/String; = "agreement_version"

.field public static final AVC_PERIOD_PROPERTY:Ljava/lang/String; = "appversioncheck_period"

.field public static final AVC_REQUESTED_TIME_PROPERTY:Ljava/lang/String; = "appversioncheck_request_time"

.field public static final DIDCHECK_ANDROID_ID_PROPERTY:Ljava/lang/String; = "didcheck_android_id_data"

.field public static final DIDCHECK_DEVICE_ID_PROPERTY:Ljava/lang/String; = "didcheck_device_id_data"

.field public static final DIDCHECK_LINE_NUMBER_PROPERTY:Ljava/lang/String; = "didcheck_line_number_data"

.field public static final DIDCHECK_MAC_ADDR_PROPERTY:Ljava/lang/String; = "didcheck_mac_addr_data"

.field public static final DIDCHECK_OS_VERSION_PROPERTY:Ljava/lang/String; = "didcheck_os_version_data"

.field public static final DID_PROPERTY:Ljava/lang/String; = "did_data"

.field public static final DOWNLOAD_CHECK_APP_VERSION_PROPERTY:Ljava/lang/String; = "downloadcheck_app_ver"

.field public static final INSTALL_REFERRER_PROPERTY:Ljava/lang/String; = "referrer"

.field public static final MODULEVERSIONCHECK_DATA_PROPERTY:Ljava/lang/String; = "moduleversioncheck_data"

.field public static final SEND_REFERRER_ON_DOWNLOADCHECK_PROPERTY:Ljava/lang/String; = "downloadchk_referrer"

.field public static final SEND_REFERRER_ON_INSTALLED_PROPERTY:Ljava/lang/String; = "send_referrer"

.field public static final SESSION_DATA_PROPERTY:Ljava/lang/String; = "sessions_data"

.field public static final SESSION_LAST_SEND_TIME_PROPERTY:Ljava/lang/String; = "sessions_last_send_time"

.field public static final SESSION_LAST_SESSION_PROPERTY:Ljava/lang/String; = "sessions_last_session"

.field public static final SESSION_LAST_STOP_TIME_PROPERTY:Ljava/lang/String; = "sessions_last_stop_time"

.field public static final SESSION_LIMIT_NUM:Ljava/lang/String; = "session_limit_num"

.field public static final SESSION_LIMIT_TIME:Ljava/lang/String; = "session_limit_time"

.field private static logger:Lcom/com2us/module/util/Logger;

.field private static prop:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/com2us/module/activeuser/ActiveUserProperties;->prop:Ljava/util/Properties;

    .line 26
    const-string v0, "ActiveUser"

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/activeuser/ActiveUserProperties;->logger:Lcom/com2us/module/util/Logger;

    .line 29
    const-string v0, "activeuser.props"

    sput-object v0, Lcom/com2us/module/activeuser/ActiveUserProperties;->ACTIVE_USER_PROPERTIES:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v4, "did_data"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    sget-object v4, Lcom/com2us/module/activeuser/ActiveUserProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    invoke-static {v3}, Lcom/com2us/module/crypt/Crypt;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/com2us/module/crypt/Crypt;->Decrypt([B[B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/com2us/module/crypt/Crypt;->byt2str([B)Ljava/lang/String;

    move-result-object v3

    .line 90
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 91
    .local v0, "didValue":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "didValue":J
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 92
    .restart local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/com2us/module/activeuser/ActiveUserProperties;->logger:Lcom/com2us/module/util/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V

    .line 94
    const-string v3, ""

    .line 95
    const-string v4, "did_data"

    invoke-static {v4}, Lcom/com2us/module/activeuser/ActiveUserProperties;->removeProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/com2us/module/activeuser/ActiveUserProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static loadProperties(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    sget-object v2, Lcom/com2us/module/activeuser/ActiveUserProperties;->ACTIVE_USER_PROPERTIES:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 130
    sget-object v2, Lcom/com2us/module/activeuser/ActiveUserProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 141
    :cond_0
    :goto_0
    sget-object v2, Lcom/com2us/module/activeuser/ActiveUserProperties;->logger:Lcom/com2us/module/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ActiveUserProperties][loadProperties]"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/com2us/module/activeuser/ActiveUserProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v4}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V

    .line 142
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v2, Lcom/com2us/module/activeuser/ActiveUserProperties;->logger:Lcom/com2us/module/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ActiveUserProperties][loadProperties]"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    :catch_5
    move-exception v2

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 139
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 140
    :cond_1
    :goto_1
    throw v2

    .line 139
    :catch_6
    move-exception v3

    goto :goto_1

    :catch_7
    move-exception v2

    goto :goto_0
.end method

.method public static removeProperty(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUserProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUserProperties;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ActiveUserProperties][setProperty]name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 108
    :cond_0
    const-string v0, "did_data"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUserProperties;->prop:Ljava/util/Properties;

    .line 111
    invoke-static {p1}, Lcom/com2us/module/crypt/Crypt;->str2byt(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/crypt/Crypt;->Encrypt([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/crypt/Crypt;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v0, p0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_1
    sget-object v0, Lcom/com2us/module/activeuser/ActiveUserProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static declared-synchronized storeProperties(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const-class v3, Lcom/com2us/module/activeuser/ActiveUserProperties;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/com2us/module/activeuser/ActiveUserProperties;->logger:Lcom/com2us/module/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ActiveUserProperties][storeProperties]"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/com2us/module/activeuser/ActiveUserProperties;->prop:Ljava/util/Properties;

    invoke-virtual {v5}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v2, Lcom/com2us/module/activeuser/ActiveUserProperties;->ACTIVE_USER_PROPERTIES:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 155
    sget-object v2, Lcom/com2us/module/activeuser/ActiveUserProperties;->prop:Ljava/util/Properties;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    if-eqz v1, :cond_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catch_5
    move-exception v2

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 163
    if-eqz v1, :cond_1

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 164
    :cond_1
    :goto_1
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 151
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 163
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    goto :goto_1

    :catch_7
    move-exception v2

    goto :goto_0
.end method
