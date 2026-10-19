.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox$1;
.super Ljava/lang/Object;
.source "AgreementUIActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;

    .line 1307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1311
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$28(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1313
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$29(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1319
    :goto_0
    return v1

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$28(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1316
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox$1;->this$1:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$29(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
