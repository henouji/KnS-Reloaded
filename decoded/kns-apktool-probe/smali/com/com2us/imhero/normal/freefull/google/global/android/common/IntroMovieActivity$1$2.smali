.class Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1$2;
.super Ljava/lang/Object;
.source "IntroMovieActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;


# direct methods
.method constructor <init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1$2;->this$1:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetbyIntroPlay(C)V

    .line 90
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1$2;->this$1:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;

    invoke-static {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->access$0(Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;)Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 91
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1$2;->this$1:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;

    invoke-static {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->access$0(Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;)Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->finish()V

    .line 92
    return-void
.end method
