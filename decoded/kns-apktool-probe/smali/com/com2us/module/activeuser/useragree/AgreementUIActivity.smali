.class public Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
.super Landroid/app/Activity;
.source "AgreementUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;,
        Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;,
        Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;,
        Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$TextFitTextView;,
        Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;,
        Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewState;
    }
.end annotation


# instance fields
.field private DP:F

.field private final FILL_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private final FILL_WRAP_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private agreeBtnDefaultFontColor:I

.field private agreeBtnSelectFontColor:I

.field private agreement_ex_url:Ljava/lang/String;

.field private agreement_version:I

.field private backKeyFlag:Z

.field private board_down_l_Bitmap:Landroid/graphics/Bitmap;

.field private board_down_logo_Bitmap:Landroid/graphics/Bitmap;

.field private board_down_m_Bitmap:Landroid/graphics/Bitmap;

.field private board_down_r_Bitmap:Landroid/graphics/Bitmap;

.field private board_textbox_center_down_Bitmap:Landroid/graphics/Bitmap;

.field private board_textbox_center_top_Bitmap:Landroid/graphics/Bitmap;

.field private board_textbox_edge_1_Bitmap:Landroid/graphics/Bitmap;

.field private board_textbox_edge_2_Bitmap:Landroid/graphics/Bitmap;

.field private board_textbox_edge_3_Bitmap:Landroid/graphics/Bitmap;

.field private board_textbox_edge_4_Bitmap:Landroid/graphics/Bitmap;

.field private board_textbox_side_left_Bitmap:Landroid/graphics/Bitmap;

.field private board_textbox_side_right_Bitmap:Landroid/graphics/Bitmap;

.field private board_top_l_Bitmap:Landroid/graphics/Bitmap;

.field private board_top_logo_Bitmap:Landroid/graphics/Bitmap;

.field private board_top_m_Bitmap:Landroid/graphics/Bitmap;

.field private board_top_r_Bitmap:Landroid/graphics/Bitmap;

.field private bodyBackgroundColor:I

.field private bodyLayout:Landroid/view/ViewGroup;

.field private bodyLinearLayout:Landroid/widget/LinearLayout;

.field private btn_default_l_Bitmap:Landroid/graphics/Bitmap;

.field private btn_default_m_1_Bitmap:Landroid/graphics/Bitmap;

.field private btn_default_r_Bitmap:Landroid/graphics/Bitmap;

.field private btn_select_l_Bitmap:Landroid/graphics/Bitmap;

.field private btn_select_m_1_Bitmap:Landroid/graphics/Bitmap;

.field private btn_select_r_Bitmap:Landroid/graphics/Bitmap;

.field private centerLineColor:I

.field private centerLines:[Landroid/widget/ImageView;

.field private check_btn_Bitmap:Landroid/graphics/Bitmap;

.field private closeBitmap:Landroid/graphics/Bitmap;

.field private colorType:I

.field destroyParentActivity:Z

.field private dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

.field private displayHeight:I

.field private displayWidth:I

.field private firstIndex:I

.field private fontDP:F

.field private horizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private innerTextboxBackgroundColor:I

.field private linkFontColor:I

.field private logger:Lcom/com2us/module/util/Logger;

.field private logoBitmap:Landroid/graphics/Bitmap;

.field private mBackKeyHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mainLayout:Landroid/view/ViewGroup;

.field private outerTextBoxHorizontalSize:I

.field private outerTextBoxList:[Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;

.field private outerTextBoxVerticalSize:I

.field private termsDataLength:I

.field private textboxFontColor:I

.field private titleFontColor:I

.field private tm:Lcom/com2us/module/activeuser/useragree/TermsManager;

.field private url:Ljava/lang/String;

.field private final useWebView:Z

.field private userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

.field private verticalScrollView:Landroid/widget/ScrollView;

.field private webViewRetryDialog:Landroid/app/AlertDialog;

.field private webViewTimeoutFlag:Z

.field private xDP:F

.field private yDP:F


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x44

    const/16 v5, 0xd8

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    iput-boolean v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->useWebView:Z

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->colorType:I

    .line 94
    iput v4, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreement_version:I

    .line 95
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->url:Ljava/lang/String;

    .line 96
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreement_ex_url:Ljava/lang/String;

    .line 98
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->FILL_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->FILL_WRAP_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    const/16 v0, 0xe8

    const/16 v1, 0xe8

    const/16 v2, 0xe8

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->bodyBackgroundColor:I

    .line 103
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->centerLineColor:I

    .line 104
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->innerTextboxBackgroundColor:I

    .line 105
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->titleFontColor:I

    .line 106
    const/16 v0, 0xcd

    const/16 v1, 0x20

    const/16 v2, 0x27

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->linkFontColor:I

    .line 107
    const/16 v0, 0x66

    const/16 v1, 0x66

    const/16 v2, 0x66

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->textboxFontColor:I

    .line 108
    const/16 v0, 0x7c

    const/16 v1, 0xc1

    invoke-static {v6, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreeBtnDefaultFontColor:I

    .line 109
    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreeBtnSelectFontColor:I

    .line 111
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logoBitmap:Landroid/graphics/Bitmap;

    .line 112
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->closeBitmap:Landroid/graphics/Bitmap;

    .line 114
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_l_Bitmap:Landroid/graphics/Bitmap;

    .line 115
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    .line 116
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_r_Bitmap:Landroid/graphics/Bitmap;

    .line 117
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_logo_Bitmap:Landroid/graphics/Bitmap;

    .line 119
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_l_Bitmap:Landroid/graphics/Bitmap;

    .line 120
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_m_Bitmap:Landroid/graphics/Bitmap;

    .line 121
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_r_Bitmap:Landroid/graphics/Bitmap;

    .line 122
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_logo_Bitmap:Landroid/graphics/Bitmap;

    .line 124
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_top_Bitmap:Landroid/graphics/Bitmap;

    .line 125
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_down_Bitmap:Landroid/graphics/Bitmap;

    .line 126
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_left_Bitmap:Landroid/graphics/Bitmap;

    .line 127
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_right_Bitmap:Landroid/graphics/Bitmap;

    .line 128
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_1_Bitmap:Landroid/graphics/Bitmap;

    .line 129
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_2_Bitmap:Landroid/graphics/Bitmap;

    .line 130
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_3_Bitmap:Landroid/graphics/Bitmap;

    .line 131
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_4_Bitmap:Landroid/graphics/Bitmap;

    .line 133
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_l_Bitmap:Landroid/graphics/Bitmap;

    .line 134
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_m_1_Bitmap:Landroid/graphics/Bitmap;

    .line 135
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_r_Bitmap:Landroid/graphics/Bitmap;

    .line 136
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_l_Bitmap:Landroid/graphics/Bitmap;

    .line 137
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_m_1_Bitmap:Landroid/graphics/Bitmap;

    .line 138
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_r_Bitmap:Landroid/graphics/Bitmap;

    .line 139
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->check_btn_Bitmap:Landroid/graphics/Bitmap;

    .line 141
    iput-boolean v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->destroyParentActivity:Z

    .line 150
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->verticalScrollView:Landroid/widget/ScrollView;

    .line 151
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 152
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->bodyLinearLayout:Landroid/widget/LinearLayout;

    .line 154
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->tm:Lcom/com2us/module/activeuser/useragree/TermsManager;

    .line 156
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->firstIndex:I

    .line 157
    iput v4, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxVerticalSize:I

    .line 158
    iput v4, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxHorizontalSize:I

    .line 160
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxList:[Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;

    .line 161
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->centerLines:[Landroid/widget/ImageView;

    .line 163
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    .line 165
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mHandler:Landroid/os/Handler;

    .line 166
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mBackKeyHandler:Landroid/os/Handler;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->backKeyFlag:Z

    .line 169
    iput-boolean v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->webViewTimeoutFlag:Z

    .line 170
    iput-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->webViewRetryDialog:Landroid/app/AlertDialog;

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/util/Logger;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logger:Lcom/com2us/module/util/Logger;

    return-object v0
.end method

.method static synthetic access$1(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->webViewTimeoutFlag:Z

    return v0
.end method

.method static synthetic access$10(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->titleFontColor:I

    return v0
.end method

.method static synthetic access$12(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;F)F
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontSize(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$14(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)I
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->linkFontColor:I

    return v0
.end method

.method static synthetic access$16(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1856
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxVerticalSize:I

    return v0
.end method

.method static synthetic access$18(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxHorizontalSize:I

    return v0
.end method

.method static synthetic access$19(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_1_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/activeuser/useragree/TermsManager;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->tm:Lcom/com2us/module/activeuser/useragree/TermsManager;

    return-object v0
.end method

.method static synthetic access$20(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_2_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$21(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_3_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$22(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_4_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$23(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_top_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$24(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_down_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$25(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_left_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$26(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_right_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$27(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->innerTextboxBackgroundColor:I

    return v0
.end method

.method static synthetic access$28(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->verticalScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$29(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$30(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->textboxFontColor:I

    return v0
.end method

.method static synthetic access$31(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_l_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$32(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_r_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$33(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_m_1_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$34(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreeBtnDefaultFontColor:I

    return v0
.end method

.method static synthetic access$35(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->check_btn_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$36(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_l_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$37(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_r_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$38(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_m_1_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$39(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreeBtnSelectFontColor:I

    return v0
.end method

.method static synthetic access$4(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreement_version:I

    return v0
.end method

.method static synthetic access$40(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;I)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 1591
    invoke-direct {p0, p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->isAllChecked(I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->backKeyFlag:Z

    return-void
.end method

.method static synthetic access$42(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$43(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;Landroid/webkit/WebView;Landroid/app/ProgressDialog;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 831
    invoke-direct {p0, p1, p2, p3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->getRetryAgreementVersionDialog(Landroid/content/Context;Landroid/webkit/WebView;Landroid/app/ProgressDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    return-object v0
.end method

.method static synthetic access$6(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->webViewTimeoutFlag:Z

    return-void
.end method

.method static synthetic access$7(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->webViewRetryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$8(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->webViewRetryDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$9(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreement_ex_url:Ljava/lang/String;

    return-object v0
.end method

.method private createBoardDown()Landroid/view/ViewGroup;
    .locals 13

    .prologue
    const/4 v12, -0x2

    .line 1008
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1009
    .local v0, "layout":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1010
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1011
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    const/16 v10, 0x44c

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1015
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1016
    .local v2, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0x9

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1018
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1019
    .local v3, "leftView":Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_l_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1021
    const/16 v10, 0x44d

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 1023
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1026
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1027
    .local v7, "rightParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xb

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1029
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1030
    .local v8, "rightView":Landroid/widget/ImageView;
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_r_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1032
    const/16 v10, 0x44e

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 1034
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1037
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v5, v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1038
    .local v5, "middleParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1039
    const/4 v10, 0x0

    invoke-virtual {v8}, Landroid/widget/ImageView;->getId()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1041
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1042
    .local v6, "middleView":Landroid/widget/ImageView;
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1043
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1044
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1046
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1049
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1050
    .local v4, "logoParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xd

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1052
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1053
    .local v9, "topLogoView":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_logo_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1054
    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1058
    return-object v0
.end method

.method private createBoardTop()Landroid/view/ViewGroup;
    .locals 13

    .prologue
    const/4 v12, -0x2

    .line 948
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 949
    .local v0, "layout":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 950
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 951
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    const/16 v10, 0x3e8

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 955
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 956
    .local v2, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0x9

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 958
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 959
    .local v3, "leftView":Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 960
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_l_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 961
    const/16 v10, 0x3e9

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 963
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 966
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 967
    .local v7, "rightParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xb

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 969
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 970
    .local v8, "rightView":Landroid/widget/ImageView;
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_r_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 972
    const/16 v10, 0x3ea

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 974
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 977
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v5, v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 978
    .local v5, "middleParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 979
    const/4 v10, 0x0

    invoke-virtual {v8}, Landroid/widget/ImageView;->getId()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 981
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 982
    .local v6, "middleView":Landroid/widget/ImageView;
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 984
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 986
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 989
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 990
    .local v4, "logoParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xd

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 992
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 993
    .local v9, "topLogoView":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_logo_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 994
    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 998
    return-object v0
.end method

.method private createLogo()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 1641
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1642
    .local v1, "layout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->FILL_WRAP_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1644
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1645
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1646
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1648
    return-object v1
.end method

.method private createUI()Landroid/view/ViewGroup;
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/16 v9, 0xa

    .line 377
    const/16 v5, 0x16

    invoke-static {v5}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmaps(Ljava/lang/String;)V

    .line 380
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 381
    .local v3, "mainLayout":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 382
    .local v4, "mainParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 383
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    invoke-direct {p0, v9}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v5

    invoke-direct {p0, v9}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v6

    invoke-direct {p0, v9}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v7

    invoke-direct {p0, v9}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 387
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->verticalScrollView:Landroid/widget/ScrollView;

    .line 388
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->verticalScrollView:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->FILL_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->verticalScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v11}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 391
    new-instance v5, Landroid/widget/HorizontalScrollView;

    invoke-direct {v5, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 392
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->FILL_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v11}, Landroid/widget/HorizontalScrollView;->setSmoothScrollingEnabled(Z)V

    .line 396
    invoke-direct {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->createBoardTop()Landroid/view/ViewGroup;

    move-result-object v1

    .line 397
    .local v1, "boardTop":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->createBoardDown()Landroid/view/ViewGroup;

    move-result-object v0

    .line 400
    .local v0, "boardDown":Landroid/view/ViewGroup;
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->bodyLayout:Landroid/view/ViewGroup;

    .line 401
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 402
    .local v2, "bodyParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0, v9}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v5

    invoke-direct {p0, v12}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v6

    neg-int v6, v6

    invoke-direct {p0, v9}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v7

    invoke-direct {p0, v12}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 403
    const/4 v5, 0x3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 404
    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 405
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->bodyLayout:Landroid/view/ViewGroup;

    const/16 v6, 0x4b0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setId(I)V

    .line 406
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->bodyLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->bodyLayout:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->bodyBackgroundColor:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 491
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->bodyLayout:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->createWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 497
    iget-object v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->bodyLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 500
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 503
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 506
    return-object v3
.end method

.method private createWebView()Landroid/webkit/WebView;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 512
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 513
    .local v0, "web":Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->FILL_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 515
    new-instance v2, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;

    invoke-direct {v2, p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$WebViewCallBack;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 516
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 518
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->innerTextboxBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 520
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreement_ex_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 521
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "url is empty, loading Local Data"

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 529
    const/16 v2, 0x11

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 530
    new-instance v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$2;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/webkit/WebView;)V

    .line 536
    .local v1, "webViewRun":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 572
    .end local v1    # "webViewRun":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-object v0

    .line 539
    :cond_1
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "loading Local Data failed, Local Data is empty."

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 541
    const-string v2, "0"

    const-string v3, "agreement_version"

    invoke-static {v3}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 542
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "AGREEMENT_VERSION_PROPERTY - ZERO, close Agreement UI"

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 543
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeAgreementUI(I)V

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->finish()V

    goto :goto_0

    .line 547
    :cond_3
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "AGREEMENT_VERSION_PROPERTY - Exist, pass Agreement UI"

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 549
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->destroyParentActivity:Z

    .line 550
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeAgreementUI(I)V

    goto :goto_0

    .line 551
    :cond_4
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->finish()V

    goto :goto_0

    .line 556
    :cond_5
    new-instance v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$3;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/webkit/WebView;)V

    .line 569
    .restart local v1    # "webViewRun":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private fontSize(F)F
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 351
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    div-float v0, p1, v0

    return v0
.end method

.method private getRetryAgreementVersionDialog(Landroid/content/Context;Landroid/webkit/WebView;Landroid/app/ProgressDialog;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/webkit/WebView;
    .param p3, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 833
    invoke-static {p1}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getInstance(Landroid/content/Context;)Lcom/com2us/module/activeuser/useragree/TermsManager;

    move-result-object v1

    .line 835
    .local v1, "tm":Lcom/com2us/module/activeuser/useragree/TermsManager;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 836
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 837
    invoke-virtual {v1}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getErrorTitleText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 838
    invoke-virtual {v1}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getErrorMsgText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 839
    invoke-virtual {v1}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getRetryText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;

    invoke-direct {v3, p0, p2, p3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$4;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/webkit/WebView;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 862
    invoke-virtual {v1}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getQuitText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$5;

    invoke-direct {v3, p0, p3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$5;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 875
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private isAllChecked(I)Lorg/json/JSONArray;
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 1592
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1593
    .local v1, "agreementCheckList":Lorg/json/JSONArray;
    const/4 v5, 0x1

    .line 1594
    .local v5, "loof":Z
    move v2, p1

    .line 1596
    .local v2, "currentIndex":I
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->firstIndex:I

    sub-int v7, v2, v7

    div-int/lit16 v4, v7, 0x3e8

    .local v4, "i":I
    :goto_0
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->termsDataLength:I

    if-lt v4, v7, :cond_1

    .line 1630
    .end local v1    # "agreementCheckList":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-object v1

    .line 1597
    .restart local v1    # "agreementCheckList":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;

    .line 1598
    .local v0, "aBtn":Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;
    iget-boolean v7, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$AgreementBtn;->superChecked:Z

    if-nez v7, :cond_2

    .line 1600
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v1, v4, v7}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1605
    iget-object v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->verticalScrollView:Landroid/widget/ScrollView;

    iget-object v8, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxList:[Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->getLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getX()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxList:[Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->getLayout()Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1606
    iget-object v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v8, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxList:[Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->getLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getX()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxList:[Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$OuterTextBox;->getLayout()Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    move-object v1, v6

    .line 1607
    goto :goto_1

    .line 1601
    :catch_0
    move-exception v3

    .local v3, "e":Lorg/json/JSONException;
    move-object v1, v6

    .line 1602
    goto :goto_1

    .line 1611
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v1, v4, v7}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1616
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->termsDataLength:I

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_3

    .line 1617
    if-eqz v5, :cond_0

    .line 1620
    const/4 v5, 0x0

    .line 1621
    rem-int/lit16 v7, p1, 0x3e8

    iget v8, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->firstIndex:I

    add-int v2, v7, v8

    .line 1622
    const/4 v4, -0x1

    .line 1596
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1612
    :catch_1
    move-exception v3

    .restart local v3    # "e":Lorg/json/JSONException;
    move-object v1, v6

    .line 1613
    goto :goto_1

    .line 1626
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_3
    add-int/lit16 v2, v2, 0x3e8

    goto :goto_2
.end method

.method private loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1721
    const/4 v0, 0x0

    .line 1723
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1724
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1731
    :goto_0
    return-object v0

    .line 1725
    :catch_0
    move-exception v1

    .line 1726
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1727
    if-eqz v0, :cond_0

    .line 1728
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1729
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBitmaps(Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceOffset"    # Ljava/lang/String;

    .prologue
    .line 1655
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logoBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "common/ActiveUserImage/activeuser_logo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logoBitmap:Landroid/graphics/Bitmap;

    .line 1659
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->closeBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1660
    const-string v0, "common/ActiveUserImage/activeuser_close_button.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->closeBitmap:Landroid/graphics/Bitmap;

    .line 1662
    :cond_2
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_l_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 1663
    const-string v0, "common/ActiveUserImage/00_board_top_l.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_l_Bitmap:Landroid/graphics/Bitmap;

    .line 1664
    :cond_3
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 1665
    const-string v0, "common/ActiveUserImage/00_board_top_m.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    .line 1666
    :cond_4
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_r_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 1667
    const-string v0, "common/ActiveUserImage/00_board_top_r.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_r_Bitmap:Landroid/graphics/Bitmap;

    .line 1668
    :cond_5
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_logo_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 1669
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "common/ActiveUserImage/00_board_top_logo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_logo_Bitmap:Landroid/graphics/Bitmap;

    .line 1671
    :cond_6
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_l_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 1672
    const-string v0, "common/ActiveUserImage/00_board_down_l.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_l_Bitmap:Landroid/graphics/Bitmap;

    .line 1673
    :cond_7
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_m_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 1674
    const-string v0, "common/ActiveUserImage/00_board_down_m.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_m_Bitmap:Landroid/graphics/Bitmap;

    .line 1675
    :cond_8
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_r_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    .line 1676
    const-string v0, "common/ActiveUserImage/00_board_down_r.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_r_Bitmap:Landroid/graphics/Bitmap;

    .line 1677
    :cond_9
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_logo_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "common/ActiveUserImage/00_board_down_logo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_logo_Bitmap:Landroid/graphics/Bitmap;

    .line 1680
    :cond_a
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_top_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    .line 1681
    const-string v0, "common/ActiveUserImage/00_board_textbox_center_top.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_top_Bitmap:Landroid/graphics/Bitmap;

    .line 1682
    :cond_b
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_down_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    .line 1683
    const-string v0, "common/ActiveUserImage/00_board_textbox_center_down.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_down_Bitmap:Landroid/graphics/Bitmap;

    .line 1684
    :cond_c
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_left_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    .line 1685
    const-string v0, "common/ActiveUserImage/00_board_textbox_side_left.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_left_Bitmap:Landroid/graphics/Bitmap;

    .line 1686
    :cond_d
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_right_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_e

    .line 1687
    const-string v0, "common/ActiveUserImage/00_board_textbox_side_right.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_right_Bitmap:Landroid/graphics/Bitmap;

    .line 1688
    :cond_e
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_1_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_f

    .line 1689
    const-string v0, "common/ActiveUserImage/00_board_textbox_edge_1.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_1_Bitmap:Landroid/graphics/Bitmap;

    .line 1690
    :cond_f
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_2_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_10

    .line 1691
    const-string v0, "common/ActiveUserImage/00_board_textbox_edge_2.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_2_Bitmap:Landroid/graphics/Bitmap;

    .line 1692
    :cond_10
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_3_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    .line 1693
    const-string v0, "common/ActiveUserImage/00_board_textbox_edge_3.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_3_Bitmap:Landroid/graphics/Bitmap;

    .line 1694
    :cond_11
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_4_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 1695
    const-string v0, "common/ActiveUserImage/00_board_textbox_edge_4.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_4_Bitmap:Landroid/graphics/Bitmap;

    .line 1697
    :cond_12
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_l_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_13

    .line 1698
    const-string v0, "common/ActiveUserImage/00_btn_default_l.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_l_Bitmap:Landroid/graphics/Bitmap;

    .line 1699
    :cond_13
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_m_1_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_14

    .line 1700
    const-string v0, "common/ActiveUserImage/00_btn_default_m_1.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_m_1_Bitmap:Landroid/graphics/Bitmap;

    .line 1701
    :cond_14
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_r_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_15

    .line 1702
    const-string v0, "common/ActiveUserImage/00_btn_default_r.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_r_Bitmap:Landroid/graphics/Bitmap;

    .line 1703
    :cond_15
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_l_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_16

    .line 1704
    const-string v0, "common/ActiveUserImage/00_btn_select_l.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_l_Bitmap:Landroid/graphics/Bitmap;

    .line 1705
    :cond_16
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_m_1_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_17

    .line 1706
    const-string v0, "common/ActiveUserImage/00_btn_select_m_1.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_m_1_Bitmap:Landroid/graphics/Bitmap;

    .line 1707
    :cond_17
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_r_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_18

    .line 1708
    const-string v0, "common/ActiveUserImage/00_btn_select_r.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_r_Bitmap:Landroid/graphics/Bitmap;

    .line 1709
    :cond_18
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->check_btn_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_19

    .line 1710
    const-string v0, "common/ActiveUserImage/00_check_btn.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->check_btn_Bitmap:Landroid/graphics/Bitmap;

    .line 1711
    :cond_19
    return-void
.end method

.method private readLocalFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 880
    const/4 v1, 0x0

    .line 883
    .local v1, "data":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 886
    .local v3, "page":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 888
    .local v4, "r":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "s":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 890
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    .end local v3    # "page":Ljava/io/InputStream;
    .end local v4    # "r":Ljava/io/BufferedReader;
    .end local v5    # "s":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 896
    iget-object v6, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logger:Lcom/com2us/module/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Local Agreement File Data : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 898
    return-object v1

    .line 889
    .restart local v3    # "page":Ljava/io/InputStream;
    .restart local v4    # "r":Ljava/io/BufferedReader;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 891
    .end local v3    # "page":Ljava/io/InputStream;
    .end local v4    # "r":Ljava/io/BufferedReader;
    .end local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 892
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 893
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setOuterTextSize()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/16 v6, 0x50

    const/16 v5, 0x1e

    const/16 v4, 0x3c

    .line 903
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 905
    .local v1, "orientation":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 906
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 908
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayWidth:I

    .line 909
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayHeight:I

    .line 911
    packed-switch v1, :pswitch_data_0

    .line 914
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->termsDataLength:I

    if-ne v2, v3, :cond_0

    .line 915
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayHeight:I

    iget-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, v6}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxVerticalSize:I

    .line 916
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayHeight:I

    invoke-direct {p0, v6}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxHorizontalSize:I

    .line 939
    :goto_0
    return-void

    .line 917
    :cond_0
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->termsDataLength:I

    if-ne v2, v7, :cond_1

    .line 918
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayHeight:I

    iget-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxVerticalSize:I

    .line 919
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxHorizontalSize:I

    goto :goto_0

    .line 921
    :cond_1
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayHeight:I

    iget-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v5}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxVerticalSize:I

    .line 922
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v5}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxHorizontalSize:I

    goto :goto_0

    .line 927
    :pswitch_0
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->termsDataLength:I

    if-ne v2, v3, :cond_2

    .line 928
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayWidth:I

    iget-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, v6}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxVerticalSize:I

    .line 929
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayWidth:I

    invoke-direct {p0, v6}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxHorizontalSize:I

    goto :goto_0

    .line 930
    :cond_2
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->termsDataLength:I

    if-ne v2, v7, :cond_3

    .line 931
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayWidth:I

    iget-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxVerticalSize:I

    .line 932
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxHorizontalSize:I

    goto/16 :goto_0

    .line 934
    :cond_3
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayWidth:I

    iget-object v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v5}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxVerticalSize:I

    .line 935
    iget v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v4}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v5}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->outerTextBoxHorizontalSize:I

    goto/16 :goto_0

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    :goto_0
    return-void

    .line 1859
    :cond_0
    new-instance v0, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-direct {v0, p0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    .line 1860
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-virtual {v0, p1}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1861
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-virtual {v0, p2}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->setUrl(Ljava/lang/String;)V

    .line 1862
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logoBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->closeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1863
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->show()V

    goto :goto_0
.end method

.method private xDP(I)I
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 363
    int-to-float v0, p1

    iget v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private yDP(I)I
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 366
    int-to-float v0, p1

    iget v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "paramConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 1872
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1873
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;->dismiss()V

    .line 1877
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1899
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->configurationChanged()V

    .line 1925
    :cond_1
    :goto_0
    return-void

    .line 1901
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1923
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->configurationChanged()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-static {p0}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getInstance(Landroid/content/Context;)Lcom/com2us/module/activeuser/useragree/TermsManager;

    move-result-object v7

    iput-object v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->tm:Lcom/com2us/module/activeuser/useragree/TermsManager;

    .line 180
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v7, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$1;

    invoke-direct {v7, p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$1;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)V

    iput-object v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mBackKeyHandler:Landroid/os/Handler;

    .line 192
    const-string v7, "ActiveUser"

    invoke-static {v7, p0}, Lcom/com2us/module/util/LoggerGroup;->createLogger(Ljava/lang/String;Landroid/app/Activity;)Lcom/com2us/module/util/Logger;

    move-result-object v7

    iput-object v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logger:Lcom/com2us/module/util/Logger;

    .line 194
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 195
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 197
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayWidth:I

    .line 198
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayHeight:I

    .line 200
    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->DP:F

    .line 201
    iget v4, v2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 202
    .local v4, "xdpi":F
    iget v6, v2, Landroid/util/DisplayMetrics;->ydpi:F

    .line 204
    .local v6, "ydpi":F
    const/high16 v7, 0x43200000    # 160.0f

    div-float v7, v4, v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    .line 205
    const/high16 v7, 0x43200000    # 160.0f

    div-float v7, v6, v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    .line 207
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayWidth:I

    int-to-float v7, v7

    div-float v3, v7, v4

    .line 208
    .local v3, "x_inch":F
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayHeight:I

    int-to-float v7, v7

    div-float v5, v7, v6

    .line 209
    .local v5, "y_inch":F
    mul-float v7, v3, v3

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 212
    .local v0, "display":D
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->DP:F

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    .line 214
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayHeight:I

    const/16 v8, 0x1f4

    if-ge v7, v8, :cond_1

    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayWidth:I

    const/16 v8, 0x1f4

    if-ge v7, v8, :cond_1

    .line 215
    const v7, 0x3fd9999a    # 1.7f

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    .line 221
    :cond_0
    :goto_0
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v7, v0, v8

    if-lez v7, :cond_2

    .line 222
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    const v8, 0x3f59999a    # 0.85f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    .line 223
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    const v8, 0x3f59999a    # 0.85f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    .line 224
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    const v8, 0x3f59999a    # 0.85f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    .line 259
    :goto_1
    iget-object v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->tm:Lcom/com2us/module/activeuser/useragree/TermsManager;

    invoke-virtual {v7}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getData()[[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->termsDataLength:I

    .line 263
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "colorType"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->colorType:I

    .line 264
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "agreement_version"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreement_version:I

    .line 265
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->url:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "agreement_ex_url"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreement_ex_url:Ljava/lang/String;

    .line 268
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->colorType:I

    packed-switch v7, :pswitch_data_0

    .line 282
    const/16 v7, 0xe8

    const/16 v8, 0xe8

    const/16 v9, 0xe8

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->bodyBackgroundColor:I

    .line 283
    const/16 v7, 0xd8

    const/16 v8, 0xd8

    const/16 v9, 0xd8

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->centerLineColor:I

    .line 284
    const/16 v7, 0xd8

    const/16 v8, 0xd8

    const/16 v9, 0xd8

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->innerTextboxBackgroundColor:I

    .line 285
    const/16 v7, 0x44

    const/16 v8, 0x44

    const/16 v9, 0x44

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->titleFontColor:I

    .line 286
    const/16 v7, 0xcd

    const/16 v8, 0x20

    const/16 v9, 0x27

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->linkFontColor:I

    .line 287
    const/16 v7, 0x66

    const/16 v8, 0x66

    const/16 v9, 0x66

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->textboxFontColor:I

    .line 288
    const/16 v7, 0x44

    const/16 v8, 0x7c

    const/16 v9, 0xc1

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreeBtnDefaultFontColor:I

    .line 289
    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreeBtnSelectFontColor:I

    .line 308
    :goto_2
    const v7, 0x1030011

    invoke-virtual {p0, v7}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->setTheme(I)V

    .line 310
    invoke-direct {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->createUI()Landroid/view/ViewGroup;

    move-result-object v7

    iput-object v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mainLayout:Landroid/view/ViewGroup;

    .line 311
    iget-object v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mainLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v7}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->setContentView(Landroid/view/View;)V

    .line 312
    return-void

    .line 217
    :cond_1
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    const/high16 v8, 0x3fc00000    # 1.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 218
    const/high16 v7, 0x3fc00000    # 1.5f

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    goto/16 :goto_0

    .line 226
    :cond_2
    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    cmpl-double v7, v0, v8

    if-lez v7, :cond_3

    .line 227
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    .line 228
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    .line 229
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    goto/16 :goto_1

    .line 231
    :cond_3
    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    cmpl-double v7, v0, v8

    if-lez v7, :cond_4

    .line 232
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    const/high16 v8, 0x3f400000    # 0.75f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    .line 233
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    const/high16 v8, 0x3f400000    # 0.75f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    .line 234
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    const v8, 0x3f733333    # 0.95f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    goto/16 :goto_1

    .line 236
    :cond_4
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpl-double v7, v0, v8

    if-lez v7, :cond_5

    .line 237
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    .line 238
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    .line 239
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    goto/16 :goto_1

    .line 240
    :cond_5
    const-wide/high16 v8, 0x4013000000000000L    # 4.75

    cmpl-double v7, v0, v8

    if-lez v7, :cond_6

    .line 241
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    const v8, 0x3f266666    # 0.65f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    .line 242
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    const v8, 0x3f266666    # 0.65f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    .line 243
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    const v8, 0x3f933333    # 1.15f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    goto/16 :goto_1

    .line 244
    :cond_6
    const-wide/high16 v8, 0x4012000000000000L    # 4.5

    cmpl-double v7, v0, v8

    if-lez v7, :cond_7

    .line 245
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    .line 246
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    .line 247
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    goto/16 :goto_1

    .line 248
    :cond_7
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    cmpl-double v7, v0, v8

    if-lez v7, :cond_8

    .line 249
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    const v8, 0x3f0ccccd    # 0.55f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    .line 250
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    const v8, 0x3f0ccccd    # 0.55f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    .line 251
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    const v8, 0x3fa66666    # 1.3f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    goto/16 :goto_1

    .line 253
    :cond_8
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    .line 254
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    .line 255
    iget v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    const v8, 0x3faccccd    # 1.35f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->fontDP:F

    goto/16 :goto_1

    .line 270
    :pswitch_0
    const/16 v7, 0x22

    const/16 v8, 0x22

    const/16 v9, 0x22

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->bodyBackgroundColor:I

    .line 271
    const/16 v7, 0x11

    const/16 v8, 0x11

    const/16 v9, 0x11

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->centerLineColor:I

    .line 272
    const/16 v7, 0x11

    const/16 v8, 0x11

    const/16 v9, 0x11

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->innerTextboxBackgroundColor:I

    .line 273
    const/16 v7, 0xbc

    const/16 v8, 0xbc

    const/16 v9, 0xbc

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->titleFontColor:I

    .line 274
    const/16 v7, 0x44

    const/16 v8, 0x7c

    const/16 v9, 0xc1

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->linkFontColor:I

    .line 275
    const/16 v7, 0x99

    const/16 v8, 0x99

    const/16 v9, 0x99

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->textboxFontColor:I

    .line 276
    const/16 v7, 0xcf

    const/16 v8, 0xcf

    const/16 v9, 0xcf

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreeBtnDefaultFontColor:I

    .line 277
    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->agreeBtnSelectFontColor:I

    goto/16 :goto_2

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1736
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1738
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mHandler:Landroid/os/Handler;

    .line 1739
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mBackKeyHandler:Landroid/os/Handler;

    .line 1741
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1743
    :cond_0
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->logoBitmap:Landroid/graphics/Bitmap;

    .line 1745
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->closeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1746
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->closeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1747
    :cond_1
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->closeBitmap:Landroid/graphics/Bitmap;

    .line 1750
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_l_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1751
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_l_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1752
    :cond_2
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_l_Bitmap:Landroid/graphics/Bitmap;

    .line 1754
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1755
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1756
    :cond_3
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    .line 1758
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_r_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1759
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_r_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1760
    :cond_4
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_r_Bitmap:Landroid/graphics/Bitmap;

    .line 1762
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_logo_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 1763
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_logo_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1764
    :cond_5
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_logo_Bitmap:Landroid/graphics/Bitmap;

    .line 1766
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_l_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 1767
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_l_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1768
    :cond_6
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_l_Bitmap:Landroid/graphics/Bitmap;

    .line 1770
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 1771
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1772
    :cond_7
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_m_Bitmap:Landroid/graphics/Bitmap;

    .line 1774
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_r_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 1775
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_r_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1776
    :cond_8
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_r_Bitmap:Landroid/graphics/Bitmap;

    .line 1778
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_logo_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 1779
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_logo_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1780
    :cond_9
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_down_logo_Bitmap:Landroid/graphics/Bitmap;

    .line 1783
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_top_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 1784
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_top_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1785
    :cond_a
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_top_Bitmap:Landroid/graphics/Bitmap;

    .line 1787
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_down_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 1788
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_down_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1789
    :cond_b
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_center_down_Bitmap:Landroid/graphics/Bitmap;

    .line 1791
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_left_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1792
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_left_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1793
    :cond_c
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_left_Bitmap:Landroid/graphics/Bitmap;

    .line 1795
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_right_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 1796
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_right_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1797
    :cond_d
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_side_right_Bitmap:Landroid/graphics/Bitmap;

    .line 1799
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_1_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    .line 1800
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_1_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1801
    :cond_e
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_1_Bitmap:Landroid/graphics/Bitmap;

    .line 1803
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_2_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 1804
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_2_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1805
    :cond_f
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_2_Bitmap:Landroid/graphics/Bitmap;

    .line 1807
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_3_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 1808
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_3_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1809
    :cond_10
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_3_Bitmap:Landroid/graphics/Bitmap;

    .line 1811
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_4_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    .line 1812
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_4_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1813
    :cond_11
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_textbox_edge_4_Bitmap:Landroid/graphics/Bitmap;

    .line 1816
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_l_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    .line 1817
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_l_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1818
    :cond_12
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_l_Bitmap:Landroid/graphics/Bitmap;

    .line 1820
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_m_1_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 1821
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_m_1_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1822
    :cond_13
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_m_1_Bitmap:Landroid/graphics/Bitmap;

    .line 1824
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_r_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    .line 1825
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_r_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1826
    :cond_14
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_default_r_Bitmap:Landroid/graphics/Bitmap;

    .line 1828
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_l_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 1829
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_l_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1830
    :cond_15
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_l_Bitmap:Landroid/graphics/Bitmap;

    .line 1832
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_m_1_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    .line 1833
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_m_1_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1834
    :cond_16
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_m_1_Bitmap:Landroid/graphics/Bitmap;

    .line 1836
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_r_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 1837
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_r_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1838
    :cond_17
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->btn_select_r_Bitmap:Landroid/graphics/Bitmap;

    .line 1840
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->check_btn_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    .line 1841
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->check_btn_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1842
    :cond_18
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->check_btn_Bitmap:Landroid/graphics/Bitmap;

    .line 1844
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->destroyParentActivity:Z

    if-eqz v0, :cond_19

    .line 1845
    invoke-static {}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->getInstance()Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1847
    :cond_19
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 327
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 328
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->backKeyFlag:Z

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->tm:Lcom/com2us/module/activeuser/useragree/TermsManager;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/TermsManager;->getBackKeyText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->backKeyFlag:Z

    .line 331
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mBackKeyHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 340
    :goto_0
    return v1

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->destroyParentActivity:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->closeAgreementUI(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 335
    :cond_2
    invoke-virtual {p0}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->finish()V

    goto :goto_0

    .line 340
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onStart()V
    .locals 8

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 318
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->mainLayout:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->xDP:F

    iget v4, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->yDP:F

    iget v5, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayWidth:I

    iget v6, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->displayHeight:I

    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->board_top_m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/view/ViewGroup;FFIII)V

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->userAgreeAnimation:Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeAnimation;->openAgreementUI()V

    .line 320
    return-void
.end method
