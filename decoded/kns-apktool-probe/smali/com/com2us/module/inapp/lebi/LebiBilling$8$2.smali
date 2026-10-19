.class Lcom/com2us/module/inapp/lebi/LebiBilling$8$2;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/inapp/lebi/LebiBilling$8;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8$2;->this$1:Lcom/com2us/module/inapp/lebi/LebiBilling$8;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 376
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$0()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$8$2;->this$1:Lcom/com2us/module/inapp/lebi/LebiBilling$8;

    invoke-static {v1}, Lcom/com2us/module/inapp/lebi/LebiBilling$8;->access$0(Lcom/com2us/module/inapp/lebi/LebiBilling$8;)Lcom/com2us/module/inapp/lebi/LebiBilling;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$25(Lcom/com2us/module/inapp/lebi/LebiBilling;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 377
    return-void
.end method
