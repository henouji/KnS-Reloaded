.class Lcom/com2us/module/util/Logger$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/util/Logger;->showToast(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/util/Logger;

.field private final synthetic val$TAG:Ljava/lang/String;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/util/Logger;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/util/Logger$1;->this$0:Lcom/com2us/module/util/Logger;

    iput-object p2, p0, Lcom/com2us/module/util/Logger$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/com2us/module/util/Logger$1;->val$TAG:Ljava/lang/String;

    iput-object p4, p0, Lcom/com2us/module/util/Logger$1;->val$msg:Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/com2us/module/util/Logger$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/com2us/module/util/Logger$1;->val$TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/util/Logger$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    return-void
.end method
