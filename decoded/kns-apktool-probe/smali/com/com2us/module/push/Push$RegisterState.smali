.class public final enum Lcom/com2us/module/push/Push$RegisterState;
.super Ljava/lang/Enum;
.source "Push.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/push/Push;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "RegisterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/com2us/module/push/Push$RegisterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/com2us/module/push/Push$RegisterState;

.field public static final enum LOGIN:Lcom/com2us/module/push/Push$RegisterState;

.field public static final enum LOGOUT:Lcom/com2us/module/push/Push$RegisterState;

.field public static final enum REGISTER:Lcom/com2us/module/push/Push$RegisterState;

.field public static final enum SENDER:Lcom/com2us/module/push/Push$RegisterState;

.field public static final enum UNREGISTER:Lcom/com2us/module/push/Push$RegisterState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/com2us/module/push/Push$RegisterState;

    const-string v1, "SENDER"

    invoke-direct {v0, v1, v2}, Lcom/com2us/module/push/Push$RegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/module/push/Push$RegisterState;->SENDER:Lcom/com2us/module/push/Push$RegisterState;

    new-instance v0, Lcom/com2us/module/push/Push$RegisterState;

    const-string v1, "REGISTER"

    invoke-direct {v0, v1, v3}, Lcom/com2us/module/push/Push$RegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/module/push/Push$RegisterState;->REGISTER:Lcom/com2us/module/push/Push$RegisterState;

    new-instance v0, Lcom/com2us/module/push/Push$RegisterState;

    const-string v1, "UNREGISTER"

    invoke-direct {v0, v1, v4}, Lcom/com2us/module/push/Push$RegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/module/push/Push$RegisterState;->UNREGISTER:Lcom/com2us/module/push/Push$RegisterState;

    new-instance v0, Lcom/com2us/module/push/Push$RegisterState;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v5}, Lcom/com2us/module/push/Push$RegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/module/push/Push$RegisterState;->LOGIN:Lcom/com2us/module/push/Push$RegisterState;

    new-instance v0, Lcom/com2us/module/push/Push$RegisterState;

    const-string v1, "LOGOUT"

    invoke-direct {v0, v1, v6}, Lcom/com2us/module/push/Push$RegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/module/push/Push$RegisterState;->LOGOUT:Lcom/com2us/module/push/Push$RegisterState;

    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/com2us/module/push/Push$RegisterState;

    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->SENDER:Lcom/com2us/module/push/Push$RegisterState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->REGISTER:Lcom/com2us/module/push/Push$RegisterState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->UNREGISTER:Lcom/com2us/module/push/Push$RegisterState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->LOGIN:Lcom/com2us/module/push/Push$RegisterState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/com2us/module/push/Push$RegisterState;->LOGOUT:Lcom/com2us/module/push/Push$RegisterState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/com2us/module/push/Push$RegisterState;->ENUM$VALUES:[Lcom/com2us/module/push/Push$RegisterState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/com2us/module/push/Push$RegisterState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/com2us/module/push/Push$RegisterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/push/Push$RegisterState;

    return-object v0
.end method

.method public static values()[Lcom/com2us/module/push/Push$RegisterState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/com2us/module/push/Push$RegisterState;->ENUM$VALUES:[Lcom/com2us/module/push/Push$RegisterState;

    array-length v1, v0

    new-array v2, v1, [Lcom/com2us/module/push/Push$RegisterState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
