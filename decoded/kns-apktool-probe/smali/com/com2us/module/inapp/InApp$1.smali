.class Lcom/com2us/module/inapp/InApp$1;
.super Ljava/lang/Object;
.source "InApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/InApp;->selectBillingTarget(Landroid/app/Activity;Lcom/com2us/module/view/SurfaceViewWrapper;Lcom/com2us/module/inapp/InAppCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/InApp;

.field private final synthetic val$_activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/InApp;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/InApp$1;->this$0:Lcom/com2us/module/inapp/InApp;

    iput-object p2, p0, Lcom/com2us/module/inapp/InApp$1;->val$_activity:Landroid/app/Activity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/com2us/module/inapp/InApp$1;->val$_activity:Landroid/app/Activity;

    const-string v1, "Invalied Select Billing Market."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    return-void
.end method
