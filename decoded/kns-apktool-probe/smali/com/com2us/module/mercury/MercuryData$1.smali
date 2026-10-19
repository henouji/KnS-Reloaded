.class Lcom/com2us/module/mercury/MercuryData$1;
.super Ljava/lang/Object;
.source "MercuryData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/MercuryData;->setDID(Landroid/content/Context;Z)V
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
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryData$1;->val$context:Landroid/content/Context;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 152
    :try_start_0
    invoke-static {}, Lcom/com2us/module/mercury/MercuryData;->access$0()Landroid/util/SparseArray;

    move-result-object v1

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryData$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/com2us/module/util/DeviceIdentity;->getDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
