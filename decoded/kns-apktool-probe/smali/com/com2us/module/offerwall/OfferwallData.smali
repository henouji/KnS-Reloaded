.class public Lcom/com2us/module/offerwall/OfferwallData;
.super Ljava/lang/Object;
.source "OfferwallData.java"


# static fields
.field public static final ADDTIONAL_INFO:I = 0x10

.field public static final APP_ID:I = 0x1

.field public static final APP_VERSION:I = 0x7

.field public static final APP_VERSIONCODE:I = 0x8

.field public static final ASSET_AMOUNT:I = 0xe

.field public static final ASSET_CODE:I = 0xd

.field public static final AWARD_RESULT:I = 0xf

.field public static final C2S_MERCURY:I = 0x2

.field public static final C2S_OFFERWALL:I = 0x1

.field public static final COUNTRY:I = 0x4

.field public static final DEVICE_MODEL:I = 0x5

.field public static final DID:I = 0xa

.field public static final EVENTID:I = 0xc

.field public static final LANGUAGE:I = 0x3

.field public static final MAC_ADDRESS:I = 0x2

.field public static final MCC:I = 0x11

.field public static final MNC:I = 0x12

.field public static final OS_VERSION:I = 0x6

.field public static final PATH:I = 0x13

.field public static final UID:I = 0x9

.field public static final VID:I = 0xb

.field private static final constanceArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static logger:Lcom/com2us/module/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/com2us/module/offerwall/OfferwallData;->constanceArray:Landroid/util/SparseArray;

    .line 44
    const-string v0, "Offerwall"

    invoke-static {v0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;)Lcom/com2us/module/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/offerwall/OfferwallData;->logger:Lcom/com2us/module/util/Logger;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CheckAndPut(ILjava/lang/String;)V
    .locals 1
    .param p0, "key"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallData;->constanceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallData;->constanceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallData;->constanceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallData;->constanceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$0(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    return-void
.end method

.method public static create(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 68
    const/4 v0, 0x2

    invoke-static {p0}, Lcom/com2us/module/util/WrapperUtility;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 69
    const/4 v0, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 70
    const/4 v0, 0x4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 71
    const/4 v0, 0x5

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 72
    const/4 v0, 0x6

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 74
    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :goto_0
    const/16 v0, 0x8

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    :goto_1
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallData;->constanceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, ""

    invoke-static {v5, v0}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 87
    :cond_0
    invoke-static {p0, v4}, Lcom/com2us/module/offerwall/OfferwallData;->setDID(Landroid/content/Context;Z)V

    .line 89
    const-string v0, ""

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallData;->setAdditionalInfo(Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Lcom/com2us/module/offerwall/OfferwallData;->setMccMnc(Landroid/app/Activity;)V

    .line 91
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_1

    .line 75
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static get(I)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 50
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallData;->constanceArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallData;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "Error : OfferwallData didn\'t create"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, ""

    .line 62
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    .line 58
    invoke-static {}, Lcom/com2us/module/offerwall/OfferwallData;->getVID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallData;->constanceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static getVID()Ljava/lang/String;
    .locals 7

    .prologue
    .line 167
    const-string v4, "-703"

    .line 170
    .local v4, "vid":Ljava/lang/String;
    :try_start_0
    const-string v5, "com.com2us.module.C2SModule"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 171
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getVID"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 172
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

    .line 177
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 173
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static setAdditionalInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "addtionalInfo"    # Ljava/lang/String;

    .prologue
    .line 182
    const/16 v0, 0x10

    invoke-static {v0, p0}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 183
    return-void
.end method

.method public static setAppID(Ljava/lang/String;)V
    .locals 1
    .param p0, "appid"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 123
    return-void
.end method

.method public static setAssetAmount(Ljava/lang/String;)V
    .locals 1
    .param p0, "assetAmount"    # Ljava/lang/String;

    .prologue
    .line 143
    const/16 v0, 0xe

    invoke-static {v0, p0}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 144
    return-void
.end method

.method public static setAssetCode(Ljava/lang/String;)V
    .locals 1
    .param p0, "assetCode"    # Ljava/lang/String;

    .prologue
    .line 138
    const/16 v0, 0xd

    invoke-static {v0, p0}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method public static setAwardResult(Ljava/lang/String;)V
    .locals 1
    .param p0, "awardResult"    # Ljava/lang/String;

    .prologue
    .line 148
    const/16 v0, 0xf

    invoke-static {v0, p0}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 149
    return-void
.end method

.method public static setDID(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isUseTestServer"    # Z

    .prologue
    .line 154
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/offerwall/OfferwallData$1;

    invoke-direct {v1, p0}, Lcom/com2us/module/offerwall/OfferwallData$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method

.method public static setEventID(Ljava/lang/String;)V
    .locals 1
    .param p0, "eventID"    # Ljava/lang/String;

    .prologue
    .line 133
    const/16 v0, 0xc

    invoke-static {v0, p0}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 134
    return-void
.end method

.method public static setMccMnc(Landroid/app/Activity;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 190
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "networkOperator":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 194
    :cond_0
    const/4 v1, 0x0

    .line 195
    .local v1, "mcc":I
    const/4 v2, 0x0

    .line 197
    .local v2, "mnc":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 199
    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 200
    sget-object v5, Lcom/com2us/module/offerwall/OfferwallData;->logger:Lcom/com2us/module/util/Logger;

    const-string v6, "Offerwall"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mcc = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 203
    sget-object v5, Lcom/com2us/module/offerwall/OfferwallData;->logger:Lcom/com2us/module/util/Logger;

    const-string v6, "Offerwall"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mnc = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/16 v5, 0x11

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 206
    const/16 v5, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/com2us/module/offerwall/OfferwallData;->logger:Lcom/com2us/module/util/Logger;

    const-string v6, "Offerwall"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mcc | mnc parse exception : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x0

    .line 210
    const/4 v2, 0x0

    .line 212
    goto :goto_0

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "Offerwall"

    const-string v6, "networkOperator is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setPath(I)V
    .locals 3
    .param p0, "oq_path"    # I

    .prologue
    const/16 v2, 0x13

    .line 219
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallData;->constanceArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 221
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallData;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Offerwall"

    const-string v2, "Error : OfferwallData didn\'t create"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 225
    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallData;->constanceArray:Landroid/util/SparseArray;

    const-string v1, "C2S_OFFERWALL"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 230
    :pswitch_1
    sget-object v0, Lcom/com2us/module/offerwall/OfferwallData;->constanceArray:Landroid/util/SparseArray;

    const-string v1, "C2S_MERCURY"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setUID(Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 127
    const/16 v0, 0x9

    invoke-static {v0, p0}, Lcom/com2us/module/offerwall/OfferwallData;->CheckAndPut(ILjava/lang/String;)V

    .line 128
    return-void
.end method
