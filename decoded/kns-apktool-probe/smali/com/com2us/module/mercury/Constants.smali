.class public interface abstract Lcom/com2us/module/mercury/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final PERMISSION:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "Mercury"

.field public static final VERSION_BUILD:I = 0x5

.field public static final VERSION_MAJOR:I = 0x2

.field public static final VERSION_MINOR:I = 0x5

.field public static final Version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 14
    new-instance v0, Lcom/com2us/module/util/Version;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/com2us/module/util/Version;-><init>(III)V

    .line 15
    invoke-virtual {v0}, Lcom/com2us/module/util/Version;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/com2us/module/mercury/Constants;->Version:Ljava/lang/String;

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    sput-object v0, Lcom/com2us/module/mercury/Constants;->PERMISSION:[Ljava/lang/String;

    return-void
.end method
