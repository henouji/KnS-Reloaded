.class final enum Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;
.super Ljava/lang/Enum;
.source "AgreementUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WebViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AGREEMENT:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

.field public static final enum AGREEMENT_EX:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

.field private static final synthetic ENUM$VALUES:[Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    new-instance v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

    const-string v1, "AGREEMENT"

    invoke-direct {v0, v1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;->AGREEMENT:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

    new-instance v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

    const-string v1, "AGREEMENT_EX"

    invoke-direct {v0, v1, v3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;->AGREEMENT_EX:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

    sget-object v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;->AGREEMENT:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;->AGREEMENT_EX:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;->ENUM$VALUES:[Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

    return-object v0
.end method

.method public static values()[Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;->ENUM$VALUES:[Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

    array-length v1, v0

    new-array v2, v1, [Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
