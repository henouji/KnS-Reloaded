.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;
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
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/com2us/module/inapp/googleplay/GooglePlayResult;Lcom/com2us/module/inapp/googleplay/Inventory;)V
    .locals 10
    .param p1, "result"    # Lcom/com2us/module/inapp/googleplay/GooglePlayResult;
    .param p2, "inventory"    # Lcom/com2us/module/inapp/googleplay/Inventory;

    .prologue
    .line 455
    const-string v0, "Query inventory for Itemlist finished."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lcom/com2us/module/inapp/googleplay/GooglePlayResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inventory Error : Failed to query inventory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 519
    :goto_0
    return-void

    .line 463
    :cond_0
    const-string v0, "Query inventory was successful."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->pids:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->pids:[Ljava/lang/String;

    array-length v0, v0

    new-array v6, v0, [Lcom/com2us/module/inapp/InAppCallback$ItemList;

    .line 469
    .local v6, "itemList":[Lcom/com2us/module/inapp/InAppCallback$ItemList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->pids:[Ljava/lang/String;

    array-length v0, v0

    if-lt v8, v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    invoke-static/range {v0 .. v6}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$1(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    goto :goto_0

    .line 470
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->pids:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-virtual {p2, v0}, Lcom/com2us/module/inapp/googleplay/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->pids:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-virtual {p2, v0}, Lcom/com2us/module/inapp/googleplay/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/com2us/module/inapp/googleplay/SkuDetails;

    move-result-object v9

    .line 473
    .local v9, "skuDetails":Lcom/com2us/module/inapp/googleplay/SkuDetails;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "skuDetails.getSku() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "skuDetails.getPrice() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "skuDetails.getPrice_amount_micros() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getPrice_amount_micros()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "skuDetails.getPrice_currency_code() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getPrice_currency_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "skuDetails.getTitle() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "skuDetails.getDescription() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "skuDetails.getType() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 485
    new-instance v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;

    invoke-direct {v0}, Lcom/com2us/module/inapp/InAppCallback$ItemList;-><init>()V

    aput-object v0, v6, v8

    .line 486
    aget-object v0, v6, v8

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->productID:Ljava/lang/String;

    .line 487
    aget-object v0, v6, v8

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->formattedString:Ljava/lang/String;

    .line 489
    aget-object v0, v6, v8

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->localizedTitle:Ljava/lang/String;

    .line 490
    aget-object v0, v6, v8

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->localizedDescription:Ljava/lang/String;

    .line 491
    aget-object v0, v6, v8

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getPrice_currency_code()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->currencyCode:Ljava/lang/String;

    .line 492
    aget-object v0, v6, v8

    invoke-virtual {v9}, Lcom/com2us/module/inapp/googleplay/SkuDetails;->getPrice_amount_micros()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->amountMicros:J

    .line 469
    .end local v9    # "skuDetails":Lcom/com2us/module/inapp/googleplay/SkuDetails;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 495
    :cond_2
    new-instance v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;

    invoke-direct {v0}, Lcom/com2us/module/inapp/InAppCallback$ItemList;-><init>()V

    aput-object v0, v6, v8

    .line 496
    aget-object v0, v6, v8

    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v1, v1, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->pids:[Ljava/lang/String;

    aget-object v1, v1, v8

    iput-object v1, v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->productID:Ljava/lang/String;

    .line 497
    aget-object v0, v6, v8

    const-string v1, ""

    iput-object v1, v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->formattedString:Ljava/lang/String;

    .line 498
    aget-object v0, v6, v8

    const-string v1, ""

    iput-object v1, v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->localizedTitle:Ljava/lang/String;

    .line 499
    aget-object v0, v6, v8

    const-string v1, ""

    iput-object v1, v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->localizedDescription:Ljava/lang/String;

    .line 500
    aget-object v0, v6, v8

    const-string v1, ""

    iput-object v1, v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->currencyCode:Ljava/lang/String;

    .line 501
    aget-object v0, v6, v8

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->amountMicros:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 506
    .end local v6    # "itemList":[Lcom/com2us/module/inapp/InAppCallback$ItemList;
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 508
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "itemListData Exception"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 511
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    goto/16 :goto_0

    .line 510
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 511
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    .line 512
    throw v0

    .line 516
    :cond_3
    const-string v0, "itemListData is nothing"

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$1;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$0(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V

    goto/16 :goto_0
.end method
