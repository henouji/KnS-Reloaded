.class public interface abstract Lcom/com2us/module/activeuser/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/activeuser/Constants$Network;
    }
.end annotation


# static fields
.field public static final PERMISSION:[Ljava/lang/String;

.field public static final REVISION:I = 0x1

.field public static final STATUS:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ActiveUser"

.field public static final VERSION_BUILD:I = 0x0

.field public static final VERSION_MAJOR:I = 0x2

.field public static final VERSION_MINOR:I = 0x4

.field public static final Version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/com2us/module/activeuser/Constants;->STATUS:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/com2us/module/util/VersionEx;

    .line 25
    sget-object v4, Lcom/com2us/module/activeuser/Constants;->STATUS:Ljava/lang/String;

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/com2us/module/util/VersionEx;-><init>(IIILjava/lang/String;I)V

    .line 25
    invoke-virtual {v0}, Lcom/com2us/module/util/VersionEx;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    sput-object v0, Lcom/com2us/module/activeuser/Constants;->Version:Ljava/lang/String;

    .line 30
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v3

    .line 31
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v5

    .line 32
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 33
    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lcom/com2us/module/activeuser/Constants;->PERMISSION:[Ljava/lang/String;

    .line 34
    return-void
.end method
