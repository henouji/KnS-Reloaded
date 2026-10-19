.class Lcom/com2us/module/push/Push$2;
.super Ljava/lang/Object;
.source "Push.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/push/Push;->setVID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/push/Push;


# direct methods
.method constructor <init>(Lcom/com2us/module/push/Push;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/push/Push$2;->this$0:Lcom/com2us/module/push/Push;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 226
    :try_start_0
    const-string v1, "start registrationThreadForVID"

    invoke-static {v1}, Lcom/com2us/module/push/PushConfig;->LogI(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/com2us/module/push/Push$2;->this$0:Lcom/com2us/module/push/Push;

    invoke-static {v1}, Lcom/com2us/module/push/Push;->access$2(Lcom/com2us/module/push/Push;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/com2us/module/push/Push;->registerState:Lcom/com2us/module/push/Push$RegisterState;

    iget-object v3, p0, Lcom/com2us/module/push/Push$2;->this$0:Lcom/com2us/module/push/Push;

    invoke-static {v3}, Lcom/com2us/module/push/Push;->access$2(Lcom/com2us/module/push/Push;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/com2us/module/push/Push;->sendToServer(Landroid/content/Context;Lcom/com2us/module/push/Push$RegisterState;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
