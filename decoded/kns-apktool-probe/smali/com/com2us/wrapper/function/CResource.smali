.class public Lcom/com2us/wrapper/function/CResource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/function/CResource$1;,
        Lcom/com2us/wrapper/function/CResource$EResourcePathType;
    }
.end annotation


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Landroid/content/res/AssetManager;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/wrapper/function/CResource;->a:Landroid/app/Activity;

    sput-object v0, Lcom/com2us/wrapper/function/CResource;->b:Landroid/content/res/AssetManager;

    sput-object v0, Lcom/com2us/wrapper/function/CResource;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/com2us/wrapper/function/CResource;->d:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/com2us/wrapper/function/CResource;->e:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static R(Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x0

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p0, v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/com2us/wrapper/function/CResource;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static assetOpenFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/com2us/wrapper/function/CResource;->b:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static closeFileDescriptor(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/com2us/wrapper/function/CResource;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeFileDescriptorAll()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/com2us/wrapper/function/CResource;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/com2us/wrapper/function/CResource;->e:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/com2us/wrapper/function/CResource;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getFileDescriptorFromAsset(Ljava/lang/String;[I)Ljava/io/FileDescriptor;
    .locals 6

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/com2us/wrapper/function/CResource;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    if-nez v0, :cond_0

    sget-object v0, Lcom/com2us/wrapper/function/CResource$EResourcePathType;->ASSETS:Lcom/com2us/wrapper/function/CResource$EResourcePathType;

    invoke-static {p0, v0}, Lcom/com2us/wrapper/function/CResource;->getFullPathName(Ljava/lang/String;Lcom/com2us/wrapper/function/CResource$EResourcePathType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/wrapper/function/CResource;->assetOpenFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    sget-object v4, Lcom/com2us/wrapper/function/CResource;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    long-to-int v4, v4

    aput v4, p1, v1

    const/4 v1, 0x1

    long-to-int v2, v2

    aput v2, p1, v1

    return-object v0

    :cond_1
    move-object v0, v1

    move-wide v4, v2

    goto :goto_0
.end method

.method public static getFilePath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/com2us/wrapper/function/CResource;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullPathName(Ljava/lang/String;Lcom/com2us/wrapper/function/CResource$EResourcePathType;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/com2us/wrapper/function/CResource$1;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/function/CResource$EResourcePathType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperData;->getInstance()Lcom/com2us/wrapper/kernel/CWrapperData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/com2us/wrapper/kernel/CWrapperData;->getAssetFileNameAppended()Ljava/lang/String;

    move-result-object v5

    move v2, v0

    move-object v3, v1

    move-object v0, v1

    :goto_1
    sget-object v4, Lcom/com2us/wrapper/function/CResource;->d:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/com2us/wrapper/function/CResource;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    sget-object v0, Lcom/com2us/wrapper/function/CResource;->b:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    :cond_1
    move-object v3, v0

    :goto_2
    if-eqz v4, :cond_4

    :goto_3
    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v3, v0

    goto :goto_2

    :catch_1
    move-exception v0

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v1

    :cond_2
    move-object v4, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v4, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_4
    throw v0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v4

    goto :goto_1

    :pswitch_1
    move v2, v0

    :goto_5
    sget-object v0, Lcom/com2us/wrapper/function/CResource;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/com2us/wrapper/function/CResource;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/com2us/wrapper/function/CResource;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    :goto_6
    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/Android/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/files/SND/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    move-object v1, v4

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :cond_7
    move-object v4, v1

    goto :goto_6

    :cond_8
    move-object v4, v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static initialize(Landroid/app/Activity;)V
    .locals 6

    sput-object p0, Lcom/com2us/wrapper/function/CResource;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lcom/com2us/wrapper/function/CResource;->b:Landroid/content/res/AssetManager;

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getSystemVersionCode()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/com2us/wrapper/function/CResource;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Resources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/com2us/wrapper/function/CResource;->c:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getInitialLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getInitialCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game_res"

    sget-object v3, Lcom/com2us/wrapper/function/CResource;->d:Ljava/util/LinkedList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    sget-object v1, Lcom/com2us/wrapper/function/CResource;->d:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    sget-object v0, Lcom/com2us/wrapper/function/CResource;->d:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "common/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/Resources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/com2us/wrapper/function/CResource;->c:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static uninitialize()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {}, Lcom/com2us/wrapper/function/CResource;->closeFileDescriptorAll()V

    sput-object v0, Lcom/com2us/wrapper/function/CResource;->a:Landroid/app/Activity;

    sput-object v0, Lcom/com2us/wrapper/function/CResource;->b:Landroid/content/res/AssetManager;

    sget-object v0, Lcom/com2us/wrapper/function/CResource;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method
