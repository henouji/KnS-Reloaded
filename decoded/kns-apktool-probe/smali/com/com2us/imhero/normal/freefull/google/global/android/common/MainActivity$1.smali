.class Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity$1;
.super Lcom/com2us/peppermint/HubCallbackListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    .line 79
    invoke-direct {p0}, Lcom/com2us/peppermint/HubCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity$1;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    invoke-static {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->access$0(Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;)Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
