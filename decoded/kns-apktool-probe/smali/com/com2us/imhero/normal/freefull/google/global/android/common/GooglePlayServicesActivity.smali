.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;
.super Lcom/com2us/wrapper/kernel/CWrapperActivity;
.source "GooglePlayServicesActivity.java"

# interfaces
.implements Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;
.implements Lcom/google/android/gms/games/quest/QuestUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$EventCallback;,
        Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$QuestCallback;
    }
.end annotation


# static fields
.field public static final CLIENT_ALL:I = 0x7

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_PLUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GooglePlayServices"

.field private static ec:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$EventCallback;

.field private static mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

.field private static mIsGpgsAvailable:Z

.field private static qc:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$QuestCallback;


# instance fields
.field private mClaimMilestoneResultCallback:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;",
            ">;"
        }
    .end annotation
.end field

.field protected mDebugLog:Z

.field protected mRequestedClients:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mIsGpgsAvailable:Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mRequestedClients:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mDebugLog:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getGameHelper()Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    iget v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mRequestedClients:I

    invoke-direct {v0, p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    .line 94
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    iget-boolean v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mDebugLog:Z

    invoke-virtual {v0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->enableDebugLog(Z)V

    .line 96
    :cond_0
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    return-object v0
.end method

.method public gpgsIncrementEvents(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 252
    :try_start_0
    sget-boolean v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mIsGpgsAvailable:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->isSign()Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    sget-object v1, Lcom/google/android/gms/games/Games;->Events:Lcom/google/android/gms/games/event/Events;

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/google/android/gms/games/event/Events;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gpgsReportScore,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public gpgsReportScore(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # J

    .prologue
    .line 220
    :try_start_0
    sget-boolean v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mIsGpgsAvailable:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->isSign()Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gpgsReportScore,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public gpgsShowAchievement()V
    .locals 4

    .prologue
    .line 192
    :try_start_0
    sget-boolean v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mIsGpgsAvailable:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->isSign()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {p0, v1, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gpgsShowAchievement,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public gpgsShowLeaderBoard(Ljava/lang/String;)V
    .locals 4
    .param p1, "leaderBoardkey"    # Ljava/lang/String;

    .prologue
    .line 179
    :try_start_0
    sget-boolean v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mIsGpgsAvailable:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->isSign()Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {p0, v1, v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gpgsShowLeaderBoard,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public gpgsShowQuests()V
    .locals 6

    .prologue
    .line 235
    :try_start_0
    sget-boolean v3, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mIsGpgsAvailable:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->isSign()Z

    move-result v3

    if-nez v3, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v3, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 240
    .local v2, "selection":[I
    sget-object v3, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    sget-object v4, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v4}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/games/quest/Quests;->getQuestsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;[I)Landroid/content/Intent;

    move-result-object v1

    .line 242
    .local v1, "questsIntent":Landroid/content/Intent;
    const/16 v3, 0x7d

    invoke-virtual {p0, v1, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v1    # "questsIntent":Landroid/content/Intent;
    .end local v2    # "selection":[I
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "gpgsReportScore,"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    nop

    :array_0
    .array-data 4
        0x2
        0x65
        0x3
    .end array-data
.end method

.method public gpgsSign()V
    .locals 4

    .prologue
    .line 139
    :try_start_0
    sget-boolean v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mIsGpgsAvailable:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->isSign()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->beginUserInitiatedSignIn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gpgsSign,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public gpgsSignOut()V
    .locals 4

    .prologue
    .line 152
    :try_start_0
    sget-boolean v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mIsGpgsAvailable:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->isSign()Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->signOut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gpgsSignOut,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public gpgsUnlockAchievement(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 204
    :try_start_0
    sget-boolean v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mIsGpgsAvailable:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->isSign()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    sget-boolean v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mIsGpgsAvailable:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    :cond_2
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gpgsUnlockAchievement,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSign()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 165
    :try_start_0
    sget-boolean v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mIsGpgsAvailable:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->isSignedIn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 172
    :cond_1
    :goto_0
    return v1

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isSign,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadAndListQuests()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 338
    const/4 v2, 0x3

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 341
    .local v1, "selection":[I
    sget-object v2, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    sget-object v3, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    invoke-interface {v2, v3, v1, v4, v4}, Lcom/google/android/gms/games/quest/Quests;->load(Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 345
    .local v0, "pr":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;>;"
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->qc:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$QuestCallback;

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 346
    return-void

    .line 338
    nop

    :array_0
    .array-data 4
        0x2
        0x65
        0x3
    .end array-data
.end method

.method public loadAndPrintEvents()V
    .locals 4

    .prologue
    .line 283
    sget-object v1, Lcom/google/android/gms/games/Games;->Events:Lcom/google/android/gms/games/event/Events;

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/games/event/Events;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 286
    .local v0, "pr":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/games/event/Events$LoadEventsResult;>;"
    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->ec:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$EventCallback;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 287
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->getGameHelper()Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    .line 70
    :cond_0
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->setup(Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$GameHelperListener;)V

    .line 73
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$EventCallback;

    invoke-direct {v0, p0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$EventCallback;-><init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->ec:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$EventCallback;

    .line 74
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$QuestCallback;

    invoke-direct {v0, p0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$QuestCallback;-><init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;)V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->qc:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$QuestCallback;

    .line 77
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$1;

    invoke-direct {v0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$1;-><init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;)V

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mClaimMilestoneResultCallback:Lcom/google/android/gms/common/api/ResultCallback;

    .line 86
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->loadAndPrintEvents()V

    .line 87
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->loadAndListQuests()V

    .line 88
    return-void

    .line 50
    :pswitch_1
    const-string v0, "GooglePlayServices"

    const-string v1, "SUCCESS, Available Google Play Game Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mIsGpgsAvailable:Z

    goto :goto_0

    .line 54
    :pswitch_2
    const-string v0, "GooglePlayServices"

    const-string v1, "Not available Google Play Game Service, SERVICE_MISSING"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :pswitch_3
    const-string v0, "GooglePlayServices"

    const-string v1, "Not available Google Play Game Service, SERVICE_INVALID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :pswitch_4
    const-string v0, "GooglePlayServices"

    const-string v1, "Not available Google Play Game Service, SERVICE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :pswitch_5
    const-string v0, "GooglePlayServices"

    const-string v1, "Not available Google Play Game Service, SERVICE_VERSION_UPDATE_REQUIRED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->onDestroy()V

    .line 124
    return-void
.end method

.method public onMilestoneClaimed(Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;)V
    .locals 5
    .param p1, "result"    # Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;

    .prologue
    .line 406
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;->getQuest()Lcom/google/android/gms/games/quest/Quest;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/games/quest/Quest;->getCurrentMilestone()Lcom/google/android/gms/games/quest/Milestone;

    move-result-object v2

    .line 408
    invoke-interface {v2}, Lcom/google/android/gms/games/quest/Milestone;->getCompletionRewardData()[B

    move-result-object v2

    .line 409
    const-string v3, "UTF-8"

    .line 407
    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 411
    .local v0, "reward":Ljava/lang/String;
    invoke-static {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetbyGpgsQuestReward(Ljava/lang/String;)V

    .line 412
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Congratulations, you got a "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v0    # "reward":Ljava/lang/String;
    :goto_0
    return-void

    .line 414
    :cond_0
    const-string v2, "GooglePlayServices"

    const-string v3, "Reward was not claimed due to error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public onQuestCompleted(Lcom/google/android/gms/games/quest/Quest;)V
    .locals 5
    .param p1, "quest"    # Lcom/google/android/gms/games/quest/Quest;

    .prologue
    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You successfully completed quest "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GooglePlayServices"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    sget-object v1, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    .line 396
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    .line 397
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getQuestId()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getCurrentMilestone()Lcom/google/android/gms/games/quest/Milestone;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v4

    .line 395
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/games/quest/Quests;->claim(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mClaimMilestoneResultCallback:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 400
    return-void
.end method

.method public onSignInFailed()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 2

    .prologue
    .line 270
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetbyGpgsSignedIn(Z)V

    .line 273
    sget-object v0, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/games/quest/Quests;->registerQuestUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/quest/QuestUpdateListener;)V

    .line 274
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->onStart()V

    .line 102
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mHelper.onStart : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mHelper.isSignedIn() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->isSignedIn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "TAG"

    const-string v1, "mHelper.onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->onStart(Landroid/app/Activity;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->onStop()V

    .line 113
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "TAG"

    const-string v1, "mHelper.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->mHelper:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    invoke-virtual {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->onStop()V

    .line 118
    :cond_0
    return-void
.end method
