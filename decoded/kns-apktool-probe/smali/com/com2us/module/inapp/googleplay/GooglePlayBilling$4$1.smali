.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4$1;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->onIabPurchaseFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$4;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v1

    iget-object v1, v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mGotInventoryForConsumeListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->queryInventoryAsync(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;)V

    .line 719
    return-void
.end method
