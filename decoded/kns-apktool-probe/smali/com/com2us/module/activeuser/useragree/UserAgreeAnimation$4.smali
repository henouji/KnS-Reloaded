.class Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$4;
.super Ljava/lang/Object;
.source "UserAgreeAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->hideTitleAnimation(I)V
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
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$4;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    iput p2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$4;->val$msg:I

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$4;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->mainLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 231
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$4;->val$msg:I

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->getInstance()Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    move-result-object v0

    iget v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$4;->val$msg:I

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->onUserAgreeResult(I)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$4;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->thiz:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->finish()V

    .line 233
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation$4;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->isAnimation:Z

    .line 234
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 227
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 225
    return-void
.end method
