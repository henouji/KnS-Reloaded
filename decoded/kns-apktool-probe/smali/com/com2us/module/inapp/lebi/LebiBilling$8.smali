.class Lcom/com2us/module/inapp/lebi/LebiBilling$8;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling;->iapBuyItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

.field private final synthetic val$addtionalInfo:Ljava/lang/String;

.field private final synthetic val$pid:Ljava/lang/String;

.field private final synthetic val$quantity:I

.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iput-object p2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$pid:Ljava/lang/String;

    iput p3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$quantity:I

    iput-object p4, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$uid:Ljava/lang/String;

    iput-object p5, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$addtionalInfo:Ljava/lang/String;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/inapp/lebi/LebiBilling$8;)Lcom/com2us/module/inapp/lebi/LebiBilling;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 285
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$15(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$16(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$9(Lcom/com2us/module/inapp/lebi/LebiBilling;)Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    move-result-object v3

    const-string v4, "pid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$pid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$9(Lcom/com2us/module/inapp/lebi/LebiBilling;)Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    move-result-object v3

    const-string v4, "quantity"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$quantity:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$9(Lcom/com2us/module/inapp/lebi/LebiBilling;)Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    move-result-object v3

    const-string v4, "uid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$uid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$9(Lcom/com2us/module/inapp/lebi/LebiBilling;)Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    move-result-object v3

    const-string v4, "addtionalInfo"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$addtionalInfo:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$9(Lcom/com2us/module/inapp/lebi/LebiBilling;)Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/com2us/module/inapp/DefaultBilling$PropertyUtil;->storeProperty(Ljava/lang/String;)V

    .line 295
    const/16 v24, 0x0

    .line 297
    .local v24, "restoreItemList":[Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 298
    .local v19, "postDataBuffer":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$uid:Ljava/lang/String;

    const/16 v5, 0x9

    invoke-static {v3, v4, v5}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$10(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const-string v6, "08"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$4(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$5(Lcom/com2us/module/inapp/lebi/LebiBilling;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v5, v6, v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$6(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$7(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 301
    .local v11, "data":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request restore item response : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    const/16 v25, 0x0

    .line 305
    .local v25, "restoreResponse":Ljava/lang/String;
    :try_start_1
    new-instance v22, Lcom/com2us/security/message/CryptMessage;

    invoke-direct/range {v22 .. v22}, Lcom/com2us/security/message/CryptMessage;-><init>()V

    .line 306
    .local v22, "receiverMessage":Lcom/com2us/security/message/CryptMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$18(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$19(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4, v11}, Lcom/com2us/security/message/CryptMessage;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v3, "pkt"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/com2us/security/message/CryptMessage;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decrypt response : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/com2us/security/message/MessageTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/com2us/security/message/MessageCryptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .end local v22    # "receiverMessage":Lcom/com2us/security/message/CryptMessage;
    :goto_1
    :try_start_2
    new-instance v26, Lorg/json/JSONArray;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 326
    .local v26, "toBeParsedArray":Lorg/json/JSONArray;
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v18

    .line 328
    .local v18, "jsonArrayLength":I
    if-eqz v18, :cond_0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    :cond_0
    const/16 v27, 0x0

    .local v27, "y":I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 339
    .end local v18    # "jsonArrayLength":I
    .end local v26    # "toBeParsedArray":Lorg/json/JSONArray;
    .end local v27    # "y":I
    :goto_3
    if-eqz v24, :cond_1

    .line 340
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    :try_start_3
    move-object/from16 v0, v24

    array-length v3, v0

    if-lt v14, v3, :cond_4

    .line 352
    .end local v14    # "i":I
    :cond_1
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$24()[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    move-result-object v3

    if-nez v3, :cond_7

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const-string v6, "07"

    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$3()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$4(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$5(Lcom/com2us/module/inapp/lebi/LebiBilling;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-static {v5, v6, v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$6(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$7(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 354
    .local v17, "itemPriceResponse":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request item price response : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const-string v4, "07"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$8(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 357
    .local v15, "isSuccess":Ljava/lang/String;
    if-nez v15, :cond_7

    .line 358
    const-string v3, "out of itemlist"

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$21(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$pid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$quantity:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$addtionalInfo:Ljava/lang/String;

    new-instance v9, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v28, "c2s"

    const-string v29, "34"

    const-string v30, "Out of itemlist."

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v9, v0, v1, v2}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v3 .. v9}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$23(Lcom/com2us/module/inapp/lebi/LebiBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 467
    .end local v15    # "isSuccess":Ljava/lang/String;
    .end local v17    # "itemPriceResponse":Ljava/lang/String;
    :goto_6
    return-void

    .line 300
    .end local v11    # "data":Ljava/lang/String;
    .end local v25    # "restoreResponse":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    :try_start_4
    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 310
    .restart local v11    # "data":Ljava/lang/String;
    .restart local v25    # "restoreResponse":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 311
    .local v12, "e":Lcom/com2us/security/message/MessageTimeoutException;
    invoke-virtual {v12}, Lcom/com2us/security/message/MessageTimeoutException;->printStackTrace()V

    .line 312
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$0()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/com2us/module/inapp/lebi/LebiBilling$8$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/com2us/module/inapp/lebi/LebiBilling$8$1;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling$8;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 318
    const-string v25, "error"

    goto/16 :goto_1

    .line 319
    .end local v12    # "e":Lcom/com2us/security/message/MessageTimeoutException;
    :catch_1
    move-exception v12

    .line 320
    .local v12, "e":Lcom/com2us/security/message/MessageCryptException;
    invoke-virtual {v12}, Lcom/com2us/security/message/MessageCryptException;->printStackTrace()V

    .line 321
    const-string v25, "error"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 331
    .end local v12    # "e":Lcom/com2us/security/message/MessageCryptException;
    .restart local v18    # "jsonArrayLength":I
    .restart local v26    # "toBeParsedArray":Lorg/json/JSONArray;
    .restart local v27    # "y":I
    :cond_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restore jsonArray["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v24, v27
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 330
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 334
    .end local v18    # "jsonArrayLength":I
    .end local v26    # "toBeParsedArray":Lorg/json/JSONArray;
    .end local v27    # "y":I
    :catch_2
    move-exception v12

    .line 335
    .local v12, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "process request restore item failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 464
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v19    # "postDataBuffer":Ljava/lang/StringBuffer;
    .end local v24    # "restoreItemList":[Ljava/lang/String;
    .end local v25    # "restoreResponse":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 466
    throw v3

    .line 341
    .restart local v11    # "data":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v19    # "postDataBuffer":Ljava/lang/StringBuffer;
    .restart local v24    # "restoreItemList":[Ljava/lang/String;
    .restart local v25    # "restoreResponse":Ljava/lang/String;
    :cond_4
    :try_start_7
    aget-object v3, v24, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$pid:Ljava/lang/String;

    const/16 v6, 0xc

    invoke-static {v4, v5, v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$10(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checking managed item (pid) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v24, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$21(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$pid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$quantity:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$addtionalInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const-string v28, ""

    move-object/from16 v0, v28

    invoke-static {v9, v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$22(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$23(Lcom/com2us/module/inapp/lebi/LebiBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    goto/16 :goto_6

    .line 340
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 353
    .end local v14    # "i":I
    :cond_6
    const/4 v3, 0x0

    :try_start_8
    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 366
    :cond_7
    const/4 v10, -0x2

    .line 369
    .local v10, "balance":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$uid:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$uid:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 371
    :cond_8
    const-string v3, "Hive login is required."

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$21(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 373
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$0()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/com2us/module/inapp/lebi/LebiBilling$8$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/com2us/module/inapp/lebi/LebiBilling$8$2;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling$8;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$pid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$quantity:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$addtionalInfo:Ljava/lang/String;

    new-instance v9, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v28, "c2s"

    const-string v29, "33"

    const-string v30, "Hive login is required."

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v9, v0, v1, v2}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v3 .. v9}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$23(Lcom/com2us/module/inapp/lebi/LebiBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    goto/16 :goto_6

    .line 385
    :cond_9
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const-string v6, "06"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$uid:Ljava/lang/String;

    const/16 v9, 0x9

    invoke-static {v7, v8, v9}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$10(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$4(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$5(Lcom/com2us/module/inapp/lebi/LebiBilling;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-static {v5, v6, v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$6(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$7(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 386
    .local v23, "response":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request balance response : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 388
    const-string v3, "-1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_a

    .line 389
    const-string v3, "-2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 390
    :cond_a
    const-string v3, "Balance Check Failed."

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$21(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 392
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$0()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/com2us/module/inapp/lebi/LebiBilling$8$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/com2us/module/inapp/lebi/LebiBilling$8$3;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling$8;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$pid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$quantity:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$addtionalInfo:Ljava/lang/String;

    new-instance v9, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v28, "c2s"

    const-string v29, "32"

    const-string v30, "Balance check failed."

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v9, v0, v1, v2}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v3 .. v9}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$23(Lcom/com2us/module/inapp/lebi/LebiBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    goto/16 :goto_6

    .line 385
    .end local v23    # "response":Ljava/lang/String;
    :cond_b
    const/4 v3, 0x0

    :try_start_a
    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 402
    .restart local v23    # "response":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$11(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v21

    .line 403
    .local v21, "processedReturnValue":Ljava/lang/Object;
    if-eqz v21, :cond_d

    .line 405
    :try_start_b
    check-cast v21, Ljava/lang/Integer;

    .end local v21    # "processedReturnValue":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v10

    .line 409
    :cond_d
    :goto_8
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "balance : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 413
    const/16 v16, -0x1

    .line 414
    .local v16, "itemPrice":I
    const/4 v14, 0x0

    .line 415
    .restart local v14    # "i":I
    const/4 v14, 0x0

    :goto_9
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$24()[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    move-result-object v3

    array-length v3, v3

    if-lt v14, v3, :cond_e

    .line 423
    :goto_a
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$24()[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    move-result-object v3

    array-length v3, v3

    if-lt v14, v3, :cond_10

    .line 424
    const-string v3, "wrong request item"

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$21(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$pid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$quantity:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$addtionalInfo:Ljava/lang/String;

    new-instance v9, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;

    const-string v28, "c2s"

    const-string v29, "31"

    const-string v30, "Wrong request item."

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v9, v0, v1, v2}, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v3 .. v9}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$23(Lcom/com2us/module/inapp/lebi/LebiBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    goto/16 :goto_6

    .line 406
    .end local v14    # "i":I
    .end local v16    # "itemPrice":I
    :catch_3
    move-exception v12

    .line 407
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 416
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v14    # "i":I
    .restart local v16    # "itemPrice":I
    :cond_e
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$24()[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    move-result-object v3

    aget-object v3, v3, v14

    iget-object v3, v3, Lcom/com2us/module/inapp/InAppCallback$ItemList;->productID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$pid:Ljava/lang/String;

    const/16 v6, 0xc

    invoke-static {v4, v5, v6}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$10(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    .line 417
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$24()[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    move-result-object v3

    aget-object v3, v3, v14

    iget-object v3, v3, Lcom/com2us/module/inapp/InAppCallback$ItemList;->formattedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 418
    goto :goto_a

    .line 415
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9

    .line 431
    :cond_10
    move/from16 v0, v16

    if-le v0, v10, :cond_11

    .line 432
    const-string v3, "request chage lebi"

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->LogI(Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    .line 436
    move/from16 v20, v16

    .line 439
    .local v20, "price":I
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$0()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/com2us/module/inapp/lebi/LebiBilling$8$4;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v4, v0, v1, v5}, Lcom/com2us/module/inapp/lebi/LebiBilling$8$4;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling$8;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 465
    .end local v20    # "price":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$17(Lcom/com2us/module/inapp/lebi/LebiBilling;)V

    goto/16 :goto_6

    .line 450
    :cond_11
    :try_start_e
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$31(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$32(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 452
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$24()[Lcom/com2us/module/inapp/InAppCallback$ItemList;

    move-result-object v4

    aget-object v4, v4, v14

    iget-object v4, v4, Lcom/com2us/module/inapp/InAppCallback$ItemList;->localizedTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {v4}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$32(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 454
    .local v13, "fstMsg":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$0()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/com2us/module/inapp/lebi/LebiBilling$8$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/com2us/module/inapp/lebi/LebiBilling$8$5;-><init>(Lcom/com2us/module/inapp/lebi/LebiBilling$8;Ljava/lang/StringBuffer;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_b
.end method
