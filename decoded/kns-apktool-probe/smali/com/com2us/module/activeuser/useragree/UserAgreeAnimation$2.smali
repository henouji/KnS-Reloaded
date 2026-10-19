.class Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$2;
.super Ljava/lang/Object;
.source "UserAgreeAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->openBodyAnimation()V
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
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->isAnimation:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 155
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->bodyLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    return-void
.end method
