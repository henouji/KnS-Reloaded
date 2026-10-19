.class Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;
.super Ljava/lang/Object;
.source "MercuryDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setWebViewBorder()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 354
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 383
    :cond_0
    :goto_0
    return v6

    .line 356
    :pswitch_0
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$21(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/graphics/Rect;)V

    .line 357
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$22(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V

    .line 358
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$23(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$20(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 362
    :pswitch_1
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$24(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0, v6}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$22(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V

    .line 364
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$20(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$23(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 369
    :pswitch_2
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$25(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$26(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$20(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog;->access$0(Lcom/com2us/module/mercury/MercuryDialog;)Lcom/com2us/module/mercury/Mercury;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$27(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$28(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/mercury/Mercury;->saveOffAutoParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 379
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0, v6}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$22(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V

    goto/16 :goto_0

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/mercury/MercuryDialog;->close()V

    goto :goto_1

    .line 354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
