.class Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$QuestCallback;
.super Ljava/lang/Object;
.source "GooglePlayServicesActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuestCallback"
.end annotation


# instance fields
.field m_parent:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;

.field final synthetic this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;


# direct methods
.method public constructor <init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;)V
    .locals 0
    .param p2, "main"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$QuestCallback;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$QuestCallback;->m_parent:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;

    .line 361
    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 7
    .param p1, "result"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 369
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;

    .line 370
    .local v3, "r":Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;
    invoke-interface {v3}, Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;->getQuests()Lcom/google/android/gms/games/quest/QuestBuffer;

    move-result-object v2

    .line 372
    .local v2, "qb":Lcom/google/android/gms/games/quest/QuestBuffer;
    const-string v1, "Current quest details: \n"

    .line 374
    .local v1, "message":Ljava/lang/String;
    const-string v4, "GooglePlayServices"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Number of quests: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/games/quest/QuestBuffer;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/games/quest/QuestBuffer;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 380
    invoke-virtual {v2}, Lcom/google/android/gms/games/quest/QuestBuffer;->close()V

    .line 382
    const-string v4, "TAG"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void

    .line 378
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Quest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/quest/Quest;

    invoke-interface {v4}, Lcom/google/android/gms/games/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/quest/Quest;

    invoke-interface {v4}, Lcom/google/android/gms/games/quest/Quest;->getQuestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
