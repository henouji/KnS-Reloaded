.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3$1;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;->onQueryInventoryFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Inventory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;

.field private final synthetic val$inventory:Lcom/com2us/module/inapp/googleplay/Inventory;

.field private final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;Lcom/com2us/module/inapp/googleplay/Inventory;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;

    iput-object p2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3$1;->val$inventory:Lcom/com2us/module/inapp/googleplay/Inventory;

    iput-object p3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3$1;->val$sku:Ljava/lang/String;

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 687
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3$1;->val$inventory:Lcom/com2us/module/inapp/googleplay/Inventory;

    iget-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3$1;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/com2us/module/inapp/googleplay/Inventory;->getPurchase(Ljava/lang/String;)Lcom/com2us/module/inapp/googleplay/Purchase;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$3;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v2

    iget-object v2, v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mConsumeFinishedListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->consumeAsync(Lcom/com2us/module/inapp/googleplay/Purchase;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeFinishedListener;)V

    .line 688
    return-void
.end method
