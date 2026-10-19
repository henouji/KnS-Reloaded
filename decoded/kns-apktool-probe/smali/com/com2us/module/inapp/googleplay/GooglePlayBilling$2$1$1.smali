.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1$1;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;

.field private final synthetic val$consumItemList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1$1;->this$2:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;

    iput-object p2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1$1;->val$consumItemList:Ljava/util/List;

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 595
    const-string v0, "Starting Multi consumption."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1$1;->this$2:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1$1;->val$consumItemList:Ljava/util/List;

    iget-object v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1$1;->this$2:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2$1;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;

    move-result-object v2

    invoke-static {v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$2;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v2

    iget-object v2, v2, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mConsumeMultiFinishedListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->consumeAsync(Ljava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;)V

    .line 597
    return-void
.end method
