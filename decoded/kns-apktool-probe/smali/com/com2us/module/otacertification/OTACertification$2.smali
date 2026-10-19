.class Lcom/com2us/module/otacertification/OTACertification$2;
.super Ljava/lang/Object;
.source "OTACertification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/otacertification/OTACertification;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/otacertification/OTACertification;


# direct methods
.method constructor <init>(Lcom/com2us/module/otacertification/OTACertification;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/otacertification/OTACertification$2;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/com2us/module/otacertification/OTACertification$2;->this$0:Lcom/com2us/module/otacertification/OTACertification;

    invoke-static {v0}, Lcom/com2us/module/otacertification/OTACertification;->access$1(Lcom/com2us/module/otacertification/OTACertification;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 155
    return-void
.end method
