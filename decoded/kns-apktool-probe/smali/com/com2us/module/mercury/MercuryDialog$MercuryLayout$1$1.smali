.class Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1$1;
.super Ljava/lang/Object;
.source "MercuryDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1$1;->this$2:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1$1;->this$2:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;->access$0(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;)Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$1(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
