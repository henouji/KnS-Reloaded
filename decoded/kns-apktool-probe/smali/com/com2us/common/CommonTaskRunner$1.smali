.class Lcom/com2us/common/CommonTaskRunner$1;
.super Ljava/lang/Object;
.source "CommonTaskRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/common/CommonTaskRunner;->start(Landroid/content/Context;Lcom/com2us/common/ICommonTaskRunnerListener;)V
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
    iput-object p1, p0, Lcom/com2us/common/CommonTaskRunner$1;->val$context:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/com2us/common/CommonTaskRunner$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/com2us/common/network/NetworkInfo;->store(Landroid/content/Context;)V

    .line 50
    return-void
.end method
