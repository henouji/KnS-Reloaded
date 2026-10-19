.class Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$2;
.super Ljava/lang/Thread;
.source "IntroMovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->playVideo()V
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
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$2;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$2;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    iget-object v1, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 106
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity$2;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    iget-object v1, v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method
