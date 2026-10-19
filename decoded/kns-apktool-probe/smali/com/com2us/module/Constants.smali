.class public interface abstract Lcom/com2us/module/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final REVISION:I = 0x0

.field public static final STATUS:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ModuleManager"

.field public static final VERSION_BUILD:I = 0x9

.field public static final VERSION_MAJOR:I = 0x1

.field public static final VERSION_MINOR:I = 0x9

.field public static final Version:Ljava/lang/String;

.field public static final supportedActiveUserVersion:Lcom/com2us/module/util/Version;

.field public static final supportedNewsBanner2Version:Lcom/com2us/module/util/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/module/Constants;->STATUS:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/com2us/module/util/VersionEx;

    sget-object v4, Lcom/com2us/module/Constants;->STATUS:Ljava/lang/String;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/com2us/module/util/VersionEx;-><init>(IIILjava/lang/String;I)V

    invoke-virtual {v0}, Lcom/com2us/module/util/VersionEx;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/com2us/module/Constants;->Version:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/com2us/module/util/Version;

    invoke-direct {v0, v1, v5, v5}, Lcom/com2us/module/util/Version;-><init>(III)V

    sput-object v0, Lcom/com2us/module/Constants;->supportedActiveUserVersion:Lcom/com2us/module/util/Version;

    .line 45
    new-instance v0, Lcom/com2us/module/util/Version;

    invoke-direct {v0, v1, v5, v5}, Lcom/com2us/module/util/Version;-><init>(III)V

    sput-object v0, Lcom/com2us/module/Constants;->supportedNewsBanner2Version:Lcom/com2us/module/util/Version;

    return-void
.end method
