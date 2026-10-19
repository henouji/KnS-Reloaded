.class Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;
.super Landroid/os/Handler;
.source "IntroMovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;


# direct methods
.method constructor <init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;)Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    const v3, 0x7f0b0045

    invoke-virtual {v1, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    .line 63
    iget-object v2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    const v3, 0x7f0b0046

    invoke-virtual {v1, v3}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->button1:Landroid/widget/Button;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->getPatchPath_Completed()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/imhero_intro.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    iget-object v1, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    iget-object v1, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 76
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    iget-object v1, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1$1;

    invoke-direct {v2, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1$1;-><init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 85
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    iget-object v1, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->button1:Landroid/widget/Button;

    new-instance v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1$2;

    invoke-direct {v2, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1$2;-><init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    iget-object v1, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 96
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->nativeSetbyIntroPlay(C)V

    .line 97
    return-void
.end method
