.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$20;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->ProgressDialogDismiss()V
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
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$20;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1187
    :try_start_0
    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$26()Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1188
    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$26()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1189
    :catch_0
    move-exception v0

    .line 1190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
