.class Lcom/com2us/module/offerwall/Offerwall$3;
.super Ljava/lang/Object;
.source "Offerwall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/offerwall/Offerwall;->show(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/offerwall/Offerwall;


# direct methods
.method constructor <init>(Lcom/com2us/module/offerwall/Offerwall;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/offerwall/Offerwall$3;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 582
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$3;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v0}, Lcom/com2us/module/offerwall/Offerwall;->access$10(Lcom/com2us/module/offerwall/Offerwall;)V

    .line 584
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$3;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    const/16 v1, -0xb

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/Offerwall;->access$9(Lcom/com2us/module/offerwall/Offerwall;I)V

    .line 586
    const/4 v3, 0x0

    .line 587
    .local v3, "serverURL":Ljava/lang/String;
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$3;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v0}, Lcom/com2us/module/offerwall/Offerwall;->access$11(Lcom/com2us/module/offerwall/Offerwall;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string v3, "http://test.wall.com2us.com/"

    .line 596
    :goto_0
    iget-object v6, p0, Lcom/com2us/module/offerwall/Offerwall$3;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    new-instance v0, Lcom/com2us/module/offerwall/OfferwallDialog;

    iget-object v1, p0, Lcom/com2us/module/offerwall/Offerwall$3;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    iget-object v2, p0, Lcom/com2us/module/offerwall/Offerwall$3;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v2}, Lcom/com2us/module/offerwall/Offerwall;->access$8(Lcom/com2us/module/offerwall/Offerwall;)Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/com2us/module/offerwall/Offerwall$3;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v4}, Lcom/com2us/module/offerwall/Offerwall;->access$12(Lcom/com2us/module/offerwall/Offerwall;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/com2us/module/offerwall/Offerwall$3;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v5}, Lcom/com2us/module/offerwall/Offerwall;->access$13(Lcom/com2us/module/offerwall/Offerwall;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/com2us/module/offerwall/OfferwallDialog;-><init>(Lcom/com2us/module/offerwall/Offerwall;Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-static {v6, v0}, Lcom/com2us/module/offerwall/Offerwall;->access$14(Lcom/com2us/module/offerwall/Offerwall;Lcom/com2us/module/offerwall/OfferwallDialog;)V

    .line 598
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$3;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    invoke-static {v0}, Lcom/com2us/module/offerwall/Offerwall;->access$7(Lcom/com2us/module/offerwall/Offerwall;)Lcom/com2us/module/offerwall/OfferwallDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/offerwall/OfferwallDialog;->show()V

    .line 599
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$3;->this$0:Lcom/com2us/module/offerwall/Offerwall;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/Offerwall;->access$15(Lcom/com2us/module/offerwall/Offerwall;Z)V

    .line 600
    return-void

    .line 593
    :cond_0
    const-string v3, "http://m.wall.com2us.com/"

    goto :goto_0
.end method
