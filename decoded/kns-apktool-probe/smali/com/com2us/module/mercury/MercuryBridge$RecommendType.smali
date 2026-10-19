.class final enum Lcom/com2us/module/mercury/MercuryBridge$RecommendType;
.super Ljava/lang/Enum;
.source "MercuryBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/mercury/MercuryBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RecommendType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/com2us/module/mercury/MercuryBridge$RecommendType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

.field public static final enum RECOMMEND_EMAIL:Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

.field public static final enum RECOMMEND_SMS:Lcom/com2us/module/mercury/MercuryBridge$RecommendType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    const-string v1, "RECOMMEND_SMS"

    invoke-direct {v0, v1, v2}, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->RECOMMEND_SMS:Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    new-instance v0, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    const-string v1, "RECOMMEND_EMAIL"

    invoke-direct {v0, v1, v3}, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->RECOMMEND_EMAIL:Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    sget-object v1, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->RECOMMEND_SMS:Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->RECOMMEND_EMAIL:Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->ENUM$VALUES:[Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/com2us/module/mercury/MercuryBridge$RecommendType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    return-object v0
.end method

.method public static values()[Lcom/com2us/module/mercury/MercuryBridge$RecommendType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/com2us/module/mercury/MercuryBridge$RecommendType;->ENUM$VALUES:[Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    array-length v1, v0

    new-array v2, v1, [Lcom/com2us/module/mercury/MercuryBridge$RecommendType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
