.class public final enum Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;
.super Ljava/lang/Enum;
.source "JAVA_Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NET_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_ADDITION_DOWNLOADING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_CONNECTED:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_CONNECTING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_CONNECT_FAIL:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_CONNECT_INIT:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_DISCONNECTED:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_DISCONNECTING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_ERROR:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_FILE_DOWNLOADING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_HUB_AUTH:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_INAPP_FINISH:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_INAPP_PROCESS:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_NOTIFY:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_NOT_CONNECT:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_READY:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_RECEIVE:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_RECEIVING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_SENDING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

.field public static final enum NET_STATE_UNPACKAGE_DOWNLOAD:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;


# instance fields
.field private final order:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 220
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_NOT_CONNECT"

    invoke-direct {v0, v1, v4, v4}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_NOT_CONNECT:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 221
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_CONNECTING"

    invoke-direct {v0, v1, v5, v5}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_CONNECTING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 222
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_CONNECT_INIT"

    invoke-direct {v0, v1, v6, v6}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_CONNECT_INIT:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 223
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_CONNECTED"

    invoke-direct {v0, v1, v7, v7}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_CONNECTED:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 224
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_CONNECT_FAIL"

    invoke-direct {v0, v1, v8, v8}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_CONNECT_FAIL:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 226
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_READY"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_READY:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 227
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_SENDING"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_SENDING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 228
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_RECEIVING"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_RECEIVING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 229
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_RECEIVE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_RECEIVE:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 230
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_HUB_AUTH"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_HUB_AUTH:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 232
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_DISCONNECTING"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_DISCONNECTING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 233
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_DISCONNECTED"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_DISCONNECTED:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 234
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_NOTIFY"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_NOTIFY:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 235
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_FILE_DOWNLOADING"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_FILE_DOWNLOADING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 236
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_INAPP_PROCESS"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_INAPP_PROCESS:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 238
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_INAPP_FINISH"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_INAPP_FINISH:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 239
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_ADDITION_DOWNLOADING"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_ADDITION_DOWNLOADING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 240
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_UNPACKAGE_DOWNLOAD"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_UNPACKAGE_DOWNLOAD:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 242
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    const-string v1, "NET_STATE_ERROR"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_ERROR:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    .line 218
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_NOT_CONNECT:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_CONNECTING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_CONNECT_INIT:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_CONNECTED:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_CONNECT_FAIL:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_READY:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_SENDING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_RECEIVING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_RECEIVE:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_HUB_AUTH:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_DISCONNECTING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_DISCONNECTED:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_NOTIFY:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_FILE_DOWNLOADING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_INAPP_PROCESS:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_INAPP_FINISH:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_ADDITION_DOWNLOADING:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_UNPACKAGE_DOWNLOAD:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->NET_STATE_ERROR:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->ENUM$VALUES:[Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "order"    # I

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 247
    iput p3, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->order:I

    .line 248
    return-void
.end method

.method public static getState(I)Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;
    .locals 5
    .param p0, "state"    # I

    .prologue
    .line 255
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->values()[Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 260
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 255
    :cond_1
    aget-object v0, v2, v1

    .line 256
    .local v0, "order":Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;
    invoke-virtual {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->getOrder()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    return-object v0
.end method

.method public static values()[Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->ENUM$VALUES:[Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    array-length v1, v0

    new-array v2, v1, [Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network$NET_STATE;->order:I

    return v0
.end method
