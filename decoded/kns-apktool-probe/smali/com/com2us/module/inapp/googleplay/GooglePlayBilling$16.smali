.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$16;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->activityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

.field private final synthetic val$data:Landroid/content/Intent;

.field private final synthetic val$requestCode:I

.field private final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$16;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iput p2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$16;->val$requestCode:I

    iput p3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$16;->val$resultCode:I

    iput-object p4, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$16;->val$data:Landroid/content/Intent;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 437
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$16;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    iget-object v0, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    iget v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$16;->val$requestCode:I

    iget v2, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$16;->val$resultCode:I

    iget-object v3, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$16;->val$data:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "onActivityResult handled by IABUtil."

    invoke-static {v0}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->LogI(Ljava/lang/String;)V

    .line 447
    :cond_0
    return-void
.end method
