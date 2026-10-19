.class Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$1;
.super Ljava/lang/Object;
.source "GooglePlayServicesActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;


# direct methods
.method constructor <init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;

    invoke-virtual {p0, p1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$1;->onResult(Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;)V
    .locals 1
    .param p1, "result"    # Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;

    invoke-virtual {v0, p1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;->onMilestoneClaimed(Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;)V

    .line 81
    return-void
.end method
