.class public Lcom/com2us/wrapper/utility/CUtility;
.super Lcom/com2us/wrapper/kernel/CWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/utility/CUtility$a;
    }
.end annotation


# static fields
.field private static f:Z


# instance fields
.field private a:Z

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/SharedPreferences;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/wrapper/utility/CUtility;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/wrapper/utility/CUtility;->a:Z

    iput-object v1, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    iput-object v1, p0, Lcom/com2us/wrapper/utility/CUtility;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->e:Ljava/util/HashMap;

    const/16 v0, 0x78

    iput v0, p0, Lcom/com2us/wrapper/utility/CUtility;->g:I

    const/16 v0, 0xa0

    iput v0, p0, Lcom/com2us/wrapper/utility/CUtility;->h:I

    const/16 v0, 0xd5

    iput v0, p0, Lcom/com2us/wrapper/utility/CUtility;->i:I

    const/16 v0, 0xf0

    iput v0, p0, Lcom/com2us/wrapper/utility/CUtility;->j:I

    const/16 v0, 0x140

    iput v0, p0, Lcom/com2us/wrapper/utility/CUtility;->k:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/com2us/wrapper/utility/CUtility;->l:I

    iput-object p1, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/com2us/wrapper/utility/CUtility;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/com2us/wrapper/utility/CUtility;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "APv3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const-string v0, "APv2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/com2us/wrapper/utility/CUtility;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a([B)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    const-string v2, "AppProperty"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/com2us/wrapper/utility/CUtility;->f:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/com2us/wrapper/utility/CUtility;->f:Z

    return p0
.end method

.method private b()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    const-string v1, "AppProperty"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/com2us/wrapper/utility/CUtility;->a(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :try_start_0
    iget-object v3, p0, Lcom/com2us/wrapper/utility/CUtility;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/com2us/wrapper/utility/CUtility;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/com2us/wrapper/utility/CUtility;->a([B)V

    invoke-virtual {p0, v1, v0}, Lcom/com2us/wrapper/utility/CUtility;->setAppProperty([B[B)V

    iget-object v3, p0, Lcom/com2us/wrapper/utility/CUtility;->e:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/com2us/wrapper/utility/CUtility;->c:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    :try_start_1
    const-string v3, "AES"

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "APv3"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/wrapper/common/CCommonAPI;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/com2us/wrapper/common/CCommonAPI;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    const-string v3, "AES"

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/com2us/wrapper/common/CCommonAPI;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/com2us/wrapper/common/CCommonAPI;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    iget-object v3, p0, Lcom/com2us/wrapper/utility/CUtility;->e:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/com2us/wrapper/utility/CUtility;->c:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_2
    const-string v3, "AES"

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "APv2"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/wrapper/common/CCommonAPI;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/com2us/wrapper/common/CCommonAPI;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    const-string v3, "AES"

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/wrapper/common/CCommonAPI;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/com2us/wrapper/common/CCommonAPI;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/com2us/wrapper/utility/CUtility;->b([B)V

    invoke-virtual {p0, v1, v0}, Lcom/com2us/wrapper/utility/CUtility;->setAppProperty([B[B)V

    iget-object v3, p0, Lcom/com2us/wrapper/utility/CUtility;->e:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/com2us/wrapper/utility/CUtility;->c:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b([B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->e:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/com2us/wrapper/utility/CUtility;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APv2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AES"

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/com2us/wrapper/common/CCommonAPI;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/wrapper/common/CCommonAPI;->encodeBase64toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    const-string v2, "AppProperty"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static native nativeWebviewCB(I)V
.end method


# virtual methods
.method public Shortcut(ILjava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x30

    const/4 v2, -0x1

    const/4 v9, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    const-string v5, "WrapperShortCreate"

    invoke-virtual {v0, v5, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->d:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->d:Landroid/content/SharedPreferences;

    const-string v5, "WrapperShortCreate"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "WrapperShortCreate"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v0, "com.android.launcher.permission.INSTALL_SHORTCUT"

    iget-object v5, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    const-string v0, "com.android.launcher.permission.UNINSTALL_SHORTCUT"

    iget-object v5, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    const-string v1, "WrapperShortCreate"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->d:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->d:Landroid/content/SharedPreferences;

    const-string v1, "WrapperShortCreate"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-nez v0, :cond_5

    const-string v0, "WrapperShortCreate"

    invoke-interface {v1, v0, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v9, p2}, Lcom/com2us/wrapper/utility/CUtility;->Shortcut(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v3, p2}, Lcom/com2us/wrapper/utility/CUtility;->Shortcut(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v3, p2}, Lcom/com2us/wrapper/utility/CUtility;->Shortcut(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    iget-object v6, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x4

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v6, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getSystemVersionCode()I

    move-result v6

    const/16 v7, 0xb

    if-lt v6, v7, :cond_8

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    :goto_3
    :sswitch_0
    sget-object v6, Lcom/com2us/wrapper/function/CResource$EResourcePathType;->ASSETS:Lcom/com2us/wrapper/function/CResource$EResourcePathType;

    invoke-static {p2, v6}, Lcom/com2us/wrapper/function/CResource;->getFullPathName(Ljava/lang/String;Lcom/com2us/wrapper/function/CResource$EResourcePathType;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v2, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sget-object v6, Lcom/com2us/wrapper/function/CResource$EResourcePathType;->ASSETS:Lcom/com2us/wrapper/function/CResource$EResourcePathType;

    invoke-static {p2, v6}, Lcom/com2us/wrapper/function/CResource;->getFullPathName(Ljava/lang/String;Lcom/com2us/wrapper/function/CResource$EResourcePathType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    :goto_4
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    mul-int/2addr v6, v7

    iget v7, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v8

    mul-int/2addr v7, v8

    iget v8, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v7, v8

    invoke-static {v2, v6, v7, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-static {v6, v1, v1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez p1, :cond_c

    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "duplicate"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_5
    const-string v7, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    const-string v0, "(unknown)"

    goto/16 :goto_2

    :cond_8
    iget v6, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_3

    :sswitch_1
    const/16 v1, 0x24

    goto :goto_3

    :sswitch_2
    const/16 v1, 0x55

    goto/16 :goto_3

    :sswitch_3
    const/16 v1, 0x48

    goto/16 :goto_3

    :sswitch_4
    const/16 v1, 0x60

    goto/16 :goto_3

    :sswitch_5
    const/16 v1, 0x90

    goto/16 :goto_3

    :cond_9
    sget-object v6, Lcom/com2us/wrapper/function/CResource$EResourcePathType;->SDCARD:Lcom/com2us/wrapper/function/CResource$EResourcePathType;

    invoke-static {p2, v6}, Lcom/com2us/wrapper/function/CResource;->getFullPathName(Ljava/lang/String;Lcom/com2us/wrapper/function/CResource$EResourcePathType;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v2, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sget-object v6, Lcom/com2us/wrapper/function/CResource$EResourcePathType;->SDCARD:Lcom/com2us/wrapper/function/CResource$EResourcePathType;

    invoke-static {p2, v6}, Lcom/com2us/wrapper/function/CResource;->getFullPathName(Ljava/lang/String;Lcom/com2us/wrapper/function/CResource$EResourcePathType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto/16 :goto_4

    :cond_a
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WrapperShortCreate"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v2

    goto/16 :goto_0

    :cond_c
    if-ne p1, v9, :cond_d

    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_1
        0xa0 -> :sswitch_0
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public getAppProperty([B)[B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->e:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/com2us/wrapper/utility/CUtility;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeWebView(Ljava/lang/String;II)I
    .locals 2

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/wrapper/utility/CUtility$2;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/com2us/wrapper/utility/CUtility$2;-><init>(Lcom/com2us/wrapper/utility/CUtility;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public removeAppProperty([B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->e:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/com2us/wrapper/utility/CUtility;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APv3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AES"

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/com2us/wrapper/common/CCommonAPI;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/wrapper/common/CCommonAPI;->encodeBase64toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    const-string v2, "AppProperty"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppProperty([B[B)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->e:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/com2us/wrapper/utility/CUtility;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APv3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AES"

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/com2us/wrapper/common/CCommonAPI;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/wrapper/common/CCommonAPI;->encodeBase64toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/com2us/wrapper/common/CCommonAPI;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/wrapper/common/CCommonAPI;->encodeBase64toString([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    const-string v3, "AppProperty"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public showDialogAndExit(I)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/com2us/wrapper/utility/CUtility;->showDialogAndExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "R.string.wrapper_utility_exit_type_hacked_title"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "R.string.wrapper_utility_exit_type_hacked_message"

    invoke-static {v2}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "R.string.wrapper_utility_exit_type_rooted_title"

    invoke-static {v1}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "R.string.wrapper_utility_exit_type_rooted_message"

    invoke-static {v2}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showDialogAndExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/com2us/wrapper/utility/CUtility;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/wrapper/utility/CUtility;->a:Z

    iget-object v0, p0, Lcom/com2us/wrapper/utility/CUtility;->b:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/wrapper/utility/CUtility$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/com2us/wrapper/utility/CUtility$1;-><init>(Lcom/com2us/wrapper/utility/CUtility;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
