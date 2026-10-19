.class Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$1;
.super Ljava/lang/Object;
.source "UserAgreeAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->showTitleAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$1;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$1;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->access$0(Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;)V

    .line 119
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 115
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$1;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->isAnimation:Z

    return-void
.end method
