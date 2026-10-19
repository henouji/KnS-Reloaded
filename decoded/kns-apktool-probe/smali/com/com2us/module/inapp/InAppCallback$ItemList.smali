.class public Lcom/com2us/module/inapp/InAppCallback$ItemList;
.super Ljava/lang/Object;
.source "InAppCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/inapp/InAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemList"
.end annotation


# instance fields
.field public amountMicros:J

.field public currencyCode:Ljava/lang/String;

.field public formattedString:Ljava/lang/String;

.field public localizedDescription:Ljava/lang/String;

.field public localizedTitle:Ljava/lang/String;

.field public productID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->productID:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->formattedString:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->localizedTitle:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->localizedDescription:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->currencyCode:Ljava/lang/String;

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/com2us/module/inapp/InAppCallback$ItemList;->amountMicros:J

    .line 14
    return-void
.end method
