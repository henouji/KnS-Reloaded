.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;
.super Landroid/app/Activity;
.source "IntroMovieActivity.java"


# instance fields
.field button1:Landroid/widget/Button;

.field final handler:Landroid/os/Handler;

.field stopPosition:I

.field videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;

    invoke-direct {v0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;-><init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;)V

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->handler:Landroid/os/Handler;

    .line 14
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->playVideo()V

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetbyIntroPlay(C)V

    .line 31
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 33
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 34
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->stopPosition:I

    .line 43
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 45
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->stopPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 54
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 56
    :cond_0
    return-void
.end method

.method playVideo()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$2;

    invoke-direct {v0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$2;-><init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;)V

    .line 108
    invoke-virtual {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$2;->start()V

    .line 109
    return-void
.end method
