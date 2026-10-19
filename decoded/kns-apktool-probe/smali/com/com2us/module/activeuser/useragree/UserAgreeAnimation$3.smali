.class Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$3;
.super Ljava/lang/Object;
.source "UserAgreeAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeBodyAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

.field private final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$3;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    iput p2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$3;->val$msg:I

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$3;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->bodyLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$3;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    iget v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$3;->val$msg:I

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->access$1(Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;I)V

    .line 191
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 186
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$3;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->isAnimation:Z

    return-void
.end method
