.class Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$7;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;-><init>(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$7;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling$7;->this$0:Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;

    new-instance v1, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    invoke-static {}, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->access$7()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/com2us/module/inapp/googleplay/GooglePlayBilling;->mHelper:Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;

    .line 73
    return-void
.end method
