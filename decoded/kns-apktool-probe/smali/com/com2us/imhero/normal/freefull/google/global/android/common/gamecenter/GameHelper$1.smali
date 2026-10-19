.class Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$1;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->onStart(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;


# direct methods
.method constructor <init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelper;->notifyListener(Z)V

    .line 394
    return-void
.end method
