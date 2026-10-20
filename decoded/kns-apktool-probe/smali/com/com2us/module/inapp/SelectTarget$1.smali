.class Lcom/com2us/module/inapp/SelectTarget$1;
.super Ljava/lang/Object;
.source "SelectTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/SelectTarget;->iapSelectTarget(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;Lcom/com2us/module/inapp/SelectTargetCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$glView:Lcom/com2us/module/view/SurfaceViewWrapper;

.field private final synthetic val$targetCB:Lcom/com2us/module/inapp/SelectTargetCallback;

.field private final synthetic val$targetCBRef:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/SelectTarget$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/com2us/module/inapp/SelectTarget$1;->val$targetCB:Lcom/com2us/module/inapp/SelectTargetCallback;

    iput-object p3, p0, Lcom/com2us/module/inapp/SelectTarget$1;->val$glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    iput p4, p0, Lcom/com2us/module/inapp/SelectTarget$1;->val$targetCBRef:I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/com2us/module/inapp/SelectTarget;->access$0(Landroid/app/Activity;)V

    .line 75
    new-instance v17, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$activity:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v5}, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;-><init>(Landroid/content/Context;Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;)V

    .line 76
    .local v17, "propertyUtil":Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v4, "jsonObjectPostData":Lorg/json/JSONObject;
    const-string v8, ""

    .line 81
    .local v8, "appversion":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 82
    .local v11, "i":Landroid/content/pm/PackageInfo;
    iget-object v8, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v11    # "i":Landroid/content/pm/PackageInfo;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$activity:Landroid/app/Activity;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    .line 96
    .local v22, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v15

    .line 97
    .local v15, "networkOperator":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_5

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v19

    .line 98
    .local v19, "simOperator":Ljava/lang/String;
    :goto_1
    const-string v16, ""

    .line 100
    .local v16, "operator":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 101
    move-object/from16 v16, v15

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SelectTarget get networkOperator = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 110
    :goto_2
    const/4 v13, 0x0

    .line 111
    .local v13, "mcc":I
    const/4 v14, 0x0

    .line 113
    .local v14, "mnc":I
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 115
    const/4 v2, 0x0

    const/4 v5, 0x3

    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SelectTarget mcc = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 117
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SelectTarget mnc = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :goto_3
    const-string v2, "last_iap"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/com2us/module/inapp/SelectTarget$PropertyUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 130
    .local v21, "strLast_iap":Ljava/lang/String;
    const/4 v12, 0x0

    .line 131
    .local v12, "last_iap":I
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 133
    :try_start_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SelectTarget last_iap : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    :goto_4
    const/4 v10, 0x1

    .line 146
    .local v10, "google_service":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/com2us/module/inapp/SelectTarget;->access$1(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 151
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SelectTarget google_service : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 154
    :try_start_4
    const-string v2, "appid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v2, "appversion"

    invoke-virtual {v4, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v2, "device"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v2, "osversion"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v2, "country"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v2, "language"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v2, "libver"

    sget-object v5, Lcom/com2us/module/inapp/InApp;->Version:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    if-eqz v13, :cond_0

    const-string v2, "mcc"

    invoke-virtual {v4, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    :cond_0
    if-eqz v14, :cond_1

    const-string v2, "mnc"

    invoke-virtual {v4, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    :cond_1
    if-eqz v12, :cond_2

    const-string v2, "last_iap"

    invoke-virtual {v4, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    :cond_2
    const-string v2, "google_service"

    invoke-virtual {v4, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 172
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SelectTarget jsonObjectPostData : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 175
    const/16 v20, 0xc9

    .line 176
    .local v20, "state":I
    const/4 v3, 0x0

    .line 177
    .local v3, "target":I
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "https://testowner.github.io/testrepo/common/billing/check2.c2s"

    invoke-static {v2, v5}, Lcom/com2us/module/inapp/DefaultBilling;->sendToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 179
    .local v18, "responseStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "responseStr : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 183
    if-nez v18, :cond_3

    :try_start_5
    const-string v18, ""

    .line 184
    :cond_3
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    .local v23, "toBeParsed":Lorg/json/JSONObject;
    const-string v2, "type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Target : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 192
    .end local v23    # "toBeParsed":Lorg/json/JSONObject;
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/com2us/module/inapp/SelectTarget;->access$2(Landroid/app/Activity;)V

    .line 194
    if-lez v3, :cond_c

    .line 198
    const/4 v2, 0x1

    if-ne v3, v2, :cond_4

    const/16 v2, 0xf

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/com2us/module/inapp/InApp;->getClassName(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/SelectTarget;->access$3(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    const/16 v3, 0xf

    .line 203
    :cond_4
    const/16 v2, 0x64

    if-ne v3, v2, :cond_a

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$targetCB:Lcom/com2us/module/inapp/SelectTargetCallback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$targetCBRef:I

    invoke-static/range {v2 .. v7}, Lcom/com2us/module/inapp/SelectTarget;->access$4(Landroid/app/Activity;ILorg/json/JSONObject;Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;I)V

    .line 228
    :goto_8
    return-void

    .line 83
    .end local v3    # "target":I
    .end local v10    # "google_service":Z
    .end local v12    # "last_iap":I
    .end local v13    # "mcc":I
    .end local v14    # "mnc":I
    .end local v15    # "networkOperator":Ljava/lang/String;
    .end local v16    # "operator":Ljava/lang/String;
    .end local v18    # "responseStr":Ljava/lang/String;
    .end local v19    # "simOperator":Ljava/lang/String;
    .end local v20    # "state":I
    .end local v21    # "strLast_iap":Ljava/lang/String;
    .end local v22    # "tel":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v9

    .line 84
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 97
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15    # "networkOperator":Ljava/lang/String;
    .restart local v22    # "tel":Landroid/telephony/TelephonyManager;
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 103
    .restart local v16    # "operator":Ljava/lang/String;
    .restart local v19    # "simOperator":Ljava/lang/String;
    :cond_6
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 104
    move-object/from16 v16, v19

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SelectTarget get simOperator = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 107
    :cond_7
    const-string v16, ""

    goto/16 :goto_2

    .line 119
    .restart local v13    # "mcc":I
    .restart local v14    # "mnc":I
    :catch_1
    move-exception v9

    .line 120
    .local v9, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SelectTarget mcc | mnc parse exception : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 121
    const/4 v13, 0x0

    .line 122
    const/4 v14, 0x0

    .line 124
    goto/16 :goto_3

    .line 125
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v2, "SelectTarget getOperator is empty"

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 135
    .restart local v12    # "last_iap":I
    .restart local v21    # "strLast_iap":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 136
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SelectTarget string selected parse exception : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 137
    const/4 v12, 0x0

    .line 139
    goto/16 :goto_4

    .line 140
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_9
    const-string v2, "SelectTarget last_iap is empty"

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 147
    .restart local v10    # "google_service":Z
    :catch_3
    move-exception v9

    .line 148
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SelectTarget check device exception : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 149
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 169
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 170
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SelectTarget create jsonData exception : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 187
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "target":I
    .restart local v18    # "responseStr":Ljava/lang/String;
    .restart local v20    # "state":I
    :catch_5
    move-exception v9

    .line 188
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SelectTarget responseStr exception : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/DefaultBilling;->LogI(Ljava/lang/String;)V

    .line 189
    move v3, v12

    goto/16 :goto_7

    .line 207
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_a
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/com2us/module/inapp/InApp;->getClassName(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/SelectTarget;->access$3(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 208
    const/16 v20, 0xc8

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$targetCB:Lcom/com2us/module/inapp/SelectTargetCallback;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$targetCBRef:I

    move/from16 v0, v20

    invoke-static {v2, v5, v6, v0, v3}, Lcom/com2us/module/inapp/SelectTarget;->access$5(Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;III)V

    goto/16 :goto_8

    .line 212
    :cond_b
    const/16 v20, 0xc9

    .line 213
    mul-int/lit8 v3, v3, -0x1

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$targetCB:Lcom/com2us/module/inapp/SelectTargetCallback;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$targetCBRef:I

    move/from16 v0, v20

    invoke-static {v2, v5, v6, v0, v3}, Lcom/com2us/module/inapp/SelectTarget;->access$5(Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;III)V

    goto/16 :goto_8

    .line 221
    :cond_c
    const/16 v20, 0xc8

    .line 222
    const/4 v3, 0x1

    .line 223
    const/4 v2, 0x1

    if-ne v3, v2, :cond_d

    const/16 v2, 0xf

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/com2us/module/inapp/InApp;->getClassName(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/SelectTarget;->access$3(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 224
    const/16 v3, 0xf

    .line 225
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$targetCB:Lcom/com2us/module/inapp/SelectTargetCallback;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$glView:Lcom/com2us/module/view/SurfaceViewWrapper;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/inapp/SelectTarget$1;->val$targetCBRef:I

    move/from16 v0, v20

    invoke-static {v2, v5, v6, v0, v3}, Lcom/com2us/module/inapp/SelectTarget;->access$5(Lcom/com2us/module/inapp/SelectTargetCallback;Lcom/com2us/module/view/SurfaceViewWrapper;III)V

    goto/16 :goto_8
.end method
