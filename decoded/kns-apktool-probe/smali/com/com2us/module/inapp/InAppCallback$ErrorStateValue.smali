.class public Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;
.super Ljava/lang/Object;
.source "InAppCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/inapp/InAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorStateValue"
.end annotation


# instance fields
.field public errorCode:Ljava/lang/String;

.field public errorMsg:Ljava/lang/String;

.field public errorValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorValue"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorCode:Ljava/lang/String;

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorValue:Ljava/lang/String;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorMsg:Ljava/lang/String;

    .line 34
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    :try_start_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorValue:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    :goto_1
    iput-object p3, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorMsg:Ljava/lang/String;

    .line 37
    return-void

    .line 34
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    iput-object v1, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorCode:Ljava/lang/String;

    goto :goto_0

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, ""

    iput-object v1, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorValue:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorValue"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorCode:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorValue:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorMsg:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorCode:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorValue:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/com2us/module/inapp/InAppCallback$ErrorStateValue;->errorMsg:Ljava/lang/String;

    .line 32
    return-void
.end method
