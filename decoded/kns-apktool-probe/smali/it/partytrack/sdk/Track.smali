.class public Lit/partytrack/sdk/Track;
.super Ljava/lang/Object;


# static fields
.field public static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final UUID:Ljava/lang/String; = "uuid"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableAdvertisementOptimize()V
    .locals 3

    sget-object v0, Lit/partytrack/sdk/compress/d;->b:Ljava/util/Map;

    const-string v1, "application_tracking_enabled"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static event(I)V
    .locals 1

    new-instance v0, Lit/partytrack/sdk/compress/k;

    invoke-direct {v0, p0}, Lit/partytrack/sdk/compress/k;-><init>(I)V

    invoke-virtual {v0}, Lit/partytrack/sdk/compress/k;->start()V

    return-void
.end method

.method public static event(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lit/partytrack/sdk/compress/k;

    invoke-direct {v0, p0}, Lit/partytrack/sdk/compress/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lit/partytrack/sdk/compress/k;->start()V

    return-void
.end method

.method public static payment(Ljava/lang/String;FLjava/lang/String;I)V
    .locals 2

    new-instance v0, Lit/partytrack/sdk/compress/k;

    new-instance v1, Lit/partytrack/sdk/compress/j;

    invoke-direct {v1, p0, p1, p2, p3}, Lit/partytrack/sdk/compress/j;-><init>(Ljava/lang/String;FLjava/lang/String;I)V

    invoke-direct {v0, v1}, Lit/partytrack/sdk/compress/k;-><init>(Lit/partytrack/sdk/compress/j;)V

    invoke-virtual {v0}, Lit/partytrack/sdk/compress/k;->start()V

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lit/partytrack/sdk/compress/d;->b:Z

    return-void
.end method

.method public static setOptionalparam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lit/partytrack/sdk/compress/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static start(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    sput p1, Lit/partytrack/sdk/compress/d;->a:I

    sput-object p2, Lit/partytrack/sdk/compress/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lit/partytrack/sdk/compress/d;->a:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-float v0, v0

    sput v0, Lit/partytrack/sdk/compress/d;->a:F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lit/partytrack/sdk/compress/k;

    invoke-direct {v0}, Lit/partytrack/sdk/compress/k;-><init>()V

    invoke-virtual {v0}, Lit/partytrack/sdk/compress/k;->start()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
