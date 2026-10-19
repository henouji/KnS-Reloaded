.class Lcom/com2us/module/offerwall/Offerwall$2$1;
.super Ljava/lang/Object;
.source "Offerwall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/offerwall/Offerwall$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/offerwall/Offerwall$2;


# direct methods
.method constructor <init>(Lcom/com2us/module/offerwall/Offerwall$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/offerwall/Offerwall$2$1;->this$1:Lcom/com2us/module/offerwall/Offerwall$2;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/com2us/module/offerwall/Offerwall$2$1;->this$1:Lcom/com2us/module/offerwall/Offerwall$2;

    invoke-static {v0}, Lcom/com2us/module/offerwall/Offerwall$2;->access$0(Lcom/com2us/module/offerwall/Offerwall$2;)Lcom/com2us/module/offerwall/Offerwall;

    move-result-object v0

    const/16 v1, -0xd

    invoke-static {v0, v1}, Lcom/com2us/module/offerwall/Offerwall;->access$9(Lcom/com2us/module/offerwall/Offerwall;I)V

    .line 476
    return-void
.end method
