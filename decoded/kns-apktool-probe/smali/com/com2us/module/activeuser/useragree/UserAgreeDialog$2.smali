.class Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$2;
.super Ljava/lang/Object;
.source "UserAgreeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->createTitle()V
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
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->destroy()V

    .line 175
    return-void
.end method
