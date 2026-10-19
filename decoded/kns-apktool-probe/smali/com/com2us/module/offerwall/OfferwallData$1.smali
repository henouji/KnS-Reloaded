.class Lcom/com2us/module/offerwall/OfferwallData$1;
.super Ljava/lang/Object;
.source "OfferwallData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/offerwall/OfferwallData;->setDID(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/offerwall/OfferwallData$1;->val$context:Landroid/content/Context;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    const/16 v1, 0xa

    :try_start_0
    iget-object v2, p0, Lcom/com2us/module/offerwall/OfferwallData$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/com2us/module/util/DeviceIdentity;->getDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/com2us/module/offerwall/OfferwallData;->access$0(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
