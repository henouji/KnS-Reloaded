.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$12;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->iapRestoreItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

.field private final synthetic val$_uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$12;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iput-object p2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$12;->val$_uid:Ljava/lang/String;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$12;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$12;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v1, v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mGotInventoryForRestoreListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->queryInventoryAsync(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v7

    .line 274
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    new-instance v6, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v0, "c2s"

    const-string v1, "11"

    const-string v2, "Wrong request data."

    invoke-direct {v6, v0, v1, v2}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .local v6, "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$12;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v1, 0x3

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$12;->val$_uid:Ljava/lang/String;

    const-string v5, ""

    invoke-static/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
