.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;)V
    .locals 9
    .param p1, "result"    # Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    const-string v0, "Setup finished."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting Error : Problem setting up in-app billing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$15(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Lcom/com2us/module/inapp/googleplay/GooglePlayResult;)V

    .line 129
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$16(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 130
    new-instance v6, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v1, "googleplay"

    .line 131
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$17(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$17(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Start Setup Error."

    .line 130
    :goto_1
    invoke-direct {v6, v1, v2, v0}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v6, "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    invoke-static/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    .end local v6    # "errorStateValue":Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
    :goto_2
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$17(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->getResponse()I

    move-result v0

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$17(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Lcom/com2us/module/inapp/googleplay/GooglePlayResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$16(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;Z)V

    .line 139
    const-string v0, "Setup successful. Querying inventory."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 141
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v8, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->pids:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->pids:[Ljava/lang/String;

    array-length v1, v0

    :goto_3
    if-lt v3, v1, :cond_3

    .line 146
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v1

    iget-object v1, v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mGotInventoryForItemListListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v2, v8, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;)V

    goto :goto_2

    .line 143
    :cond_3
    aget-object v7, v0, v3

    .line 144
    .local v7, "pid":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 148
    .end local v7    # "pid":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v0

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8$2;->this$1:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$8;)Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    move-result-object v1

    iget-object v1, v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mGotInventoryForItemListListener:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->queryInventoryAsync(Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;)V

    goto :goto_2
.end method
