.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$19;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->ProgressDialogShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$19;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1172
    :try_start_0
    iget-object v1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$19;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$24(Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$25(Landroid/app/ProgressDialog;)V

    .line 1173
    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$26()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    :goto_0
    return-void

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
