.class Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;
.super Ljava/lang/Object;
.source "ActiveUserUpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;->createUI(Landroid/app/Activity;Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedConfigurationData;Landroid/view/WindowManager$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$button:Landroid/widget/TextView;

.field private final synthetic val$buttonShadow:Landroid/widget/TextView;

.field private final synthetic val$button_gd:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;Landroid/app/Activity;Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->this$0:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog;

    iput-object p2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->val$button:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->val$button_gd:Landroid/graphics/drawable/GradientDrawable;

    iput-object p5, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->val$buttonShadow:Landroid/widget/TextView;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$1;

    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->val$button:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->val$button_gd:Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->val$buttonShadow:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$1;-><init>(Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 198
    :cond_0
    :goto_0
    return v5

    .line 180
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;

    iget-object v2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->val$button:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->val$button_gd:Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->val$buttonShadow:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;-><init>(Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
