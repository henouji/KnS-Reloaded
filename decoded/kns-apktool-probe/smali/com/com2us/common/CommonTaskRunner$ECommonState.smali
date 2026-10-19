.class public final enum Lcom/com2us/common/CommonTaskRunner$ECommonState;
.super Ljava/lang/Enum;
.source "CommonTaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/common/CommonTaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECommonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/com2us/common/CommonTaskRunner$ECommonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/com2us/common/CommonTaskRunner$ECommonState;

.field public static final enum IDLE:Lcom/com2us/common/CommonTaskRunner$ECommonState;

.field public static final enum START_COMPLETED:Lcom/com2us/common/CommonTaskRunner$ECommonState;

.field public static final enum START_RUNNING:Lcom/com2us/common/CommonTaskRunner$ECommonState;

.field public static final enum STOP_COMPLETED:Lcom/com2us/common/CommonTaskRunner$ECommonState;

.field public static final enum STOP_RUNNING:Lcom/com2us/common/CommonTaskRunner$ECommonState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/com2us/common/CommonTaskRunner$ECommonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;->IDLE:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    .line 27
    new-instance v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;

    const-string v1, "START_RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/com2us/common/CommonTaskRunner$ECommonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;->START_RUNNING:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    .line 28
    new-instance v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;

    const-string v1, "START_COMPLETED"

    invoke-direct {v0, v1, v4}, Lcom/com2us/common/CommonTaskRunner$ECommonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;->START_COMPLETED:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    .line 29
    new-instance v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;

    const-string v1, "STOP_RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/com2us/common/CommonTaskRunner$ECommonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;->STOP_RUNNING:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    .line 30
    new-instance v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;

    const-string v1, "STOP_COMPLETED"

    invoke-direct {v0, v1, v6}, Lcom/com2us/common/CommonTaskRunner$ECommonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;->STOP_COMPLETED:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/com2us/common/CommonTaskRunner$ECommonState;

    sget-object v1, Lcom/com2us/common/CommonTaskRunner$ECommonState;->IDLE:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/com2us/common/CommonTaskRunner$ECommonState;->START_RUNNING:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/com2us/common/CommonTaskRunner$ECommonState;->START_COMPLETED:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/com2us/common/CommonTaskRunner$ECommonState;->STOP_RUNNING:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/com2us/common/CommonTaskRunner$ECommonState;->STOP_COMPLETED:Lcom/com2us/common/CommonTaskRunner$ECommonState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;->ENUM$VALUES:[Lcom/com2us/common/CommonTaskRunner$ECommonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/com2us/common/CommonTaskRunner$ECommonState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;

    return-object v0
.end method

.method public static values()[Lcom/com2us/common/CommonTaskRunner$ECommonState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/com2us/common/CommonTaskRunner$ECommonState;->ENUM$VALUES:[Lcom/com2us/common/CommonTaskRunner$ECommonState;

    array-length v1, v0

    new-array v2, v1, [Lcom/com2us/common/CommonTaskRunner$ECommonState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
