.class Lcom/com2us/module/util/Logger$2;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/util/Logger;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/com2us/module/util/Logger$2;->this$0:Lcom/com2us/module/util/Logger;

    iput-object p2, p0, Lcom/com2us/module/util/Logger$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/com2us/module/util/Logger$2;->val$TAG:Ljava/lang/String;

    iput-object p4, p0, Lcom/com2us/module/util/Logger$2;->val$msg:Ljava/lang/String;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 224
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/com2us/module/util/Logger$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/com2us/module/util/Logger$2;->val$TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/util/Logger$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 225
    const-string v2, "OK"

    new-instance v3, Lcom/com2us/module/util/Logger$2$1;

    invoke-direct {v3, p0}, Lcom/com2us/module/util/Logger$2$1;-><init>(Lcom/com2us/module/util/Logger$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 233
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 234
    return-void
.end method
