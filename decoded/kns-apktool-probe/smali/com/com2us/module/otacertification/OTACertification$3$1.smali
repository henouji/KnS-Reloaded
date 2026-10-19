.class Lcom/com2us/module/otacertification/OTACertification$3$1;
.super Ljava/lang/Object;
.source "OTACertification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/otacertification/OTACertification$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/otacertification/OTACertification$3;


# direct methods
.method constructor <init>(Lcom/com2us/module/otacertification/OTACertification$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/otacertification/OTACertification$3$1;->this$1:Lcom/com2us/module/otacertification/OTACertification$3;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification$3$1;->this$1:Lcom/com2us/module/otacertification/OTACertification$3;

    invoke-static {v0}, Lcom/com2us/module/otacertification/OTACertification$3;->access$0(Lcom/com2us/module/otacertification/OTACertification$3;)Lcom/com2us/module/otacertification/OTACertification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/otacertification/OTACertification;->release()V

    .line 182
    return-void
.end method
