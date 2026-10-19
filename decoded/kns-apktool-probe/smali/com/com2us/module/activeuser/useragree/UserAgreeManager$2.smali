.class Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;
.super Ljava/lang/Object;
.source "UserAgreeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->showUserAgreeTerms(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    iput-object p2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->val$url:Ljava/lang/String;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$5(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$5(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    new-instance v1, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$6(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)V

    .line 227
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$5(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    move-result-object v1

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://m.member.com2us.com/mobilepolicy2.c2s"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->setUrl(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$5(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v1}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$7(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v2}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$8(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->this$0:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->access$5(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->show()V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;->val$url:Ljava/lang/String;

    goto :goto_1
.end method
