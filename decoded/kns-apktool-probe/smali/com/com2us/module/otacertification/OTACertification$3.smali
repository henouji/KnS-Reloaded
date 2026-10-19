.class Lcom/com2us/module/otacertification/OTACertification$3;
.super Ljava/lang/Object;
.source "OTACertification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/otacertification/OTACertification;->onResult(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/otacertification/OTACertification;

.field private final synthetic val$errorCode:I

.field private final synthetic val$isVerified:Z

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/otacertification/OTACertification;IZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    iput p2, p0, Lcom/com2us/module/otacertification/OTACertification$3;->val$errorCode:I

    iput-boolean p3, p0, Lcom/com2us/module/otacertification/OTACertification$3;->val$isVerified:Z

    iput-object p4, p0, Lcom/com2us/module/otacertification/OTACertification$3;->val$message:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/otacertification/OTACertification$3;)Lcom/com2us/module/otacertification/OTACertification;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-static {v0}, Lcom/com2us/module/otacertification/OTACertification;->access$2(Lcom/com2us/module/otacertification/OTACertification;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    iget v2, p0, Lcom/com2us/module/otacertification/OTACertification$3;->val$errorCode:I

    invoke-virtual {v1, v2}, Lcom/com2us/module/otacertification/OTACertification;->getDialogTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 172
    iget-boolean v0, p0, Lcom/com2us/module/otacertification/OTACertification$3;->val$isVerified:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-static {v0}, Lcom/com2us/module/otacertification/OTACertification;->access$2(Lcom/com2us/module/otacertification/OTACertification;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    iget v2, p0, Lcom/com2us/module/otacertification/OTACertification$3;->val$errorCode:I

    invoke-virtual {v1, v2}, Lcom/com2us/module/otacertification/OTACertification;->getDialogMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 176
    const-string v1, "OK"

    new-instance v2, Lcom/com2us/module/otacertification/OTACertification$3$1;

    invoke-direct {v2, p0}, Lcom/com2us/module/otacertification/OTACertification$3$1;-><init>(Lcom/com2us/module/otacertification/OTACertification$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    iget-object v1, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-static {v1}, Lcom/com2us/module/otacertification/OTACertification;->access$2(Lcom/com2us/module/otacertification/OTACertification;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/otacertification/OTACertification;->setDialog(Landroid/app/AlertDialog$Builder;)V

    .line 217
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    iget-object v1, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-static {v1}, Lcom/com2us/module/otacertification/OTACertification;->access$2(Lcom/com2us/module/otacertification/OTACertification;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/com2us/module/otacertification/OTACertification;->access$4(Lcom/com2us/module/otacertification/OTACertification;Landroid/app/AlertDialog;)V

    .line 218
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-static {v0}, Lcom/com2us/module/otacertification/OTACertification;->access$1(Lcom/com2us/module/otacertification/OTACertification;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 219
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification$3;->val$message:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-static {v0}, Lcom/com2us/module/otacertification/OTACertification;->access$2(Lcom/com2us/module/otacertification/OTACertification;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/com2us/module/otacertification/OTACertification$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    const-string v1, "OK"

    new-instance v2, Lcom/com2us/module/otacertification/OTACertification$3$2;

    invoke-direct {v2, p0}, Lcom/com2us/module/otacertification/OTACertification$3$2;-><init>(Lcom/com2us/module/otacertification/OTACertification$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-static {v0}, Lcom/com2us/module/otacertification/OTACertification;->access$2(Lcom/com2us/module/otacertification/OTACertification;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/com2us/module/otacertification/OTACertification$3;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    iget v2, p0, Lcom/com2us/module/otacertification/OTACertification$3;->val$errorCode:I

    invoke-virtual {v1, v2}, Lcom/com2us/module/otacertification/OTACertification;->getDialogMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 204
    const-string v1, "OK"

    new-instance v2, Lcom/com2us/module/otacertification/OTACertification$3$3;

    invoke-direct {v2, p0}, Lcom/com2us/module/otacertification/OTACertification$3$3;-><init>(Lcom/com2us/module/otacertification/OTACertification$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
