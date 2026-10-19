.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$18;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->sendLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$18;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1056
    new-instance v0, Lcom/com2us/module/inapp/googleplay/BillingDatabase;

    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;-><init>(Landroid/content/Context;)V

    .line 1059
    .local v0, "db":Lcom/com2us/module/inapp/googleplay/BillingDatabase;
    :try_start_0
    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->getLogData()[[Ljava/lang/String;

    move-result-object v4

    .line 1060
    .local v4, "logData":[[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_0
    array-length v9, v4

    if-lt v8, v9, :cond_1

    .line 1064
    if-eqz v4, :cond_0

    .line 1066
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v9, :cond_2

    .line 1105
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 1107
    return-void

    .line 1061
    :cond_1
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "logData["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "][0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v8

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 1060
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1068
    .restart local v3    # "i":I
    :cond_2
    aget-object v9, v4, v3

    const/4 v10, 0x0

    aget-object v10, v9, v10

    .line 1069
    iget-object v9, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$18;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v9}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$22(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0xb

    invoke-static {v9}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1067
    :goto_2
    invoke-static {v10, v9}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$23(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 1070
    .local v5, "responseStr":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1071
    .local v6, "resultLog":I
    const/4 v2, 0x0

    .line 1073
    .local v2, "errormsg":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1076
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v7, "toBeParsed":Lorg/json/JSONObject;
    const-string v9, "result"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1078
    const-string v9, "errormsg"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1080
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ErrorMsg : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1089
    .end local v7    # "toBeParsed":Lorg/json/JSONObject;
    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 1066
    :goto_4
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1069
    .end local v2    # "errormsg":Ljava/lang/String;
    .end local v5    # "responseStr":Ljava/lang/String;
    .end local v6    # "resultLog":I
    :cond_3
    const/16 v9, 0xa

    :try_start_3
    invoke-static {v9}, Lcom/com2us/module/inapp/googleplay/Utility;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 1082
    .restart local v2    # "errormsg":Ljava/lang/String;
    .restart local v5    # "responseStr":Ljava/lang/String;
    .restart local v6    # "resultLog":I
    :catch_0
    move-exception v1

    .line 1083
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1104
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "errormsg":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "logData":[[Ljava/lang/String;
    .end local v5    # "responseStr":Ljava/lang/String;
    .end local v6    # "resultLog":I
    .end local v8    # "y":I
    :catchall_0
    move-exception v9

    .line 1105
    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->close()V

    .line 1106
    throw v9

    .line 1086
    .restart local v2    # "errormsg":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "logData":[[Ljava/lang/String;
    .restart local v5    # "responseStr":Ljava/lang/String;
    .restart local v6    # "resultLog":I
    .restart local v8    # "y":I
    :cond_4
    :try_start_4
    const-string v9, "responseStr is null"

    invoke-static {v9}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    goto :goto_3

    .line 1091
    :pswitch_1
    aget-object v9, v4, v3

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v0, v9}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->deleteLogData(Ljava/lang/String;)V

    goto :goto_4

    .line 1096
    :pswitch_2
    aget-object v9, v4, v3

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v0, v9}, Lcom/com2us/module/inapp/googleplay/BillingDatabase;->deleteLogData(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 1089
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
