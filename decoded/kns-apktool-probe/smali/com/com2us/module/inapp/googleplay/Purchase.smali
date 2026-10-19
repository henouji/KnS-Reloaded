.class public Lcom/com2us/module/inapp/googleplay/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# instance fields
.field mAddtionalInfo:Ljava/lang/String;

.field mDeveloperPayload:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mManaged:Z

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;

.field mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "jsonPurchaseInfo"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mItemType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 44
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "o":Lorg/json/JSONObject;
    const-string v3, "orderId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mOrderId:Ljava/lang/String;

    .line 46
    const-string v3, "packageName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mPackageName:Ljava/lang/String;

    .line 47
    const-string v3, "productId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mSku:Ljava/lang/String;

    .line 48
    const-string v3, "purchaseTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mPurchaseTime:J

    .line 49
    const-string v3, "purchaseState"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mPurchaseState:I

    .line 50
    const-string v3, "developerPayload"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 51
    const-string v3, "token"

    const-string v4, "purchaseToken"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mToken:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mSignature:Ljava/lang/String;

    .line 54
    :try_start_0
    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "payload":Lorg/json/JSONObject;
    const-string v3, "isManaged"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mManaged:Z

    .line 57
    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mUid:Ljava/lang/String;

    .line 58
    const-string v3, "addtionalInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mAddtionalInfo:Ljava/lang/String;

    .line 70
    .end local v2    # "payload":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mManaged:Z

    .line 61
    const-string v3, "0"

    iput-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mUid:Ljava/lang/String;

    .line 62
    const-string v3, ""

    iput-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mAddtionalInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    iput-boolean v6, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mManaged:Z

    .line 67
    const-string v3, "0"

    iput-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mUid:Ljava/lang/String;

    .line 68
    const-string v3, ""

    iput-object v3, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mAddtionalInfo:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAddtionalInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mAddtionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getManaged()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mManaged:Z

    return v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mPurchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseInfo(type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
