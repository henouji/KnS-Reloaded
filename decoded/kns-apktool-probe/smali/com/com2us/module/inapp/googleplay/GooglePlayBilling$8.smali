.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->iapInitialize([Ljava/lang/String;Ljava/lang/String;ZI)I
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
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;

    new-instance v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$1;

    invoke-direct {v2, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$1;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)V

    invoke-direct {v1, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver$GooglePlayBroadcastListener;)V

    iput-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mBroadcastReceiver:Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;

    .line 118
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->broadcastFilter:Landroid/content/IntentFilter;

    .line 119
    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v1, v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mBroadcastReceiver:Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;

    iget-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v2, v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->broadcastFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;

    invoke-direct {v1, p0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;-><init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)V

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->startSetup(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabSetupFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v7

    .line 153
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting Error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    const/16 v2, -0x7ca

    const-string v4, "Billing service unavailable on device."

    invoke-direct {v1, v2, v4}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$15(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/GooglePlayResult;)V

    .line 155
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$16(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 156
    new-instance v6, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v1, "googleplay"

    .line 157
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$17(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$17(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Start Setup Error."

    .line 156
    :goto_2
    invoke-direct {v6, v1, v2, v0}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v6, "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v1, 0x3

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    invoke-static/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    .end local v6    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$17(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getResponse()I

    move-result v0

    goto :goto_1

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$17(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
