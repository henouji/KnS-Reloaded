.class public Lcom/com2us/module/activeuser/useragree/TermsManager;
.super Ljava/lang/Object;
.source "TermsManager.java"


# static fields
.field public static final TERMS_BUTTON_MESSAGE_NEGATIVE_IDX:I = 0x6

.field public static final TERMS_BUTTON_MESSAGE_POSITIVE_IDX:I = 0x5

.field public static final TERMS_LINK_MESSAGE_IDX:I = 0x4

.field public static final TERMS_MESSAGE_IDX:I = 0x2

.field public static final TERMS_TITLE_IDX:I = 0x1

.field public static final TERMS_TYPE_IDX:I = 0x0

.field public static final TERMS_URL_IDX:I = 0x3

.field private static data:[[Ljava/lang/String;

.field private static termsManager:Lcom/com2us/module/activeuser/useragree/TermsManager;


# instance fields
.field private backKeyText:Ljava/lang/String;

.field private errorMsgText:Ljava/lang/String;

.field private errorTitleText:Ljava/lang/String;

.field private loadingText:Ljava/lang/String;

.field private quitText:Ljava/lang/String;

.field private retryText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/com2us/module/activeuser/useragree/TermsManager;->termsManager:Lcom/com2us/module/activeuser/useragree/TermsManager;

    .line 17
    sput-object v0, Lcom/com2us/module/activeuser/useragree/TermsManager;->data:[[Ljava/lang/String;

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "Privacy Policy"

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorTitleText:Ljava/lang/String;

    .line 29
    const-string v0, "Network connection is unstable.Please try again after checking your network status."

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorMsgText:Ljava/lang/String;

    .line 30
    const-string v0, "Retry"

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->retryText:Ljava/lang/String;

    .line 31
    const-string v0, "Quit"

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->quitText:Ljava/lang/String;

    .line 32
    const-string v0, "Back press again to exit."

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->backKeyText:Ljava/lang/String;

    .line 33
    const-string v0, "Loading..."

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->loadingText:Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/useragree/TermsManager;->setText(Landroid/content/Context;)V

    .line 48
    new-array v0, v7, [[Ljava/lang/String;

    .line 49
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    .line 50
    const-string v2, "1"

    aput-object v2, v1, v4

    .line 51
    const-string v2, "\uac8c\uc784 \uc774\uc6a9 \uc57d\uad00"

    aput-object v2, v1, v5

    .line 52
    const-string v2, "\ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud574 \uc8fc\uc154\uc11c \uac10\uc0ac\ud569\ub2c8\ub2e4.<br><br>\uc774 \uc57d\uad00\uc740 \ucef4\ud22c\uc2a4\uc5d0\uc11c \uc81c\uacf5\ud558\ub294 \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4(\ucef4\ud22c\uc2a4\uc571 \ubc0f \ucef4\ud22c\uc2a4 \ud5c8\ube0c \uc11c\ube44\uc2a4 \ub4f1)\uc758 \uc774\uc6a9\uacfc \uad00\ub828\ud558\uc5ec \uc774\uc6a9\uc790\uc640 \ucef4\ud22c\uc2a4\uac04\uc758 \uad8c\ub9ac, \uc758\ubb34 \ubc0f \ud544\uc694\ud55c \uc81c\ubc18 \uc0ac\ud56d\uc744 \uc815\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uc989, \uc774 \uc57d\uad00\uc740 \uc774\uc6a9\uc790\uac00 \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uae30 \uc704\ud55c \uc2e0\uccad \uacfc\uc815\uacfc \uc774\uc6a9\uc790\uc758 \uad8c\ub9ac\uc640 \uc758\ubb34, \ucef4\ud22c\uc2a4\uc758 \uad8c\ub9ac\uc640 \uc758\ubb34, \uac74\uc804\ud558\uace0 \uc990\uac81\uac8c \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uae30 \uc704\ud558\uc5ec \uc9c0\ucf1c\uc57c \ud560 \uaddc\uce59\uacfc \uc900\uc218\uc0ac\ud56d \ubc0f \uc774\ub97c \uc704\ubc18\ud558\ub294 \uacbd\uc6b0\uc5d0 \ub530\ub978 \ubd88\uac00\ud53c\ud55c \uc81c\uc7ac \uc0ac\ud56d \ubc0f \uae30\uc900 \ub4f1\uc744 \uc815\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \ub530\ub77c\uc11c \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4 \uc774\uc6a9 \uc804\uc5d0 \uc774 \uc57d\uad00\uc758 \ub0b4\uc6a9\uc744 \uc8fc\uc758 \uae4a\uac8c \uc77d\uc5b4 \uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.<br><br>\ucef4\ud22c\uc2a4\ub294 \ud56d\uc0c1 \uc591\uc9c8\uc758 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\ub97c \uc81c\uacf5\ud558\uace0 \uc18c\ube44\uc790\uc758 \uad8c\uc775\uc744 \ubcf4\ud638\ud558\uae30 \uc704\ud558\uc5ec \ucd5c\uc120\uc758 \ub178\ub825\uc744 \ub2e4\ud558\uace0 \uc788\uc73c\uba70, \uc548\uc804\ud558\uace0 \uac74\uc804\ud55c \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4 \uc774\uc6a9\uc744 \uc704\ud558\uc5ec \uc774 \uc57d\uad00\uc758 \ub0b4\uc6a9\uc744 \uc798 \uc77d\uc5b4 \ubcf4\uc2dc\uace0 \uc801\uadf9\uc801\uc774\uace0 \ub2a5\ub3d9\uc801\uc778 \ud611\uc870\ub97c \ubd80\ud0c1 \ub4dc\ub9bd\ub2c8\ub2e4.<br><br>\uc774 \uc57d\uad00\uc758 \ub0b4\uc6a9 \ubc0f \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\uc758 \uc774\uc6a9\uacfc \uad00\ub828\ud558\uc5ec \uad81\uae08\ud558\uc2e0 \uc810\uc774 \uc788\uc73c\uc2dc\uba74 \uc5b8\uc81c\ub77c\ub3c4 \uc774 \uc57d\uad00\uc5d0 \uae30\uc7ac\ub418\uc5b4 \uc788\ub294 \ubc14\uc5d0 \ub530\ub77c \ucef4\ud22c\uc2a4\uc5d0 \uc5f0\ub77d\uc744 \uc8fc\uc2dc\uba74 \uc131\uc2e4\ud788 \ub2f5\ubcc0 \ub4dc\ub9ac\ub3c4\ub85d \ud558\uaca0\uc2b5\ub2c8\ub2e4.<br><br>\ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4 \uc774\uc6a9\uc744 \ud1b5\ud558\uc5ec \ud56d\uc0c1 \uc990\uac70\uc6c0\uc774 \uac00\ub4dd\ud558\uc2dc\uae38 \uae30\uc6d0\ud569\ub2c8\ub2e4."

    aput-object v2, v1, v6

    .line 53
    const-string v2, "http://m.com2us.com/"

    aput-object v2, v1, v7

    .line 54
    const-string v2, "\ubaa8\ub450\ubcf4\uae30"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 55
    const-string v3, "\ub3d9\uc758"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 56
    const-string v3, "\uac70\ubd80"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    .line 57
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    .line 58
    const-string v2, "0"

    aput-object v2, v1, v4

    .line 59
    const-string v2, "\uac8c\uc784 \uc774\uc6a9 \uc57d\uad00"

    aput-object v2, v1, v5

    .line 60
    const-string v2, "\ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud574 \uc8fc\uc154\uc11c \uac10\uc0ac\ud569\ub2c8\ub2e4.<br><br>\uc774 \uc57d\uad00\uc740 \ucef4\ud22c\uc2a4\uc5d0\uc11c \uc81c\uacf5\ud558\ub294 \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4(\ucef4\ud22c\uc2a4\uc571 \ubc0f \ucef4\ud22c\uc2a4 \ud5c8\ube0c \uc11c\ube44\uc2a4 \ub4f1)\uc758 \uc774\uc6a9\uacfc \uad00\ub828\ud558\uc5ec \uc774\uc6a9\uc790\uc640 \ucef4\ud22c\uc2a4\uac04\uc758 \uad8c\ub9ac, \uc758\ubb34 \ubc0f \ud544\uc694\ud55c \uc81c\ubc18 \uc0ac\ud56d\uc744 \uc815\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uc989, \uc774 \uc57d\uad00\uc740 \uc774\uc6a9\uc790\uac00 \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uae30 \uc704\ud55c \uc2e0\uccad \uacfc\uc815\uacfc \uc774\uc6a9\uc790\uc758 \uad8c\ub9ac\uc640 \uc758\ubb34, \ucef4\ud22c\uc2a4\uc758 \uad8c\ub9ac\uc640 \uc758\ubb34, \uac74\uc804\ud558\uace0 \uc990\uac81\uac8c \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uae30 \uc704\ud558\uc5ec \uc9c0\ucf1c\uc57c \ud560 \uaddc\uce59\uacfc \uc900\uc218\uc0ac\ud56d \ubc0f \uc774\ub97c \uc704\ubc18\ud558\ub294 \uacbd\uc6b0\uc5d0 \ub530\ub978 \ubd88\uac00\ud53c\ud55c \uc81c\uc7ac \uc0ac\ud56d \ubc0f \uae30\uc900 \ub4f1\uc744 \uc815\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \ub530\ub77c\uc11c \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4 \uc774\uc6a9 \uc804\uc5d0 \uc774 \uc57d\uad00\uc758 \ub0b4\uc6a9\uc744 \uc8fc\uc758 \uae4a\uac8c \uc77d\uc5b4 \uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.<br><br>\ucef4\ud22c\uc2a4\ub294 \ud56d\uc0c1 \uc591\uc9c8\uc758 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\ub97c \uc81c\uacf5\ud558\uace0 \uc18c\ube44\uc790\uc758 \uad8c\uc775\uc744 \ubcf4\ud638\ud558\uae30 \uc704\ud558\uc5ec \ucd5c\uc120\uc758 \ub178\ub825\uc744 \ub2e4\ud558\uace0 \uc788\uc73c\uba70, \uc548\uc804\ud558\uace0 \uac74\uc804\ud55c \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4 \uc774\uc6a9\uc744 \uc704\ud558\uc5ec \uc774 \uc57d\uad00\uc758 \ub0b4\uc6a9\uc744 \uc798 \uc77d\uc5b4 \ubcf4\uc2dc\uace0 \uc801\uadf9\uc801\uc774\uace0 \ub2a5\ub3d9\uc801\uc778 \ud611\uc870\ub97c \ubd80\ud0c1 \ub4dc\ub9bd\ub2c8\ub2e4.<br><br>\uc774 \uc57d\uad00\uc758 \ub0b4\uc6a9 \ubc0f \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\uc758 \uc774\uc6a9\uacfc \uad00\ub828\ud558\uc5ec \uad81\uae08\ud558\uc2e0 \uc810\uc774 \uc788\uc73c\uc2dc\uba74 \uc5b8\uc81c\ub77c\ub3c4 \uc774 \uc57d\uad00\uc5d0 \uae30\uc7ac\ub418\uc5b4 \uc788\ub294 \ubc14\uc5d0 \ub530\ub77c \ucef4\ud22c\uc2a4\uc5d0 \uc5f0\ub77d\uc744 \uc8fc\uc2dc\uba74 \uc131\uc2e4\ud788 \ub2f5\ubcc0 \ub4dc\ub9ac\ub3c4\ub85d \ud558\uaca0\uc2b5\ub2c8\ub2e4.<br><br>\ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4 \uc774\uc6a9\uc744 \ud1b5\ud558\uc5ec \ud56d\uc0c1 \uc990\uac70\uc6c0\uc774 \uac00\ub4dd\ud558\uc2dc\uae38 \uae30\uc6d0\ud569\ub2c8\ub2e4."

    aput-object v2, v1, v6

    .line 61
    const-string v2, "http://m.com2us.com/"

    aput-object v2, v1, v7

    .line 62
    const-string v2, "\ubaa8\ub450\ubcf4\uae30"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 63
    const-string v3, "\ub3d9\uc758"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 64
    const-string v3, "\uac70\ubd80"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    .line 65
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    .line 66
    const-string v2, "1"

    aput-object v2, v1, v4

    .line 67
    const-string v2, "\uac8c\uc784 \uc774\uc6a9 \uc57d\uad00"

    aput-object v2, v1, v5

    .line 68
    const-string v2, "\ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud574 \uc8fc\uc154\uc11c \uac10\uc0ac\ud569\ub2c8\ub2e4.<br><br>\uc774 \uc57d\uad00\uc740 \ucef4\ud22c\uc2a4\uc5d0\uc11c \uc81c\uacf5\ud558\ub294 \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4(\ucef4\ud22c\uc2a4\uc571 \ubc0f \ucef4\ud22c\uc2a4 \ud5c8\ube0c \uc11c\ube44\uc2a4 \ub4f1)\uc758 \uc774\uc6a9\uacfc \uad00\ub828\ud558\uc5ec \uc774\uc6a9\uc790\uc640 \ucef4\ud22c\uc2a4\uac04\uc758 \uad8c\ub9ac, \uc758\ubb34 \ubc0f \ud544\uc694\ud55c \uc81c\ubc18 \uc0ac\ud56d\uc744 \uc815\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uc989, \uc774 \uc57d\uad00\uc740 \uc774\uc6a9\uc790\uac00 \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uae30 \uc704\ud55c \uc2e0\uccad \uacfc\uc815\uacfc \uc774\uc6a9\uc790\uc758 \uad8c\ub9ac\uc640 \uc758\ubb34, \ucef4\ud22c\uc2a4\uc758 \uad8c\ub9ac\uc640 \uc758\ubb34, \uac74\uc804\ud558\uace0 \uc990\uac81\uac8c \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uae30 \uc704\ud558\uc5ec \uc9c0\ucf1c\uc57c \ud560 \uaddc\uce59\uacfc \uc900\uc218\uc0ac\ud56d \ubc0f \uc774\ub97c \uc704\ubc18\ud558\ub294 \uacbd\uc6b0\uc5d0 \ub530\ub978 \ubd88\uac00\ud53c\ud55c \uc81c\uc7ac \uc0ac\ud56d \ubc0f \uae30\uc900 \ub4f1\uc744 \uc815\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \ub530\ub77c\uc11c \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4 \uc774\uc6a9 \uc804\uc5d0 \uc774 \uc57d\uad00\uc758 \ub0b4\uc6a9\uc744 \uc8fc\uc758 \uae4a\uac8c \uc77d\uc5b4 \uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.<br><br>\ucef4\ud22c\uc2a4\ub294 \ud56d\uc0c1 \uc591\uc9c8\uc758 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\ub97c \uc81c\uacf5\ud558\uace0 \uc18c\ube44\uc790\uc758 \uad8c\uc775\uc744 \ubcf4\ud638\ud558\uae30 \uc704\ud558\uc5ec \ucd5c\uc120\uc758 \ub178\ub825\uc744 \ub2e4\ud558\uace0 \uc788\uc73c\uba70, \uc548\uc804\ud558\uace0 \uac74\uc804\ud55c \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4 \uc774\uc6a9\uc744 \uc704\ud558\uc5ec \uc774 \uc57d\uad00\uc758 \ub0b4\uc6a9\uc744 \uc798 \uc77d\uc5b4 \ubcf4\uc2dc\uace0 \uc801\uadf9\uc801\uc774\uace0 \ub2a5\ub3d9\uc801\uc778 \ud611\uc870\ub97c \ubd80\ud0c1 \ub4dc\ub9bd\ub2c8\ub2e4.<br><br>\uc774 \uc57d\uad00\uc758 \ub0b4\uc6a9 \ubc0f \ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4\uc758 \uc774\uc6a9\uacfc \uad00\ub828\ud558\uc5ec \uad81\uae08\ud558\uc2e0 \uc810\uc774 \uc788\uc73c\uc2dc\uba74 \uc5b8\uc81c\ub77c\ub3c4 \uc774 \uc57d\uad00\uc5d0 \uae30\uc7ac\ub418\uc5b4 \uc788\ub294 \ubc14\uc5d0 \ub530\ub77c \ucef4\ud22c\uc2a4\uc5d0 \uc5f0\ub77d\uc744 \uc8fc\uc2dc\uba74 \uc131\uc2e4\ud788 \ub2f5\ubcc0 \ub4dc\ub9ac\ub3c4\ub85d \ud558\uaca0\uc2b5\ub2c8\ub2e4.<br><br>\ucef4\ud22c\uc2a4 \ubaa8\ubc14\uc77c\uc11c\ube44\uc2a4 \uc774\uc6a9\uc744 \ud1b5\ud558\uc5ec \ud56d\uc0c1 \uc990\uac70\uc6c0\uc774 \uac00\ub4dd\ud558\uc2dc\uae38 \uae30\uc6d0\ud569\ub2c8\ub2e4."

    aput-object v2, v1, v6

    .line 69
    const-string v2, "http://m.com2us.com/"

    aput-object v2, v1, v7

    .line 70
    const-string v2, "\ubaa8\ub450\ubcf4\uae30"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 71
    const-string v3, "\ub3d9\uc758"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 72
    const-string v3, "\uac70\ubd80"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    .line 48
    sput-object v0, Lcom/com2us/module/activeuser/useragree/TermsManager;->data:[[Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/com2us/module/activeuser/useragree/TermsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/com2us/module/activeuser/useragree/TermsManager;->termsManager:Lcom/com2us/module/activeuser/useragree/TermsManager;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/com2us/module/activeuser/useragree/TermsManager;

    invoke-direct {v0, p0}, Lcom/com2us/module/activeuser/useragree/TermsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/com2us/module/activeuser/useragree/TermsManager;->termsManager:Lcom/com2us/module/activeuser/useragree/TermsManager;

    .line 39
    :cond_0
    sget-object v0, Lcom/com2us/module/activeuser/useragree/TermsManager;->termsManager:Lcom/com2us/module/activeuser/useragree/TermsManager;

    return-object v0
.end method

.method private setText(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "language":Ljava/lang/String;
    const-string v2, "ko"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "Privacy Policy"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorTitleText:Ljava/lang/String;

    .line 122
    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc811\uc18d\uc774 \uc6d0\ud65c\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ub124\ud2b8\uc6cc\ud06c \uc0c1\ud0dc \ud655\uc778 \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorMsgText:Ljava/lang/String;

    .line 123
    const-string v2, "\uc7ac\uc2dc\ub3c4"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->retryText:Ljava/lang/String;

    .line 124
    const-string v2, "\uc885\ub8cc"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->quitText:Ljava/lang/String;

    .line 125
    const-string v2, "\'\ub4a4\ub85c\' \ubc84\ud2bc\uc744 \ud55c\ubc88 \ub354 \ub204\ub974\uc2dc\uba74 \uc885\ub8cc\ub429\ub2c8\ub2e4."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->backKeyText:Ljava/lang/String;

    .line 126
    const-string v2, "\ub85c\ub529 \uc911..."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->loadingText:Ljava/lang/String;

    .line 178
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v2, "tw"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const-string v2, "\u96b1\u79c1\u653f\u7b56"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorTitleText:Ljava/lang/String;

    .line 130
    const-string v2, "\u7db2\u8def\u9023\u63a5\u4e0d\u7a69\u5b9a\u3002\u8acb\u78ba\u8a8d\u7db2\u8def\u72c0\u614b\u4e26\u91cd\u8a66\u3002"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorMsgText:Ljava/lang/String;

    .line 131
    const-string v2, "\u91cd\u8a66"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->retryText:Ljava/lang/String;

    .line 132
    const-string v2, "\u9000\u51fa"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->quitText:Ljava/lang/String;

    .line 133
    const-string v2, "\'\u8fd4\u56de\'\u518d\u6b21\u6309\u4e0b\u6309\u9215\u9000\u51fa\u3002"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->backKeyText:Ljava/lang/String;

    .line 134
    const-string v2, "\u52a0\u8f09\u4e2d..."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->loadingText:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_1
    const-string v2, "zh"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    const-string v2, "\u9690\u79c1\u653f\u7b56"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorTitleText:Ljava/lang/String;

    .line 138
    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u7a33\u5b9a\u3002\u8bf7\u786e\u8ba4\u7f51\u7edc\u72b6\u6001\u5e76\u91cd\u8bd5\u3002"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorMsgText:Ljava/lang/String;

    .line 139
    const-string v2, "\u91cd\u8bd5"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->retryText:Ljava/lang/String;

    .line 140
    const-string v2, "\u9000\u51fa"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->quitText:Ljava/lang/String;

    .line 141
    const-string v2, "\'\u8fd4\u56de\'\u518d\u6b21\u6309\u4e0b\u6309\u94ae\u9000\u51fa\u3002"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->backKeyText:Ljava/lang/String;

    .line 142
    const-string v2, "\u52a0\u8f7d\u4e2d..."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->loadingText:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_2
    const-string v2, "ja"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    const-string v2, "\u30d7\u30e9\u30a4\u30d0\u30b7\u30fc\u30dd\u30ea\u30b7\u30fc"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorTitleText:Ljava/lang/String;

    .line 146
    const-string v2, "\u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u306b\u63a5\u7d9a\u3067\u304d\u307e\u305b\u3093\u3002\u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u72b6\u614b\u3092\u78ba\u8a8d\u3057\u3066\u304b\u3089\u518d\u5ea6\u304a\u8a66\u3057\u304f\u3060\u3055\u3044\u3002"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorMsgText:Ljava/lang/String;

    .line 147
    const-string v2, "\u30ea\u30c8\u30e9\u30a4"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->retryText:Ljava/lang/String;

    .line 148
    const-string v2, "\u7d42\u4e86"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->quitText:Ljava/lang/String;

    .line 149
    const-string v2, "\u3082\u3046\u4e00\u5ea6\u300c\u623b\u308b\u300d\u30dc\u30bf\u30f3\u3092\u62bc\u3057\u3066\u7d42\u4e86\u3057\u307e\u3059\u3002"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->backKeyText:Ljava/lang/String;

    .line 150
    const-string v2, "\u30ed\u30fc\u30c7\u30a3\u30f3\u30b0\u4e2d..."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->loadingText:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_3
    const-string v2, "de"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    const-string v2, "Datenschutzerkl\u00e4rung"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorTitleText:Ljava/lang/String;

    .line 154
    const-string v2, "Netzwerkverbindung ist instabil. Bitte erneut versuchen nach der \u00dcberpr\u00fcfung Ihrer Netzwerk-Status."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorMsgText:Ljava/lang/String;

    .line 155
    const-string v2, "Nochmals spielen"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->retryText:Ljava/lang/String;

    .line 156
    const-string v2, "Verlassen"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->quitText:Ljava/lang/String;

    .line 157
    const-string v2, "\'Zur\u00fcck\' dr\u00fccken Sie die Taste erneut, um beendet."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->backKeyText:Ljava/lang/String;

    .line 158
    const-string v2, "Verladung..."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->loadingText:Ljava/lang/String;

    goto/16 :goto_0

    .line 160
    :cond_4
    const-string v2, "fr"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    const-string v2, "Politique de confidentialit\u00e9"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorTitleText:Ljava/lang/String;

    .line 162
    const-string v2, "La connexion r\u00e9seau est instable. R\u00e9essaie apr\u00e8s avoir v\u00e9rifi\u00e9 l\'\u00e9tat du r\u00e9seau."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorMsgText:Ljava/lang/String;

    .line 163
    const-string v2, "Rejouer"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->retryText:Ljava/lang/String;

    .line 164
    const-string v2, "Quitter"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->quitText:Ljava/lang/String;

    .line 165
    const-string v2, "Bouton \'retour\' de presse de nouveau pour les sorties."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->backKeyText:Ljava/lang/String;

    .line 166
    const-string v2, "Chargement..."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->loadingText:Ljava/lang/String;

    goto/16 :goto_0

    .line 170
    :cond_5
    const-string v2, "Privacy Policy"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorTitleText:Ljava/lang/String;

    .line 171
    const-string v2, "Network connection is unstable.Please try again after checking your network status."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorMsgText:Ljava/lang/String;

    .line 172
    const-string v2, "Retry"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->retryText:Ljava/lang/String;

    .line 173
    const-string v2, "Quit"

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->quitText:Ljava/lang/String;

    .line 174
    const-string v2, "\'Back\' press button again to exits."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->backKeyText:Ljava/lang/String;

    .line 175
    const-string v2, "Loading..."

    iput-object v2, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->loadingText:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public getBackKeyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->backKeyText:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/com2us/module/activeuser/useragree/TermsManager;->data:[[Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsgText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorMsgText:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->errorTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->loadingText:Ljava/lang/String;

    return-object v0
.end method

.method public getQuitText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->quitText:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/TermsManager;->retryText:Ljava/lang/String;

    return-object v0
.end method

.method public setData([[Ljava/lang/String;)Z
    .locals 2
    .param p1, "newData"    # [[Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p1}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    sput-object v1, Lcom/com2us/module/activeuser/useragree/TermsManager;->data:[[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const/4 v1, 0x1

    .line 85
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
