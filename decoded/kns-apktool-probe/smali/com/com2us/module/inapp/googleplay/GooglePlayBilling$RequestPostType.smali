.class final enum Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;
.super Ljava/lang/Enum;
.source "GooglePlayBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RequestPostType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

.field public static final enum RC_LOG:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

.field public static final enum RC_VERIFY:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    const-string v1, "RC_VERIFY"

    invoke-direct {v0, v1, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->RC_VERIFY:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    new-instance v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    const-string v1, "RC_LOG"

    invoke-direct {v0, v1, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->RC_LOG:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->RC_VERIFY:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->RC_LOG:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->ENUM$VALUES:[Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    return-object v0
.end method

.method public static values()[Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;->ENUM$VALUES:[Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    array-length v1, v0

    new-array v2, v1, [Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$RequestPostType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
