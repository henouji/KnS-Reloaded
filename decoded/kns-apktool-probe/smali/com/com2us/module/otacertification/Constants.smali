.class public interface abstract Lcom/com2us/module/otacertification/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final PERMISSION:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "OTACertification"

.field public static final VERSION_BUILD:I = 0x0

.field public static final VERSION_MAJOR:I = 0x1

.field public static final VERSION_MINOR:I

.field public static final Version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/com2us/module/util/Version;

    invoke-direct {v0, v1, v2, v2}, Lcom/com2us/module/util/Version;-><init>(III)V

    .line 15
    invoke-virtual {v0}, Lcom/com2us/module/util/Version;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/com2us/module/otacertification/Constants;->Version:Ljava/lang/String;

    .line 17
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.INTERNET"

    aput-object v1, v0, v2

    sput-object v0, Lcom/com2us/module/otacertification/Constants;->PERMISSION:[Ljava/lang/String;

    .line 7
    return-void
.end method
