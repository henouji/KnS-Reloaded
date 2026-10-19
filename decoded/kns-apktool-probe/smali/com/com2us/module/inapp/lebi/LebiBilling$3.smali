.class Lcom/com2us/module/inapp/lebi/LebiBilling$3;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling;->iapStoreStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$3;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$12()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 191
    return-void
.end method
