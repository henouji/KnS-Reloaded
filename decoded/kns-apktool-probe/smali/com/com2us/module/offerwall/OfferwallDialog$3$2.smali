.class Lcom/com2us/module/offerwall/OfferwallDialog$3$2;
.super Ljava/lang/Object;
.source "OfferwallDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/offerwall/OfferwallDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/offerwall/OfferwallDialog$3;


# direct methods
.method constructor <init>(Lcom/com2us/module/offerwall/OfferwallDialog$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3$2;->this$1:Lcom/com2us/module/offerwall/OfferwallDialog$3;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3$2;->this$1:Lcom/com2us/module/offerwall/OfferwallDialog$3;

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallDialog$3;->access$0(Lcom/com2us/module/offerwall/OfferwallDialog$3;)Lcom/com2us/module/offerwall/OfferwallDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallDialog;->access$2(Lcom/com2us/module/offerwall/OfferwallDialog;)Lcom/com2us/module/offerwall/Offerwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/offerwall/Offerwall;->closeDialog()V

    .line 216
    iget-object v0, p0, Lcom/com2us/module/offerwall/OfferwallDialog$3$2;->this$1:Lcom/com2us/module/offerwall/OfferwallDialog$3;

    invoke-static {v0}, Lcom/com2us/module/offerwall/OfferwallDialog$3;->access$0(Lcom/com2us/module/offerwall/OfferwallDialog$3;)Lcom/com2us/module/offerwall/OfferwallDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/offerwall/OfferwallDialog;->destroy()V

    .line 217
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 211
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 206
    return-void
.end method
