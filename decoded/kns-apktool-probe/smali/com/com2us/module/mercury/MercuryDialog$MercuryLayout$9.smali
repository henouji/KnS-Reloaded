.class Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$9;
.super Ljava/lang/Object;
.source "MercuryDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->resizeWebview(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$9;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 622
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$9;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$15(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setPadding(IIII)V

    .line 623
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$9;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$9;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/mercury/MercuryDialog;->applyAnimation(Landroid/webkit/WebView;)Z

    .line 624
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$9;->this$1:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    invoke-static {v0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->access$15(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setBackgroundColor(I)V

    .line 625
    return-void
.end method
