.class Lcom/com2us/module/push/NotificationRegister$1;
.super Ljava/lang/Object;
.source "NotificationRegister.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/push/NotificationRegister;->setToast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$intent:Landroid/content/Intent;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 368
    iget-object v6, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "msg"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 370
    .local v4, "toast":Landroid/widget/Toast;
    iget-object v6, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    const-string v7, "push_toast"

    const-string v8, "layout"

    iget-object v9, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 371
    iget-object v6, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    const-string v8, "push_toast"

    const-string v9, "layout"

    iget-object v10, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 373
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    const-string v7, "pushtoast_title"

    const-string v8, "id"

    iget-object v9, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 374
    .local v3, "title":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_0
    iget-object v6, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    const-string v7, "pushtoast_icon"

    const-string v8, "id"

    iget-object v9, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 377
    .local v0, "icon":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 378
    iget-object v6, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$intent:Landroid/content/Intent;

    const-string v7, "iconData"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/com2us/module/push/PushConfig;->getBitmapFromByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 379
    .local v1, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 380
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    .end local v1    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    const-string v7, "pushtoast_msg"

    const-string v8, "id"

    iget-object v9, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 387
    .local v2, "msg":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :cond_2
    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 391
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v2    # "msg":Landroid/widget/TextView;
    .end local v3    # "title":Landroid/widget/TextView;
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 392
    return-void

    .line 382
    .restart local v0    # "icon":Landroid/widget/ImageView;
    .restart local v1    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "title":Landroid/widget/TextView;
    .restart local v5    # "view":Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$intent:Landroid/content/Intent;

    const-string v7, "iconResID"

    iget-object v8, p0, Lcom/com2us/module/push/NotificationRegister$1;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
