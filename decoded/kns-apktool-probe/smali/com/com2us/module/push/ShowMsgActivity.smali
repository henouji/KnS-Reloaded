.class public Lcom/com2us/module/push/ShowMsgActivity;
.super Landroid/app/Activity;
.source "ShowMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/push/ShowMsgActivity$pushDialog;
    }
.end annotation


# static fields
.field private static final REQUEST_TURN_ON_SCREEN:I = 0x1


# instance fields
.field private pushDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity;->pushDialog:Landroid/app/Dialog;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/com2us/module/push/ShowMsgActivity;->isOutOfBounds(Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/push/ShowMsgActivity;->launchActive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2(Lcom/com2us/module/push/ShowMsgActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/com2us/module/push/ShowMsgActivity;->pushDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private createDialog(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/Dialog;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    .line 123
    const-string v9, "push_dialog"

    const-string v10, "layout"

    const-string v11, "packageName"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v9, v10, v11}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_8

    .line 125
    const-string v9, "pushdialog_positivebutton"

    const-string v10, "id"

    const-string v11, "packageName"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v9, v10, v11}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_6

    .line 127
    new-instance v2, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;

    invoke-direct {v2, p0, p1, p2, v12}, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;-><init>(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 128
    .local v2, "dialog":Landroid/app/Dialog;
    const-string v9, "push_dialog"

    const-string v10, "layout"

    const-string v11, "packageName"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v9, v10, v11}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 130
    const-string v9, "pushdialog_positivebutton"

    const-string v10, "id"

    .line 131
    const-string v11, "packageName"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 130
    invoke-static {p1, v9, v10, v11}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 132
    .local v7, "positiveButton":Landroid/widget/Button;
    if-eqz v7, :cond_0

    .line 133
    new-instance v9, Lcom/com2us/module/push/ShowMsgActivity$2;

    invoke-direct {v9, p0, p1, p2, v2}, Lcom/com2us/module/push/ShowMsgActivity$2;-><init>(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/content/Intent;Landroid/app/Dialog;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_0
    const-string v9, "pushdialog_neutralbutton"

    const-string v10, "id"

    .line 145
    const-string v11, "packageName"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 144
    invoke-static {p1, v9, v10, v11}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 146
    .local v6, "neutralButton":Landroid/widget/Button;
    if-eqz v6, :cond_1

    .line 147
    new-instance v9, Lcom/com2us/module/push/ShowMsgActivity$3;

    invoke-direct {v9, p0, v2}, Lcom/com2us/module/push/ShowMsgActivity$3;-><init>(Lcom/com2us/module/push/ShowMsgActivity;Landroid/app/Dialog;)V

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_1
    const-string v9, "pushdialog_cancelbutton"

    const-string v10, "id"

    .line 157
    const-string v11, "packageName"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 156
    invoke-static {p1, v9, v10, v11}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 158
    .local v1, "cancelButton":Landroid/widget/Button;
    if-eqz v1, :cond_2

    .line 159
    new-instance v9, Lcom/com2us/module/push/ShowMsgActivity$4;

    invoke-direct {v9, p0, v2}, Lcom/com2us/module/push/ShowMsgActivity$4;-><init>(Lcom/com2us/module/push/ShowMsgActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .end local v1    # "cancelButton":Landroid/widget/Button;
    .end local v6    # "neutralButton":Landroid/widget/Button;
    .end local v7    # "positiveButton":Landroid/widget/Button;
    :cond_2
    :goto_0
    const-string v9, "pushdialog_title"

    const-string v10, "id"

    const-string v11, "packageName"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v9, v10, v11}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 174
    .local v8, "title":Landroid/widget/TextView;
    if-eqz v8, :cond_3

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setSelected(Z)V

    .line 179
    :cond_3
    const-string v9, "pushdialog_icon"

    const-string v10, "id"

    const-string v11, "packageName"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v9, v10, v11}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 180
    .local v3, "icon":Landroid/widget/ImageView;
    if-eqz v3, :cond_4

    .line 181
    const-string v9, "iconData"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->getBitmapFromByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 182
    .local v4, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_7

    .line 183
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    .end local v4    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    const-string v9, "pushdialog_msg"

    const-string v10, "id"

    const-string v11, "packageName"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v9, v10, v11}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 190
    .local v5, "msg":Landroid/widget/TextView;
    if-eqz v5, :cond_5

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "msg"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setSelected(Z)V

    .line 237
    .end local v3    # "icon":Landroid/widget/ImageView;
    .end local v5    # "msg":Landroid/widget/TextView;
    .end local v8    # "title":Landroid/widget/TextView;
    :cond_5
    :goto_2
    invoke-virtual {v2, v12}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 238
    new-instance v9, Lcom/com2us/module/push/ShowMsgActivity$8;

    invoke-direct {v9, p0}, Lcom/com2us/module/push/ShowMsgActivity$8;-><init>(Lcom/com2us/module/push/ShowMsgActivity;)V

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 247
    return-object v2

    .line 169
    .end local v2    # "dialog":Landroid/app/Dialog;
    :cond_6
    new-instance v2, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;

    const/4 v9, 0x0

    invoke-direct {v2, p0, p1, p2, v9}, Lcom/com2us/module/push/ShowMsgActivity$pushDialog;-><init>(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 170
    .restart local v2    # "dialog":Landroid/app/Dialog;
    const-string v9, "push_dialog"

    const-string v10, "layout"

    const-string v11, "packageName"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v9, v10, v11}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setContentView(I)V

    goto/16 :goto_0

    .line 185
    .restart local v3    # "icon":Landroid/widget/ImageView;
    .restart local v4    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "title":Landroid/widget/TextView;
    :cond_7
    const-string v9, "iconResID"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 196
    .end local v2    # "dialog":Landroid/app/Dialog;
    .end local v3    # "icon":Landroid/widget/ImageView;
    .end local v4    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "title":Landroid/widget/TextView;
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v9, "iconData"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/push/PushConfig;->getBitmapFromByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 199
    .restart local v4    # "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_9

    .line 200
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 205
    :goto_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "msg"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 209
    const v9, 0x104000a

    new-instance v10, Lcom/com2us/module/push/ShowMsgActivity$5;

    invoke-direct {v10, p0, p1, p2}, Lcom/com2us/module/push/ShowMsgActivity$5;-><init>(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    const v9, 0x1040009

    new-instance v10, Lcom/com2us/module/push/ShowMsgActivity$6;

    invoke-direct {v10, p0}, Lcom/com2us/module/push/ShowMsgActivity$6;-><init>(Lcom/com2us/module/push/ShowMsgActivity;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    new-instance v9, Lcom/com2us/module/push/ShowMsgActivity$7;

    invoke-direct {v9, p0}, Lcom/com2us/module/push/ShowMsgActivity$7;-><init>(Lcom/com2us/module/push/ShowMsgActivity;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .restart local v2    # "dialog":Landroid/app/Dialog;
    goto/16 :goto_2

    .line 202
    .end local v2    # "dialog":Landroid/app/Dialog;
    :cond_9
    const-string v9, "iconResID"

    invoke-virtual {p0}, Lcom/com2us/module/push/ShowMsgActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 337
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 338
    .local v1, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 339
    .local v2, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    .line 340
    .local v0, "slop":I
    neg-int v3, v0

    if-lt v1, v3, :cond_0

    neg-int v3, v0

    if-lt v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v1, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v2, v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private launchActive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 285
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 289
    .local v6, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v6}, Landroid/app/NotificationManager;->cancelAll()V

    .line 291
    invoke-static {p1, v10}, Lcom/com2us/module/push/PushConfig;->setBadge(Landroid/content/Context;I)V

    .line 293
    invoke-static {p1}, Lcom/com2us/module/push/MsgsOfNoticeID;->clearAllMsgs(Landroid/content/Context;)Z

    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "isGCMPush"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 298
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/com2us/module/push/ShowMsgActivity$9;

    invoke-direct {v9, p0, p1, p2}, Lcom/com2us/module/push/ShowMsgActivity$9;-><init>(Lcom/com2us/module/push/ShowMsgActivity;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 303
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 306
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/com2us/module/push/PushConfig;->saveReceivedPush(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "active"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "active":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "web"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 314
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 316
    .local v5, "marketIntent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/com2us/module/push/ShowMsgActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v5    # "marketIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 319
    .restart local v5    # "marketIntent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 320
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "marketIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "packageName"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "className"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v7, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .local v3, "compName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v1, "appIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v1}, Lcom/com2us/module/push/ShowMsgActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/com2us/module/push/ShowMsgActivity;->pushDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/com2us/module/push/ShowMsgActivity;->pushDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/com2us/module/push/ShowMsgActivity;->pushDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/push/ShowMsgActivity;->createDialog(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/push/ShowMsgActivity;->pushDialog:Landroid/app/Dialog;

    .line 112
    new-instance v1, Lcom/com2us/module/push/ShowMsgActivity$1;

    invoke-direct {v1, p0}, Lcom/com2us/module/push/ShowMsgActivity$1;-><init>(Lcom/com2us/module/push/ShowMsgActivity;)V

    invoke-virtual {p0, v1}, Lcom/com2us/module/push/ShowMsgActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDialog : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 71
    const-string v0, "ShowMsgActivity onActivityResult-------"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 73
    packed-switch p1, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const-string v0, "REQUEST_TURN_ON_SCREEN finish"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v2, 0x20000

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/com2us/module/push/ShowMsgActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/com2us/module/push/ShowMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 43
    const/high16 v1, 0x680000

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 50
    invoke-virtual {p0}, Lcom/com2us/module/push/ShowMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 52
    invoke-virtual {p0}, Lcom/com2us/module/push/ShowMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bScreenLock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0}, Lcom/com2us/module/push/PushWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)Z

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/com2us/module/push/ShowMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/com2us/module/push/ShowMsgActivity;->setDialog(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 86
    const-string v1, "ShowMsgActivity onDestroy-------"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/com2us/module/push/ShowMsgActivity;->pushDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/com2us/module/push/ShowMsgActivity;->pushDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/com2us/module/push/ShowMsgActivity;->pushDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDestroy : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 62
    const-string v0, "ShowMsgActivity onNewIntent-------"

    invoke-static {v0}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/com2us/module/push/ShowMsgActivity;->setIntent(Landroid/content/Intent;)V

    .line 64
    invoke-direct {p0, p0, p1}, Lcom/com2us/module/push/ShowMsgActivity;->setDialog(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    return-void
.end method
