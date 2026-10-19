.class Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2$1;
.super Ljava/lang/Object;
.source "GooglePlayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;

.field private final synthetic val$inv_f:Lcom/com2us/module/inapp/googleplay/Inventory;

.field private final synthetic val$listener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

.field private final synthetic val$result_f:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Inventory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2$1;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2;

    iput-object p2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2$1;->val$listener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    iput-object p3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2$1;->val$result_f:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    iput-object p4, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2$1;->val$inv_f:Lcom/com2us/module/inapp/googleplay/Inventory;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 645
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2$1;->val$listener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2$1;->val$result_f:Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    iget-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$2$1;->val$inv_f:Lcom/com2us/module/inapp/googleplay/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Inventory;)V

    .line 646
    return-void
.end method
