.class Lcom/com2us/module/mercury/MercuryDialog$1;
.super Ljava/lang/Object;
.source "MercuryDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/MercuryDialog;-><init>(Lcom/com2us/module/mercury/Mercury;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/mercury/MercuryDialog;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/MercuryDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$1;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 114
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$1;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v1}, Lcom/com2us/module/mercury/MercuryDialog;->close()V

    .line 119
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
