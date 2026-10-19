.class Lcom/com2us/module/inapp/lebi/LebiBilling$16;
.super Ljava/lang/Object;
.source "LebiBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/lebi/LebiBilling;->processReturnValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

.field private final synthetic val$failedMsg:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/lebi/LebiBilling;Ljava/lang/StringBuffer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$16;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    iput-object p2, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$16;->val$failedMsg:Ljava/lang/StringBuffer;

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 913
    iget-object v0, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$16;->this$0:Lcom/com2us/module/inapp/lebi/LebiBilling;

    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$0()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/com2us/module/inapp/lebi/LebiBilling$16;->val$failedMsg:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$33(Lcom/com2us/module/inapp/lebi/LebiBilling;Landroid/content/Context;ILjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$29(Landroid/app/Dialog;)V

    .line 914
    invoke-static {}, Lcom/com2us/module/inapp/lebi/LebiBilling;->access$30()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 915
    return-void
.end method
