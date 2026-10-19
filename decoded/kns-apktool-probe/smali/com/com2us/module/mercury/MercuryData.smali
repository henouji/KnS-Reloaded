.class public Lcom/com2us/module/mercury/MercuryData;
.super Ljava/lang/Object;
.source "MercuryData.java"


# static fields
.field public static final ACTION:I = 0xf

.field public static final ADDITIONAL_INFO:I = 0x12

.field public static final APP_ID:I = 0x1

.field public static final APP_VERSION:I = 0x7

.field public static final APP_VERSIONCODE:I = 0x8

.field public static final COUNTRY:I = 0x4

.field public static final DEVICE_MODEL:I = 0x5

.field public static final DID:I = 0xc

.field public static final HEIGHT:I = 0xe

.field public static final LANGUAGE:I = 0x3

.field public static final MAC_ADDRESS:I = 0x2

.field public static final MCC:I = 0x13

.field public static final MNC:I = 0x14

.field public static final ORIENTATION:I = 0x9

.field public static final OS_VERSION:I = 0x6

.field public static final TYPE:I = 0xb

.field public static final UIDCHECKMSG:I = 0x10

.field public static final USERID:I = 0xa

.field public static final VID:I = 0x11

.field public static final WIDTH:I = 0xd

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static create(Landroid/app/Activity;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xe

    const/16 v7, 0xd

    .line 58
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-static {p0}, Lcom/com2us/module/util/WrapperUtility;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/4 v3, 0x4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/4 v3, 0x5

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/4 v3, 0x6

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    invoke-static {p0}, Lcom/com2us/module/mercury/MercuryData;->setMccMnc(Landroid/app/Activity;)V

    .line 69
    :try_start_0
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/4 v3, 0x7

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :goto_0
    :try_start_1
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/16 v3, 0x8

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :goto_1
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/16 v3, 0x9

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const-string v3, ""

    invoke-virtual {v2, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    :cond_0
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/16 v3, 0xb

    const-string v4, "notice"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 85
    .local v0, "screenSizeA":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 87
    .local v1, "screenSizeB":I
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 99
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v10, :cond_7

    .line 100
    sget-object v3, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    if-ge v0, v1, :cond_5

    move v2, v0

    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    if-ge v0, v1, :cond_6

    .end local v1    # "screenSizeB":I
    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    :goto_4
    invoke-static {p0, v9}, Lcom/com2us/module/mercury/MercuryData;->setDID(Landroid/content/Context;Z)V

    .line 110
    return-void

    .line 90
    .restart local v1    # "screenSizeB":I
    :pswitch_1
    sget-object v3, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    if-ge v0, v1, :cond_1

    move v2, v0

    :goto_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    if-ge v0, v1, :cond_2

    .end local v1    # "screenSizeB":I
    :goto_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .restart local v1    # "screenSizeB":I
    :cond_1
    move v2, v1

    .line 90
    goto :goto_5

    :cond_2
    move v1, v0

    .line 91
    goto :goto_6

    .line 95
    :pswitch_2
    sget-object v3, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    if-le v0, v1, :cond_3

    move v2, v0

    :goto_7
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    if-le v0, v1, :cond_4

    .end local v1    # "screenSizeB":I
    :goto_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .restart local v1    # "screenSizeB":I
    :cond_3
    move v2, v1

    .line 95
    goto :goto_7

    :cond_4
    move v1, v0

    .line 96
    goto :goto_8

    :cond_5
    move v2, v1

    .line 100
    goto :goto_2

    :cond_6
    move v1, v0

    .line 101
    goto :goto_3

    .line 103
    :cond_7
    sget-object v3, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    if-le v0, v1, :cond_8

    move v2, v0

    :goto_9
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-object v2, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    if-le v0, v1, :cond_9

    .end local v1    # "screenSizeB":I
    :goto_a
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .restart local v1    # "screenSizeB":I
    :cond_8
    move v2, v1

    .line 103
    goto :goto_9

    :cond_9
    move v1, v0

    .line 104
    goto :goto_a

    .line 74
    .end local v0    # "screenSizeA":I
    .end local v1    # "screenSizeB":I
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 70
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static get(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 46
    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    .line 48
    invoke-static {}, Lcom/com2us/module/mercury/MercuryData;->getVID()Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDialogBorderText(I)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 265
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "country":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "language":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 369
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 270
    :pswitch_0
    const-string v2, "ko"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const-string v2, "\uc624\ub298 \ud558\ub8e8 \ub2e4\uc2dc \ubcf4\uc9c0 \uc54a\uae30"

    goto :goto_0

    .line 273
    :cond_0
    const-string v2, "fr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    const-string v2, "Ne plus montrer aujourd\'hui"

    goto :goto_0

    .line 276
    :cond_1
    const-string v2, "de"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    const-string v2, "Heute nicht erneut anzeigen"

    goto :goto_0

    .line 279
    :cond_2
    const-string v2, "ja"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    const-string v2, "\u3053\u308c\u4ee5\u4e0a\u8868\u793a\u3057\u306a\u3044"

    goto :goto_0

    .line 282
    :cond_3
    const-string v2, "tw"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    const-string v2, "\u4eca\u5929\u4e0d\u518d\u63d0\u793a"

    goto :goto_0

    .line 285
    :cond_4
    const-string v2, "zh"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 286
    const-string v2, "\u4eca\u5929\u4e0d\u518d\u63d0\u793a"

    goto :goto_0

    .line 288
    :cond_5
    const-string v2, "ru"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    const-string v2, "\u0421\u0435\u0433\u043e\u0434\u043d\u044f \u0431\u043e\u043b\u044c\u0448\u0435 \u043d\u0435 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c"

    goto :goto_0

    .line 291
    :cond_6
    const-string v2, "es"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 292
    const-string v2, "No Volver a Mostrar Hoy"

    goto :goto_0

    .line 294
    :cond_7
    const-string v2, "pt"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 295
    const-string v2, "N\u00e3o mostre mais hoje"

    goto :goto_0

    .line 297
    :cond_8
    const-string v2, "in"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 298
    const-string v2, "Jangan Munculkan Lagi Hari Ini"

    goto :goto_0

    .line 300
    :cond_9
    const-string v2, "ms"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 301
    const-string v2, "Jangan Tunjukkan Lagi Pada Hari Ini"

    goto :goto_0

    .line 303
    :cond_a
    const-string v2, "vi"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 304
    const-string v2, "Kh\u00f4ng Hi\u1ec3n Th\u1ecb L\u1ea1i H\u00f4m Nay"

    goto/16 :goto_0

    .line 306
    :cond_b
    const-string v2, "th"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 307
    const-string v2, "\u0e44\u0e21\u0e48\u0e41\u0e2a\u0e14\u0e07\u0e2d\u0e35\u0e01\u0e43\u0e19\u0e27\u0e31\u0e19\u0e19\u0e35\u0e49"

    goto/16 :goto_0

    .line 309
    :cond_c
    const-string v2, "it"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 310
    const-string v2, "Non mostrare pi\u00f9 oggi"

    goto/16 :goto_0

    .line 312
    :cond_d
    const-string v2, "tr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 313
    const-string v2, "Bunu bug\u00fcn tekrar g\u00f6sterme"

    goto/16 :goto_0

    .line 316
    :cond_e
    const-string v2, "Don\'t show this again today"

    goto/16 :goto_0

    .line 320
    :pswitch_1
    const-string v2, "ko"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 321
    const-string v2, "\ub2eb\uae30"

    goto/16 :goto_0

    .line 323
    :cond_f
    const-string v2, "fr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 324
    const-string v2, "Fermer"

    goto/16 :goto_0

    .line 326
    :cond_10
    const-string v2, "de"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 327
    const-string v2, "Schlie\u00dfen"

    goto/16 :goto_0

    .line 329
    :cond_11
    const-string v2, "ja"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 330
    const-string v2, "\u9589\u3058\u308b"

    goto/16 :goto_0

    .line 332
    :cond_12
    const-string v2, "tw"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 333
    const-string v2, "\u95dc\u9589"

    goto/16 :goto_0

    .line 335
    :cond_13
    const-string v2, "zh"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 336
    const-string v2, "\u5173\u95ed"

    goto/16 :goto_0

    .line 338
    :cond_14
    const-string v2, "ru"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 339
    const-string v2, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c"

    goto/16 :goto_0

    .line 341
    :cond_15
    const-string v2, "es"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 342
    const-string v2, "Cerrar"

    goto/16 :goto_0

    .line 344
    :cond_16
    const-string v2, "pt"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 345
    const-string v2, "Fechar"

    goto/16 :goto_0

    .line 347
    :cond_17
    const-string v2, "in"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 348
    const-string v2, "Tutup"

    goto/16 :goto_0

    .line 350
    :cond_18
    const-string v2, "ms"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 351
    const-string v2, "Tutup"

    goto/16 :goto_0

    .line 353
    :cond_19
    const-string v2, "vi"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 354
    const-string v2, "\u0110\u00f3ng"

    goto/16 :goto_0

    .line 356
    :cond_1a
    const-string v2, "th"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 357
    const-string v2, "\u0e1b\u0e34\u0e14"

    goto/16 :goto_0

    .line 359
    :cond_1b
    const-string v2, "it"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 360
    const-string v2, "Chiudi"

    goto/16 :goto_0

    .line 362
    :cond_1c
    const-string v2, "tr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 363
    const-string v2, "Kapat"

    goto/16 :goto_0

    .line 366
    :cond_1d
    const-string v2, "Close"

    goto/16 :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getProgressDialogText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "country":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "language":Ljava/lang/String;
    const-string v2, "ko"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const-string v2, "\uc7a0\uc2dc\ub9cc \uae30\ub2e4\ub824 \uc8fc\uc138\uc694."

    .line 257
    :goto_0
    return-object v2

    .line 214
    :cond_0
    const-string v2, "fr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    const-string v2, "Chargement."

    goto :goto_0

    .line 217
    :cond_1
    const-string v2, "de"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    const-string v2, "Bitte warten."

    goto :goto_0

    .line 220
    :cond_2
    const-string v2, "ja"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    const-string v2, "\u3057\u3070\u3089\u304f\u304a\u5f85\u3061\u304f\u3060\u3055\u3044\u3002"

    goto :goto_0

    .line 223
    :cond_3
    const-string v2, "tw"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    const-string v2, "\u8acb\u7a0d\u7b49\u3002"

    goto :goto_0

    .line 226
    :cond_4
    const-string v2, "zh"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 227
    const-string v2, "\u8bf7\u7a0d\u7b49\u3002"

    goto :goto_0

    .line 229
    :cond_5
    const-string v2, "ru"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 230
    const-string v2, "\u041f\u043e\u0434\u043e\u0436\u0434\u0438\u0442\u0435."

    goto :goto_0

    .line 232
    :cond_6
    const-string v2, "es"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 233
    const-string v2, "Por favor, espere."

    goto :goto_0

    .line 235
    :cond_7
    const-string v2, "pt"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 236
    const-string v2, "Por favor, aguarde."

    goto :goto_0

    .line 238
    :cond_8
    const-string v2, "in"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 239
    const-string v2, "Harap tunggu."

    goto :goto_0

    .line 241
    :cond_9
    const-string v2, "ms"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 242
    const-string v2, "Sila tunggu."

    goto :goto_0

    .line 244
    :cond_a
    const-string v2, "vi"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 245
    const-string v2, "Vui l\u00f2ng ch\u1edd."

    goto :goto_0

    .line 247
    :cond_b
    const-string v2, "th"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 248
    const-string v2, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e23\u0e2d."

    goto/16 :goto_0

    .line 250
    :cond_c
    const-string v2, "it"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 251
    const-string v2, "Attendere prego."

    goto/16 :goto_0

    .line 253
    :cond_d
    const-string v2, "tr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 254
    const-string v2, "L\u00fctfen bekle."

    goto/16 :goto_0

    .line 257
    :cond_e
    const-string v2, "Please wait."

    goto/16 :goto_0
.end method

.method private static getVID()Ljava/lang/String;
    .locals 7

    .prologue
    .line 124
    const-string v4, "-703"

    .line 128
    .local v4, "vid":Ljava/lang/String;
    :try_start_0
    const-string v5, "com.com2us.module.C2SModule"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 129
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getVID"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 130
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

    .line 137
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 132
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static setAction(Ljava/lang/String;)V
    .locals 2
    .param p0, "act"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v0, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    return-void
.end method

.method public static setAdditionalInfo(Ljava/lang/String;)V
    .locals 2
    .param p0, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-object v0, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    return-void
.end method

.method public static setAppID(Ljava/lang/String;)V
    .locals 2
    .param p0, "appid"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v0, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public static setDID(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isUseTestServer"    # Z

    .prologue
    .line 148
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/module/mercury/MercuryData$1;

    invoke-direct {v1, p0}, Lcom/com2us/module/mercury/MercuryData$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    return-void
.end method

.method public static setMccMnc(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 179
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "networkOperator":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 183
    :cond_0
    const/4 v1, 0x0

    .line 184
    .local v1, "mcc":I
    const/4 v2, 0x0

    .line 186
    .local v2, "mnc":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 188
    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 189
    const-string v5, "Mercury"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mcc = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 192
    const-string v5, "Mercury"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " mnc = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v5, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/16 v6, 0x13

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    sget-object v5, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/16 v6, 0x14

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Mercury"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mcc | mnc parse exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v1, 0x0

    .line 199
    const/4 v2, 0x0

    .line 201
    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "Mercury"

    const-string v6, "networkOperator is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setType(Ljava/lang/String;)V
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 143
    sget-object v0, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    return-void
.end method

.method public static setUID(Ljava/lang/String;)V
    .locals 2
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-object v0, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public static setUidCheckMSG(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v0, Lcom/com2us/module/mercury/MercuryData;->constanceArray:Landroid/util/SparseArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    return-void
.end method
