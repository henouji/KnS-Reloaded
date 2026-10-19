.class public Lcom/com2us/module/otacertification/OTACertification$ReceivedData;
.super Ljava/lang/Object;
.source "OTACertification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/otacertification/OTACertification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReceivedData"
.end annotation


# instance fields
.field message:Ljava/lang/String;

.field resultCode:Ljava/lang/String;

.field stateCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/com2us/module/otacertification/OTACertification;


# direct methods
.method public constructor <init>(Lcom/com2us/module/otacertification/OTACertification;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->resultCode:Ljava/lang/String;

    .line 77
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->stateCode:Ljava/lang/String;

    .line 78
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/com2us/module/otacertification/OTACertification$ReceivedData;->message:Ljava/lang/String;

    .line 80
    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 82
    const/4 v1, 0x5

    .line 85
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
