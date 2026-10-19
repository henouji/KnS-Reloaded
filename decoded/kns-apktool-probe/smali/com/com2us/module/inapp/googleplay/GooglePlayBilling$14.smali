.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->iapBuyItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

.field private final synthetic val$_addtionalInfo:Ljava/lang/String;

.field private final synthetic val$_pid:Ljava/lang/String;

.field private final synthetic val$_quantity:I

.field private final synthetic val$_uid:Ljava/lang/String;

.field private final synthetic val$payload:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iput-object p2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->val$_pid:Ljava/lang/String;

    iput-object p3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->val$payload:Lorg/json/JSONObject;

    iput p4, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->val$_quantity:I

    iput-object p5, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->val$_uid:Ljava/lang/String;

    iput-object p6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->val$_addtionalInfo:Ljava/lang/String;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 332
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    .line 333
    .local v3, "requestCode":I
    if-gez v3, :cond_0

    neg-int v3, v3

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->val$_pid:Ljava/lang/String;

    iget-object v4, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v4, v4, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mPurchaseFinishedListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;

    iget-object v5, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->val$payload:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v3    # "requestCode":I
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v11

    .line 338
    .local v11, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v0, "c2s"

    const-string v1, "11"

    const-string v2, "Wrong request data."

    invoke-direct {v10, v0, v1, v2}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .local v10, "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    iget-object v4, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->val$_pid:Ljava/lang/String;

    iget v7, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->val$_quantity:I

    iget-object v8, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->val$_uid:Ljava/lang/String;

    iget-object v9, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$14;->val$_addtionalInfo:Ljava/lang/String;

    invoke-static/range {v4 .. v10}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
