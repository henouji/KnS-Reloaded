.class Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;
.super Ljava/lang/Object;
.source "ActiveUserUpdateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;

.field private final synthetic val$button:Landroid/widget/TextView;

.field private final synthetic val$buttonShadow:Landroid/widget/TextView;

.field private final synthetic val$button_gd:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;->this$1:Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1;

    iput-object p2, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;->val$button:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;->val$button_gd:Landroid/graphics/drawable/GradientDrawable;

    iput-object p4, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;->val$buttonShadow:Landroid/widget/TextView;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;->val$button:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;->val$button_gd:Landroid/graphics/drawable/GradientDrawable;

    const/16 v1, 0xe8

    const/16 v2, 0xc4

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;->val$button:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;->val$button_gd:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;->val$buttonShadow:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;->val$button:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/com2us/module/activeuser/ActiveUserUpdateDialog$1$2;->val$button_gd:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
