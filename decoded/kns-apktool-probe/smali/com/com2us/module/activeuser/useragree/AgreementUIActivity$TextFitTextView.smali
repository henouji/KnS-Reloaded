.class public Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;
.super Landroid/widget/TextView;
.source "AgreementUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TextFitTextView"
.end annotation


# instance fields
.field fit:Z

.field maxHeight:I

.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;


# direct methods
.method public constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1932
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    .line 1933
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->fit:Z

    .line 1930
    const/4 v0, -0x1

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->maxHeight:I

    .line 1934
    return-void
.end method

.method public constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1936
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    .line 1937
    invoke-direct {p0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->fit:Z

    .line 1930
    const/4 v0, -0x1

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->maxHeight:I

    .line 1938
    return-void
.end method

.method public constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 1940
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    .line 1941
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->fit:Z

    .line 1930
    const/4 v0, -0x1

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->maxHeight:I

    .line 1942
    return-void
.end method


# virtual methods
.method protected _shrinkToFit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1958
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1959
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v4, v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 1961
    .local v0, "lineBounds":I
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->getTextSize()F

    move-result v2

    .line 1963
    .local v2, "size":F
    iget v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->maxHeight:I

    if-lez v3, :cond_0

    .line 1964
    iget v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->maxHeight:I

    if-le v0, v3, :cond_0

    .line 1965
    const/high16 v3, 0x40000000    # 2.0f

    sub-float v3, v2, v3

    invoke-virtual {p0, v4, v3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setTextSize(IF)V

    .line 1966
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->_shrinkToFit()V

    .line 1969
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1953
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1954
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->fit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->_shrinkToFit()V

    .line 1955
    :cond_0
    return-void
.end method

.method public setFitTextToBox(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "fit"    # Ljava/lang/Boolean;

    .prologue
    .line 1945
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->setFitTextToBox(Ljava/lang/Boolean;I)V

    .line 1946
    return-void
.end method

.method public setFitTextToBox(Ljava/lang/Boolean;I)V
    .locals 1
    .param p1, "fit"    # Ljava/lang/Boolean;
    .param p2, "maxHeight"    # I

    .prologue
    .line 1948
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->fit:Z

    .line 1949
    iput p2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;->maxHeight:I

    .line 1950
    return-void
.end method
