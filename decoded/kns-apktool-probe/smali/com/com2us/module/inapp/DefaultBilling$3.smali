.class Lcom/com2us/module/inapp/DefaultBilling$3;
.super Ljava/lang/Object;
.source "DefaultBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/DefaultBilling;->resultPostLicense(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/DefaultBilling;

.field private final synthetic val$state:I

.field private final synthetic val$stateValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/DefaultBilling;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/DefaultBilling$3;->this$0:Lcom/com2us/module/inapp/DefaultBilling;

    iput p2, p0, Lcom/com2us/module/inapp/DefaultBilling$3;->val$state:I

    iput-object p3, p0, Lcom/com2us/module/inapp/DefaultBilling$3;->val$stateValue:Ljava/lang/Object;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 189
    sget v0, Lcom/com2us/module/inapp/DefaultBilling;->LicenseCallbackRef:I

    iget v1, p0, Lcom/com2us/module/inapp/DefaultBilling$3;->val$state:I

    iget-object v2, p0, Lcom/com2us/module/inapp/DefaultBilling$3;->val$stateValue:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/com2us/module/inapp/InApp;->resultPostLicense(IILjava/lang/Object;)V

    .line 190
    return-void
.end method
