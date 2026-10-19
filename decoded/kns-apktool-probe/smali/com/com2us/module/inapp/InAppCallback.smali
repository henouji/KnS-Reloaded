.class public interface abstract Lcom/com2us/module/inapp/InAppCallback;
.super Ljava/lang/Object;
.source "InAppCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;,
        Lcom/com2us/module/inapp/InAppCallback$ItemList;
    }
.end annotation


# static fields
.field public static final AMAZON_MARKETPLACE:I = 0x28

.field public static final AMAZON_PRODUCTID:I = 0x15

.field public static final AMAZON_PURCHASEDATE:I = 0x27
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMAZON_PURCHASETOKEN:I = 0x17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AMAZON_RECEIPTID:I = 0x17

.field public static final AMAZON_REQUESTID:I = 0x18

.field public static final AMAZON_USERID:I = 0x16

.field public static final GOOGLEINAPP_RECEIPT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLEINAPP_SIGNATURE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLEPLAY_RECEIPT:I = 0x23

.field public static final GOOGLEPLAY_SIGNATURE:I = 0x24

.field public static final HAMI_DATELOCAL:I = 0xb

.field public static final KDDI_SIGNATURE:I = 0x1a

.field public static final KDDI_TRANSACTION:I = 0x19

.field public static final LEBI_BILLINGNUM:I = 0xc

.field public static final MARKET_NAME:I = 0x1

.field public static final MARKET_NUMBER:I = 0x0

.field public static final MAX_SUCCESS_STATE_VALUE:I = 0x29

.field public static final MBIZ_EMONEY:I = 0x1d

.field public static final MBIZ_PURCHASEDATE:I = 0x1e

.field public static final MM_ORDERID:I = 0x1b

.field public static final MM_PURCHASEDATE:I = 0x1c

.field public static final OLLEHMARKET_DATELOCAL:I = 0x7

.field public static final OLLEHMARKET_TRANSACTIONID:I = 0x6

.field public static final OZSTORE_DATELOCAL:I = 0x8

.field public static final OZSTORE_TXID:I = 0x26

.field public static final OZSTORE_UKEY:I = 0x25

.field public static final PLASMA_ITEMID:I = 0xf

.field public static final PLASMA_PARAM1:I = 0x11

.field public static final PLASMA_PARAM2:I = 0x12

.field public static final PLASMA_PARAM3:I = 0x13

.field public static final PLASMA_PAYMENTID:I = 0xd

.field public static final PLASMA_PURCHASEDATE:I = 0x14

.field public static final PLASMA_PURCHASEID:I = 0xe

.field public static final PLASMA_VERIFYURL:I = 0x10

.field public static final QIIP_DATELOCAL:I = 0xa

.field public static final THIRDPARTY_ADDITIONALINFO:I = 0x9

.field public static final THIRDPARTY_ORDERKEY:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TSTORE_DATELOCAL:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TSTORE_TID:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TSTORE_TRANSACTION:I = 0x4


# virtual methods
.method public abstract BUY_CANCELED(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract BUY_FAILED(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract BUY_SUCCESS(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract GET_ITEM_LIST(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract PURCHASE_UPDATED(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract RESTORE_SUCCESS(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method
