.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn$1;
.super Ljava/lang/Object;
.source "AgreementUIActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;Landroid/content/Context;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn$1;->this$2:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    .line 1520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn$1;->this$2:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn$CreateBtn;->clicked(Z)V

    .line 1525
    return-void
.end method
