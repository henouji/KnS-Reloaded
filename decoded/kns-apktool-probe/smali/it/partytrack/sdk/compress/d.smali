.class public final Lit/partytrack/sdk/compress/d;
.super Ljava/lang/Object;


# static fields
.field public static a:F

.field public static a:I

.field public static a:Landroid/content/Context;

.field static a:Ljava/lang/Boolean;

.field static a:Ljava/lang/Integer;

.field public static a:Ljava/lang/String;

.field static a:Ljava/util/Map;

.field static a:Z

.field static b:I

.field static b:Ljava/lang/String;

.field public static b:Ljava/util/Map;

.field public static b:Z

.field static c:Ljava/lang/String;

.field static c:Z

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lit/partytrack/sdk/compress/d;->b:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lit/partytrack/sdk/compress/d;->c:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lit/partytrack/sdk/compress/d;->b:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lit/partytrack/sdk/compress/d;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lit/partytrack/sdk/compress/d;->e:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lit/partytrack/sdk/compress/d;->f:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lit/partytrack/sdk/compress/d;->g:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lit/partytrack/sdk/compress/d;->a:Z

    sput-boolean v1, Lit/partytrack/sdk/compress/d;->b:Z

    sput-boolean v1, Lit/partytrack/sdk/compress/d;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lit/partytrack/sdk/compress/d;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lit/partytrack/sdk/compress/d;->b:Ljava/util/Map;

    return-void
.end method
