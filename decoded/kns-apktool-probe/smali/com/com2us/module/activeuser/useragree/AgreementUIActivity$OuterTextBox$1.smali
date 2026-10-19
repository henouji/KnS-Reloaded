.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox$1;
.super Ljava/lang/Object;
.source "AgreementUIActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;

.field private final synthetic val$title:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;

    iput-object p2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox$1;->val$url:Ljava/lang/String;

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$16(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    return-void
.end method
