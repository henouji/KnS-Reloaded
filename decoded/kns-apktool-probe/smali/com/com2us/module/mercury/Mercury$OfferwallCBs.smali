.class public Lcom/com2us/module/mercury/Mercury$OfferwallCBs;
.super Ljava/lang/Object;
.source "Mercury.java"

# interfaces
.implements Lcom/com2us/module/offerwall/Offerwall$OfferwallCBforMercury;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/mercury/Mercury;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OfferwallCBs"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/mercury/Mercury;


# direct methods
.method public constructor <init>(Lcom/com2us/module/mercury/Mercury;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/com2us/module/mercury/Mercury$OfferwallCBs;->this$0:Lcom/com2us/module/mercury/Mercury;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public offerwallCallBackforMercury(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/com2us/module/mercury/Mercury$OfferwallCBs;->this$0:Lcom/com2us/module/mercury/Mercury;

    invoke-virtual {v0}, Lcom/com2us/module/mercury/Mercury;->close()V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_0
    .end packed-switch
.end method
