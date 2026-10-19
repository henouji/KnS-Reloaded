.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$15;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->destroy()V
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
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$15;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 414
    :try_start_0
    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$15;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v2, v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mBroadcastReceiver:Lcom/com2us/module/inapp/googleplay/GooglePlayBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
