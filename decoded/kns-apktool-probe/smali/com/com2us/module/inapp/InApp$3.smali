.class Lcom/com2us/module/inapp/InApp$3;
.super Ljava/lang/Object;
.source "InApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/InApp;->setLogged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/InApp;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/InApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/InApp$3;->this$0:Lcom/com2us/module/inapp/InApp;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp$3;->this$0:Lcom/com2us/module/inapp/InApp;

    invoke-static {v0}, Lcom/com2us/module/inapp/InApp;->access$0(Lcom/com2us/module/inapp/InApp;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "InApp Purchase Log is Active."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 365
    return-void
.end method
