.class public Lcom/com2us/module/push/NotificationRegister;
.super Ljava/lang/Object;
.source "NotificationRegister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static findSoundId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "variable"    # Ljava/lang/String;

    .prologue
    .line 399
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".R$raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "idClass":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 402
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 404
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 406
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "idClass":Ljava/lang/String;
    :goto_0
    return v4

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_0
.end method

.method protected static declared-synchronized setNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 47
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const-class v43, Lcom/com2us/module/push/NotificationRegister;

    monitor-enter v43

    :try_start_0
    const-string v42, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/NotificationManager;

    .line 36
    .local v32, "nm":Landroid/app/NotificationManager;
    const/16 v33, 0x0

    .line 39
    .local v33, "notification":Landroid/app/Notification;
    new-instance v26, Landroid/content/Intent;

    const-class v42, Lcom/com2us/module/push/NotificationMessage;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v26, "messageIntent":Landroid/content/Intent;
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 41
    const-string v44, "active"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v45, "active"

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_9

    const-string v42, "app"

    :goto_0
    move-object/from16 v0, v26

    move-object/from16 v1, v44

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v42, "packageName"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v42, "className"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v44

    const-string v45, "className"

    invoke-virtual/range {v44 .. v45}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "active"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v44, "app"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_0

    const/high16 v42, 0x10800000

    move-object/from16 v0, v26

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    :cond_0
    const/16 v34, 0x0

    .line 50
    .local v34, "pendingIntent":Landroid/app/PendingIntent;
    const-string v42, "iconData"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->getBitmapFromByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 51
    .local v19, "iconBitmap":Landroid/graphics/Bitmap;
    const-string v42, "iconResID"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 52
    .local v20, "iconResID":I
    if-nez v19, :cond_1

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 57
    :cond_1
    sget v42, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v44, 0xb

    move/from16 v0, v42

    move/from16 v1, v44

    if-lt v0, v1, :cond_15

    .line 58
    const-string v42, "Notification in Android 3.0.X and later version"

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "active"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v44, "app"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_2

    .line 62
    const v42, 0x10808000

    move-object/from16 v0, v26

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "noticeID"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    const/high16 v44, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v26

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v34

    .line 69
    new-instance v25, Landroid/app/Notification$Builder;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v25, "mBuilder":Landroid/app/Notification$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "title"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "msg"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "ticker"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "smallIconResID"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v42

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 76
    const/16 v42, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 77
    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 80
    const/16 v35, 0x0

    .line 83
    .local v35, "rView":Landroid/widget/RemoteViews;
    const-string v42, "push_notification"

    const-string v44, "layout"

    const-string v45, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v42

    if-eqz v42, :cond_a

    .line 85
    :try_start_1
    const-string v42, "Custom WidgetStyle"

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 89
    .local v13, "calendar":Ljava/util/Calendar;
    const/16 v42, 0x2

    move/from16 v0, v42

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    .line 90
    .local v28, "month":I
    const/16 v42, 0x5

    move/from16 v0, v42

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 91
    .local v14, "day":I
    const/16 v42, 0xb

    move/from16 v0, v42

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 92
    .local v17, "hr24":I
    const/16 v42, 0xc

    move/from16 v0, v42

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    .line 94
    .local v27, "min":I
    new-instance v15, Ljava/text/DecimalFormat;

    const-string v42, "00"

    move-object/from16 v0, v42

    invoke-direct {v15, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 96
    .local v15, "decimalFormat":Ljava/text/DecimalFormat;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .local v12, "buffer":Ljava/lang/StringBuffer;
    add-int/lit8 v42, v28, 0x1

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-virtual {v15, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    .line 98
    const-string v44, ". "

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    .line 99
    int-to-long v0, v14

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-virtual {v15, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    .line 100
    const-string v44, ". "

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    .line 101
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-virtual {v15, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    .line 102
    const-string v44, ":"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    .line 103
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-virtual {v15, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    new-instance v36, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v42

    const-string v44, "push_notification"

    const-string v45, "layout"

    const-string v46, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v44

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v35    # "rView":Landroid/widget/RemoteViews;
    .local v36, "rView":Landroid/widget/RemoteViews;
    :try_start_2
    const-string v42, "pushnotification_icon"

    const-string v44, "id"

    const-string v45, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    move-object/from16 v0, v36

    move/from16 v1, v42

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 110
    const-string v42, "pushnotification_smallicon"

    const-string v44, "id"

    const-string v45, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v45

    const-string v46, "smallIconResID"

    invoke-virtual/range {v45 .. v46}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v44 .. v45}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v44

    move-object/from16 v0, v36

    move/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 111
    const-string v42, "pushnotification_title"

    const-string v44, "id"

    const-string v45, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v44

    const-string v45, "title"

    invoke-virtual/range {v44 .. v45}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v44

    move-object/from16 v0, v36

    move/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 112
    const-string v42, "pushnotification_msg"

    const-string v44, "id"

    const-string v45, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v44

    const-string v45, "msg"

    invoke-virtual/range {v44 .. v45}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v44

    move-object/from16 v0, v36

    move/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 113
    const-string v42, "pushnotification_bigmsg"

    const-string v44, "id"

    const-string v45, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v44

    const-string v45, "bigmsg"

    invoke-virtual/range {v44 .. v45}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v44

    move-object/from16 v0, v36

    move/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 114
    const-string v42, "pushnotification_timestamp"

    const-string v44, "id"

    const-string v45, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/push/PushConfig;->ResourceID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v36

    move/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 117
    sget v42, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v44, 0x15

    move/from16 v0, v42

    move/from16 v1, v44

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v35, v36

    .line 130
    .end local v12    # "buffer":Ljava/lang/StringBuffer;
    .end local v13    # "calendar":Ljava/util/Calendar;
    .end local v14    # "day":I
    .end local v15    # "decimalFormat":Ljava/text/DecimalFormat;
    .end local v17    # "hr24":I
    .end local v27    # "min":I
    .end local v28    # "month":I
    .end local v36    # "rView":Landroid/widget/RemoteViews;
    .restart local v35    # "rView":Landroid/widget/RemoteViews;
    :goto_1
    :try_start_3
    sget v42, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v44, 0x10

    move/from16 v0, v42

    move/from16 v1, v44

    if-lt v0, v1, :cond_14

    .line 131
    const-string v42, "Notification in Android 4.1 and later version"

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 135
    invoke-static/range {p0 .. p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v37

    .line 137
    .local v37, "stackBuilder":Landroid/app/TaskStackBuilder;
    const-class v42, Lcom/com2us/module/push/NotificationMessage;

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 139
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 141
    const/16 v42, 0x0

    const/high16 v44, 0x8000000

    move-object/from16 v0, v37

    move/from16 v1, v42

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v34

    .line 143
    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 144
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 147
    const/16 v22, 0x0

    .line 150
    .local v22, "isBigPictureStyle":Z
    const-string v42, "bigpictureData"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 151
    .local v9, "bigpictureData":[B
    if-eqz v9, :cond_3

    .line 153
    :try_start_4
    const-string v42, "BigPictureStyle"

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 154
    new-instance v7, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 155
    .local v7, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "title"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "msg"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 157
    const/16 v42, 0x0

    array-length v0, v9

    move/from16 v44, v0

    move/from16 v0, v42

    move/from16 v1, v44

    invoke-static {v9, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 158
    .local v6, "bigPicture":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v6}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 160
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    const/16 v22, 0x1

    .line 169
    .end local v6    # "bigPicture":Landroid/graphics/Bitmap;
    .end local v7    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    :cond_3
    :goto_2
    if-nez v22, :cond_4

    .line 171
    :try_start_5
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v44, "buckettype : "

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v44

    const-string v45, "buckettype"

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v44

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "buckettype"

    const/16 v45, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v42

    packed-switch v42, :pswitch_data_0

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "noticeID"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/com2us/module/push/MsgsOfNoticeID;->clearMsgs(Landroid/content/Context;Ljava/lang/String;)Z

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "bigmsg"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_4

    if-nez v22, :cond_4

    .line 179
    const-string v42, "BigTextStyle"

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 180
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 182
    .local v8, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "bigmsg"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "ticker"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 184
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 263
    .end local v8    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    :cond_4
    :goto_3
    sget v42, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v44, 0x15

    move/from16 v0, v42

    move/from16 v1, v44

    if-lt v0, v1, :cond_5

    .line 264
    const-string v42, "Notification in Android 5.0 and later version and not used custom widget style."

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 266
    const/16 v42, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 267
    const-string v42, "msg"

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 268
    const/16 v42, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 271
    new-instance v42, Landroid/app/Notification$WearableExtender;

    invoke-direct/range {v42 .. v42}, Landroid/app/Notification$WearableExtender;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v44

    const-string v45, "smallIconResID"

    invoke-virtual/range {v44 .. v45}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/Notification$WearableExtender;->setContentIcon(I)Landroid/app/Notification$WearableExtender;

    move-result-object v42

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 296
    :cond_5
    invoke-virtual/range {v25 .. v25}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v33

    .line 298
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v42, v0

    if-eqz v42, :cond_6

    sget v42, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v44, 0x15

    move/from16 v0, v42

    move/from16 v1, v44

    if-lt v0, v1, :cond_6

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    iput-object v0, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 319
    .end local v9    # "bigpictureData":[B
    .end local v22    # "isBigPictureStyle":Z
    .end local v25    # "mBuilder":Landroid/app/Notification$Builder;
    .end local v35    # "rView":Landroid/widget/RemoteViews;
    .end local v37    # "stackBuilder":Landroid/app/TaskStackBuilder;
    :cond_6
    :goto_4
    const-string v42, "isSound"

    const/16 v44, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 320
    .local v23, "isSound":I
    const/16 v42, 0x2

    move/from16 v0, v23

    move/from16 v1, v42

    if-eq v0, v1, :cond_7

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "sound"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    if-eqz v42, :cond_17

    const-string v42, ""

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v44

    const-string v45, "sound"

    invoke-virtual/range {v44 .. v45}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_17

    .line 323
    sget v42, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v44, 0x15

    move/from16 v0, v42

    move/from16 v1, v44

    if-ge v0, v1, :cond_16

    .line 324
    const/16 v42, 0x5

    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Landroid/app/Notification;->audioStreamType:I

    .line 332
    :goto_5
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v44, "android.resource://"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v44

    const-string v45, "packageName"

    invoke-virtual/range {v44 .. v45}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v44, "/"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v44

    const-string v45, "packageName"

    invoke-virtual/range {v44 .. v45}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v45

    const-string v46, "sound"

    invoke-virtual/range {v45 .. v46}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/com2us/module/push/NotificationRegister;->findSoundId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v44

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 333
    .local v39, "uri":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 342
    .end local v39    # "uri":Ljava/lang/String;
    :cond_7
    :goto_6
    const-string v42, "isVib"

    const/16 v44, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 343
    .local v24, "isVib":I
    const/16 v42, 0x2

    move/from16 v0, v24

    move/from16 v1, v42

    if-eq v0, v1, :cond_8

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "vib"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v42

    if-eqz v42, :cond_19

    .line 347
    :try_start_6
    move-object/from16 v0, v33

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v44, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v45, "vib"

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    const/16 v45, 0x1

    move/from16 v0, v42

    move/from16 v1, v45

    if-ne v0, v1, :cond_18

    const/16 v42, 0x2

    :goto_7
    or-int v42, v42, v44

    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Landroid/app/Notification;->defaults:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 359
    :cond_8
    :goto_8
    const/16 v42, 0x0

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v44

    const-string v45, "noticeID"

    invoke-virtual/range {v44 .. v45}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    move/from16 v2, v44

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 360
    monitor-exit v43

    return-void

    .line 41
    .end local v19    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v20    # "iconResID":I
    .end local v23    # "isSound":I
    .end local v24    # "isVib":I
    .end local v34    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_9
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v45, "active"

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_0

    .line 119
    .restart local v19    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v20    # "iconResID":I
    .restart local v25    # "mBuilder":Landroid/app/Notification$Builder;
    .restart local v34    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v35    # "rView":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v16

    .line 120
    .local v16, "e":Ljava/lang/Exception;
    :goto_9
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v44, "Custom WidgetStyle Exception : "

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 33
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v19    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v20    # "iconResID":I
    .end local v25    # "mBuilder":Landroid/app/Notification$Builder;
    .end local v26    # "messageIntent":Landroid/content/Intent;
    .end local v32    # "nm":Landroid/app/NotificationManager;
    .end local v33    # "notification":Landroid/app/Notification;
    .end local v34    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v35    # "rView":Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v42

    monitor-exit v43

    throw v42

    .line 125
    .restart local v19    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v20    # "iconResID":I
    .restart local v25    # "mBuilder":Landroid/app/Notification$Builder;
    .restart local v26    # "messageIntent":Landroid/content/Intent;
    .restart local v32    # "nm":Landroid/app/NotificationManager;
    .restart local v33    # "notification":Landroid/app/Notification;
    .restart local v34    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v35    # "rView":Landroid/widget/RemoteViews;
    :cond_a
    :try_start_9
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    .line 162
    .restart local v9    # "bigpictureData":[B
    .restart local v22    # "isBigPictureStyle":Z
    .restart local v37    # "stackBuilder":Landroid/app/TaskStackBuilder;
    :catch_1
    move-exception v16

    .line 163
    .restart local v16    # "e":Ljava/lang/Exception;
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v44, "BigPictureStyle Exception : "

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 164
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 190
    .end local v16    # "e":Ljava/lang/Exception;
    :pswitch_0
    const/16 v30, 0x0

    .line 192
    .local v30, "newMsg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "htmlbigmsg"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_e

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "htmlbigmsg"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 201
    :cond_b
    :goto_a
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_c

    .line 202
    const-string v30, ""

    .line 204
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "noticeID"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/com2us/module/push/MsgsOfNoticeID;->addMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 206
    .local v31, "newSeqArray":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "bucketsize"

    const/16 v45, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 207
    .local v10, "bucketsize":I
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v42

    if-le v10, v0, :cond_d

    move-object/from16 v0, v31

    array-length v10, v0

    .line 208
    :cond_d
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 209
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v44, "final bucketsize : "

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v44, ", msgsArray.length : "

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "buckettype"

    const/16 v45, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v42

    packed-switch v42, :pswitch_data_1

    goto/16 :goto_3

    .line 213
    :pswitch_1
    const-string v42, "buckettype : InboxStyle"

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    .line 216
    .local v29, "msgsArray":[Ljava/lang/CharSequence;
    const/16 v40, 0x0

    .line 217
    .local v40, "y":I
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v44, v0

    const/16 v42, 0x0

    :goto_b
    move/from16 v0, v42

    move/from16 v1, v44

    if-lt v0, v1, :cond_11

    .line 223
    new-instance v21, Landroid/app/Notification$InboxStyle;

    invoke-direct/range {v21 .. v21}, Landroid/app/Notification$InboxStyle;-><init>()V

    .line 224
    .local v21, "inboxStyle":Landroid/app/Notification$InboxStyle;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_c
    move/from16 v0, v18

    if-lt v0, v10, :cond_12

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "ticker"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 234
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 194
    .end local v10    # "bucketsize":I
    .end local v18    # "i":I
    .end local v21    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v29    # "msgsArray":[Ljava/lang/CharSequence;
    .end local v31    # "newSeqArray":[Ljava/lang/String;
    .end local v40    # "y":I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "htmlmsg"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_f

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "htmlmsg"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_a

    .line 196
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "bigmsg"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_10

    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "bigmsg"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_a

    .line 198
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "msg"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_b

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "msg"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_a

    .line 217
    .restart local v10    # "bucketsize":I
    .restart local v29    # "msgsArray":[Ljava/lang/CharSequence;
    .restart local v31    # "newSeqArray":[Ljava/lang/String;
    .restart local v40    # "y":I
    :cond_11
    aget-object v38, v31, v42

    .line 218
    .local v38, "string":Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v45

    aput-object v45, v29, v40

    .line 219
    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "msgsArray["

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "] : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    aget-object v46, v29, v40

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 220
    add-int/lit8 v40, v40, 0x1

    .line 217
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_b

    .line 226
    .end local v38    # "string":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v21    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :cond_12
    :try_start_a
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v42, v0

    sub-int v42, v42, v18

    add-int/lit8 v42, v42, -0x1

    aget-object v42, v29, v42

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 227
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v44, "Inbox text : "

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v44, v0

    sub-int v44, v44, v18

    add-int/lit8 v44, v44, -0x1

    aget-object v44, v29, v44

    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 224
    :goto_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_c

    .line 228
    :catch_2
    move-exception v16

    .line 229
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_b
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v44, "InboxStyle Exception : "

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    goto :goto_d

    .line 238
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "i":I
    .end local v21    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v29    # "msgsArray":[Ljava/lang/CharSequence;
    .end local v40    # "y":I
    :pswitch_2
    const-string v42, "buckettype : BigTextStyle"

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 240
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    aget-object v42, v31, v42

    move-object/from16 v0, v42

    invoke-direct {v11, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 241
    .local v11, "buf":Ljava/lang/StringBuffer;
    const/16 v41, 0x1

    .local v41, "z":I
    :goto_e
    move/from16 v0, v41

    if-lt v0, v10, :cond_13

    .line 244
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v44, "buf.toString() : "

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 246
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 247
    .restart local v8    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v44, "buckket bigText : "

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "ticker"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 251
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 242
    .end local v8    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    :cond_13
    const-string v42, "<br />"

    move-object/from16 v0, v42

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v44, v0

    sub-int v44, v44, v41

    add-int/lit8 v44, v44, -0x1

    aget-object v44, v31, v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_e

    .line 301
    .end local v9    # "bigpictureData":[B
    .end local v10    # "bucketsize":I
    .end local v11    # "buf":Ljava/lang/StringBuffer;
    .end local v22    # "isBigPictureStyle":Z
    .end local v30    # "newMsg":Ljava/lang/String;
    .end local v31    # "newSeqArray":[Ljava/lang/String;
    .end local v37    # "stackBuilder":Landroid/app/TaskStackBuilder;
    .end local v41    # "z":I
    :cond_14
    invoke-virtual/range {v25 .. v25}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v33

    .line 305
    goto/16 :goto_4

    .line 306
    .end local v25    # "mBuilder":Landroid/app/Notification$Builder;
    .end local v35    # "rView":Landroid/widget/RemoteViews;
    :cond_15
    const-string v42, "Notification in Android 2.3.4 and before version"

    invoke-static/range {v42 .. v42}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "noticeID"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    const/high16 v44, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v26

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v34

    .line 310
    new-instance v33, Landroid/app/Notification;

    .end local v33    # "notification":Landroid/app/Notification;
    invoke-direct/range {v33 .. v33}, Landroid/app/Notification;-><init>()V

    .line 311
    .restart local v33    # "notification":Landroid/app/Notification;
    move/from16 v0, v20

    move-object/from16 v1, v33

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "ticker"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, v33

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 314
    move-object/from16 v0, v33

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v42, v0

    or-int/lit8 v42, v42, 0x10

    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v42

    const-string v44, "title"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v42

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v44

    const-string v45, "msg"

    invoke-virtual/range {v44 .. v45}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v44

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v44

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_4

    .line 326
    .restart local v23    # "isSound":I
    :cond_16
    sget-object v42, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    iput-object v0, v1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    goto/16 :goto_5

    .line 336
    :cond_17
    move-object/from16 v0, v33

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v42, v0

    or-int/lit8 v42, v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Landroid/app/Notification;->defaults:I

    goto/16 :goto_6

    .line 347
    .restart local v24    # "isVib":I
    :cond_18
    const/16 v42, 0x0

    goto/16 :goto_7

    .line 354
    :cond_19
    move-object/from16 v0, v33

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v42, v0

    or-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Landroid/app/Notification;->defaults:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_8

    .line 348
    :catch_3
    move-exception v42

    goto/16 :goto_8

    .line 119
    .end local v23    # "isSound":I
    .end local v24    # "isVib":I
    .restart local v12    # "buffer":Ljava/lang/StringBuffer;
    .restart local v13    # "calendar":Ljava/util/Calendar;
    .restart local v14    # "day":I
    .restart local v15    # "decimalFormat":Ljava/text/DecimalFormat;
    .restart local v17    # "hr24":I
    .restart local v25    # "mBuilder":Landroid/app/Notification$Builder;
    .restart local v27    # "min":I
    .restart local v28    # "month":I
    .restart local v36    # "rView":Landroid/widget/RemoteViews;
    :catch_4
    move-exception v16

    move-object/from16 v35, v36

    .end local v36    # "rView":Landroid/widget/RemoteViews;
    .restart local v35    # "rView":Landroid/widget/RemoteViews;
    goto/16 :goto_9

    .end local v35    # "rView":Landroid/widget/RemoteViews;
    .restart local v36    # "rView":Landroid/widget/RemoteViews;
    :cond_1a
    move-object/from16 v35, v36

    .end local v36    # "rView":Landroid/widget/RemoteViews;
    .restart local v35    # "rView":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 211
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static setToast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 364
    new-instance v0, Lcom/com2us/module/push/NotificationRegister$1;

    invoke-direct {v0, p0, p1}, Lcom/com2us/module/push/NotificationRegister$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method
