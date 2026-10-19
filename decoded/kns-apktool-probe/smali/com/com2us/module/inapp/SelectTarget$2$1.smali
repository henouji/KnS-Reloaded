.class Lcom/com2us/module/inapp/SelectTarget$2$1;
.super Ljava/lang/Object;
.source "SelectTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/SelectTarget$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/inapp/SelectTarget$2;

.field private final synthetic val$data:Lorg/json/JSONObject;

.field private final synthetic val$targetNumber:I


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/SelectTarget$2;Lorg/json/JSONObject;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/SelectTarget$2$1;->this$1:Lcom/com2us/module/inapp/SelectTarget$2;

    iput-object p2, p0, Lcom/com2us/module/inapp/SelectTarget$2$1;->val$data:Lorg/json/JSONObject;

    iput p3, p0, Lcom/com2us/module/inapp/SelectTarget$2$1;->val$targetNumber:I

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/com2us/module/inapp/SelectTarget$2$1;->val$data:Lorg/json/JSONObject;

    .line 316
    .local v1, "sendData":Lorg/json/JSONObject;
    const-string v2, "select"

    iget v3, p0, Lcom/com2us/module/inapp/SelectTarget$2$1;->val$targetNumber:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 317
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://10.0.2.2:8080/common/billing/select_log.c2s"

    invoke-static {v2, v3}, Lcom/com2us/module/inapp/DefaultBilling;->sendToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v1    # "sendData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
