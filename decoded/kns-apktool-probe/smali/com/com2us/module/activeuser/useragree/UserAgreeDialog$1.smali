.class Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$1;
.super Ljava/lang/Object;
.source "UserAgreeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$1;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    .line 89
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
    const/4 v1, 0x1

    .line 93
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 94
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$1;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->destroy()V

    .line 98
    :cond_0
    return v1
.end method
