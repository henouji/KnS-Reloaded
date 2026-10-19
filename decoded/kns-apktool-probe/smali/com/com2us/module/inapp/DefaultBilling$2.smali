.class Lcom/com2us/module/inapp/DefaultBilling$2;
.super Ljava/lang/Object;
.source "DefaultBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/inapp/DefaultBilling;->resultPostInApp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/inapp/DefaultBilling;

.field private final synthetic val$additionalInfo:Ljava/lang/String;

.field private final synthetic val$pid:Ljava/lang/String;

.field private final synthetic val$quantity:I

.field private final synthetic val$state:I

.field private final synthetic val$stateValue:Ljava/lang/Object;

.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/inapp/DefaultBilling;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->this$0:Lcom/com2us/module/inapp/DefaultBilling;

    iput p2, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->val$state:I

    iput-object p3, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->val$pid:Ljava/lang/String;

    iput p4, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->val$quantity:I

    iput-object p5, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->val$uid:Ljava/lang/String;

    iput-object p6, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->val$additionalInfo:Ljava/lang/String;

    iput-object p7, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->val$stateValue:Ljava/lang/Object;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 149
    sget v0, Lcom/com2us/module/inapp/DefaultBilling;->CallBackRef:I

    iget v1, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->val$state:I

    iget-object v2, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->val$pid:Ljava/lang/String;

    iget v3, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->val$quantity:I

    iget-object v4, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->val$uid:Ljava/lang/String;

    iget-object v5, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->val$additionalInfo:Ljava/lang/String;

    iget-object v6, p0, Lcom/com2us/module/inapp/DefaultBilling$2;->val$stateValue:Ljava/lang/Object;

    invoke-static/range {v0 .. v6}, Lcom/com2us/module/inapp/InApp;->resultPostInApp(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    return-void
.end method
