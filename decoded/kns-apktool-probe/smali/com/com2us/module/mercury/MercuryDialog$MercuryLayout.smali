.class Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;
.super Landroid/widget/FrameLayout;
.source "MercuryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/mercury/MercuryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MercuryLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private bitmapWebViewBorder0:Landroid/graphics/Bitmap;

.field private bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

.field private bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

.field private bitmapWebViewBorder2:Landroid/graphics/Bitmap;

.field private board:Ljava/lang/String;

.field private hRatio:I

.field private instance:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

.field private isFullBanner:Z

.field private isFullScreen:Z

.field private margin:I

.field private mercuryViewLayout:Landroid/widget/LinearLayout;

.field private onTouch1d:Z

.field private onTouch1s:Z

.field private onTouch2:Z

.field private pid:Ljava/lang/String;

.field final synthetic this$0:Lcom/com2us/module/mercury/MercuryDialog;

.field private touchRect1d:Landroid/graphics/Rect;

.field private touchRect1s:Landroid/graphics/Rect;

.field private touchRect2:Landroid/graphics/Rect;

.field private urlString:Ljava/lang/String;

.field private wRatio:I

.field private webView:Landroid/webkit/WebView;

.field private webViewBorder0:Landroid/widget/ImageView;

.field private webViewBorder1d:Landroid/widget/ImageView;

.field private webViewBorder1s:Landroid/widget/ImageView;

.field private webViewBorder2:Landroid/widget/ImageView;

.field private webViewBorderHeight:F

.field private webViewBorderLayout:Landroid/widget/LinearLayout;

.field private webViewBorderMargin:F

.field private webViewBorderSubLayout:Landroid/widget/RelativeLayout;

.field private webViewBorderWidth:F

.field private webViewHeight:I

.field private webViewJSON:Lorg/json/JSONObject;

.field private webViewPadding:F

.field private webViewType:Ljava/lang/String;

.field private webViewWidth:I

.field private zoomRate:F


# direct methods
.method public constructor <init>(Lcom/com2us/module/mercury/MercuryDialog;Landroid/app/Activity;)V
    .locals 4
    .param p2, "_activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 175
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    .line 176
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 127
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->instance:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    .line 128
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->urlString:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webView:Landroid/webkit/WebView;

    .line 130
    const-string v0, "full"

    iput-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->board:Ljava/lang/String;

    .line 131
    iput v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->margin:I

    .line 132
    iput v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->wRatio:I

    .line 133
    iput v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->hRatio:I

    .line 135
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->pid:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewType:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    .line 139
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewJSON:Lorg/json/JSONObject;

    .line 140
    iput-boolean v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->isFullScreen:Z

    .line 141
    iput-boolean v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->isFullBanner:Z

    .line 144
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    .line 145
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    .line 146
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

    .line 147
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    .line 149
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->mercuryViewLayout:Landroid/widget/LinearLayout;

    .line 150
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderLayout:Landroid/widget/LinearLayout;

    .line 151
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderSubLayout:Landroid/widget/RelativeLayout;

    .line 152
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder0:Landroid/widget/ImageView;

    .line 153
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1d:Landroid/widget/ImageView;

    .line 154
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    .line 155
    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder2:Landroid/widget/ImageView;

    .line 158
    iput v3, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    .line 160
    iput v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewWidth:I

    .line 161
    iput v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewHeight:I

    .line 162
    iput v3, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewPadding:F

    .line 164
    iput v3, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderWidth:F

    .line 165
    iput v3, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderHeight:F

    .line 166
    const/high16 v0, 0x41ac0000    # 21.5f

    iput v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderMargin:F

    .line 169
    iput-boolean v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->onTouch1d:Z

    .line 171
    iput-boolean v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->onTouch1s:Z

    .line 173
    iput-boolean v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->onTouch2:Z

    .line 177
    iput-object p2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    .line 179
    iput-object p0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->instance:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    .line 180
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->isFullBanner:Z

    return v0
.end method

.method static synthetic access$10(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->resetWebViewSize(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$11(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$12(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$13(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->board:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->mercuryViewLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$15(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->instance:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->calculateWebViewBorderSize(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic access$17(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->calculateWebViewSize(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$18(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewWidth:I

    return v0
.end method

.method static synthetic access$19(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewHeight:I

    return v0
.end method

.method static synthetic access$2(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->isFullScreen:Z

    return-void
.end method

.method static synthetic access$20(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->touchRect1d:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$22(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->onTouch1d:Z

    return-void
.end method

.method static synthetic access$23(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->touchRect1d:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$25(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->onTouch1d:Z

    return v0
.end method

.method static synthetic access$26(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->onTouch2:Z

    return v0
.end method

.method static synthetic access$27(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->pid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$29(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->touchRect1s:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$3(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->onTouch1s:Z

    return-void
.end method

.method static synthetic access$31(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->touchRect1s:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$32(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->onTouch1s:Z

    return v0
.end method

.method static synthetic access$33(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->touchRect2:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$34(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V
    .locals 0

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->onTouch2:Z

    return-void
.end method

.method static synthetic access$35(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->touchRect2:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$36(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Lcom/com2us/module/mercury/MercuryDialog;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Z)V
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->isFullBanner:Z

    return-void
.end method

.method static synthetic access$5(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->urlString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->isFullScreen:Z

    return v0
.end method

.method static synthetic access$8(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->mercuryViewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private calculateWebViewBorderSize(Landroid/widget/FrameLayout;)V
    .locals 12
    .param p1, "layout"    # Landroid/widget/FrameLayout;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 679
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 680
    .local v0, "curView":Landroid/view/View;
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Lcom/com2us/module/mercury/MercuryDialog;->access$15(Lcom/com2us/module/mercury/MercuryDialog;I)V

    .line 681
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Lcom/com2us/module/mercury/MercuryDialog;->access$16(Lcom/com2us/module/mercury/MercuryDialog;I)V

    .line 682
    sget-object v6, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "calculateWebViewBorderSize : Screen w, h "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$17(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$18(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    sget-object v6, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bitmapWebViewBorder0o.getWidth() : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-object v6, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bitmapWebViewBorder0o.getHeight() : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 686
    const-string v9, ", bitmapWebViewBorder1do.getHeight() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$6(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sum : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 687
    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v10}, Lcom/com2us/module/mercury/MercuryDialog;->access$6(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 685
    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    sget-object v6, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bitmapWebViewBorder1do.getWidth() : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$6(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 689
    const-string v9, ", bitmapWebViewBorder2o.getWidth() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$8(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sum : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 690
    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$6(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v10}, Lcom/com2us/module/mercury/MercuryDialog;->access$8(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 688
    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryDialog;->access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v7}, Lcom/com2us/module/mercury/MercuryDialog;->access$6(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v5, v6

    .line 694
    .local v5, "verticalRatio":F
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryDialog;->access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v4, v6

    .line 695
    .local v4, "horizontalRatio":F
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryDialog;->access$17(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v7}, Lcom/com2us/module/mercury/MercuryDialog;->access$18(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    .line 697
    sget-object v6, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "zoomRate1 : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$17(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", zoomRate2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$18(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryDialog;->access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v7}, Lcom/com2us/module/mercury/MercuryDialog;->access$6(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderHeight:F

    .line 701
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryDialog;->access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderWidth:F

    .line 703
    sget-object v6, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "webViewBorderHeight : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v10}, Lcom/com2us/module/mercury/MercuryDialog;->access$6(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderHeight:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-object v6, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "webViewBorderWidth : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderWidth:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryDialog;->access$17(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderWidth:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    float-to-int v3, v6

    .line 708
    .local v3, "edgeWidthRight":I
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryDialog;->access$17(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderWidth:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    float-to-int v2, v6

    .line 709
    .local v2, "edgeWidthLeft":I
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryDialog;->access$18(Lcom/com2us/module/mercury/MercuryDialog;)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderHeight:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    float-to-int v1, v6

    .line 710
    .local v1, "edgeHeight":I
    sget-object v6, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Padding edgeWidth wL, wR, h : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1, v2, v1, v3, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 714
    return-void
.end method

.method private calculateWebViewSize(Landroid/widget/LinearLayout;)V
    .locals 12
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 649
    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->hRatio:I

    int-to-float v4, v7

    .line 650
    .local v4, "verticalRatio":F
    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->wRatio:I

    int-to-float v3, v7

    .line 651
    .local v3, "horizontalRatio":F
    sget-object v7, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v8, "Mercury"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "calculateWebViewSize : horizontalRatio & verticalRatio : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderMargin:F

    iget v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderMargin:F

    .line 655
    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderMargin:F

    mul-float/2addr v7, v11

    iput v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewPadding:F

    .line 657
    sget-object v7, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v8, "Mercury"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "calculateWebViewSize : webViewPadding : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewPadding:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " @ zoomRate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderWidth:F

    iget v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewPadding:F

    sub-float v6, v7, v8

    .line 661
    .local v6, "webViewWidth":F
    mul-float v7, v6, v4

    div-float v5, v7, v3

    .line 662
    .local v5, "webViewHeight":F
    sget-object v7, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v8, "Mercury"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "calculateWebViewSize : webView w, h "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewPadding:F

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 666
    .local v1, "edgeWidthLeft":I
    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewPadding:F

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 668
    .local v2, "edgeWidthRight":I
    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderHeight:F

    iget v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderMargin:F

    sub-float/2addr v7, v8

    sub-float/2addr v7, v5

    float-to-int v7, v7

    add-int/lit8 v0, v7, -0xa

    .line 669
    .local v0, "edgeHeight":I
    sget-object v7, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v8, "Mercury"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Padding edgeWidth wL, wR, h "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    float-to-double v8, v7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v8, v10

    if-gez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    add-int/2addr v7, v2

    invoke-virtual {p1, v1, v2, v7, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 674
    return-void

    .line 673
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private resetWebViewSize(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v0, 0x0

    .line 642
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 643
    return-void
.end method

.method private setLayout()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;

    invoke-direct {v1, p0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$1;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method


# virtual methods
.method public changeButtonSize(IIIIII)Z
    .locals 6
    .param p1, "buttonWidth"    # I
    .param p2, "buttonHeight"    # I
    .param p3, "leftMargin"    # I
    .param p4, "topMargin"    # I
    .param p5, "rightMargin"    # I
    .param p6, "bottomMargin"    # I

    .prologue
    const/4 v1, 0x0

    .line 306
    if-lez p1, :cond_0

    if-gtz p1, :cond_1

    .line 308
    :cond_0
    sget-object v2, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: button size is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/com2us/module/util/Logger;->i(Ljava/lang/String;)V

    .line 333
    :goto_0
    return v1

    .line 312
    :cond_1
    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    if-ltz p5, :cond_2

    if-gez p6, :cond_3

    .line 314
    :cond_2
    sget-object v2, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Mercury"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error : Margin is : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_3
    const-string v2, "closeButton"

    invoke-virtual {p0, v2}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 320
    .local v0, "closeButton":Landroid/widget/ImageView;
    if-nez v0, :cond_4

    .line 322
    sget-object v2, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Mercury"

    const-string v4, "Error : closeButton is null in changeButtonSize"

    invoke-virtual {v2, v3, v4}, Lcom/com2us/module/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 328
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v1, p3}, Lcom/com2us/module/mercury/MercuryDialog;->DPFromPixel(I)I

    move-result v1

    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v2, p4}, Lcom/com2us/module/mercury/MercuryDialog;->DPFromPixel(I)I

    move-result v2

    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v3, p5}, Lcom/com2us/module/mercury/MercuryDialog;->DPFromPixel(I)I

    move-result v3

    iget-object v4, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v4, p5}, Lcom/com2us/module/mercury/MercuryDialog;->DPFromPixel(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 330
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 333
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public init(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 185
    :try_start_0
    sget-object v1, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "Mercury"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MercuryLayout Init : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewJSON:Lorg/json/JSONObject;

    .line 187
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->urlString:Ljava/lang/String;

    .line 188
    const-string v1, "board"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->board:Ljava/lang/String;

    .line 189
    sget-object v1, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v2, "Mercury"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "board is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->board:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->board:Ljava/lang/String;

    const-string v2, "custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "margin"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->margin:I

    .line 193
    const-string v1, "wratio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->wRatio:I

    .line 194
    const-string v1, "hratio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->hRatio:I

    .line 195
    const-string v1, "pid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->pid:Ljava/lang/String;

    .line 196
    const-string v1, "webview_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewType:Ljava/lang/String;

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->isFullBanner:Z

    .line 204
    :goto_0
    invoke-direct {p0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->setLayout()V

    .line 210
    :goto_1
    return-void

    .line 201
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->isFullBanner:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public resizeWebview(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 617
    sget-object v0, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "Mercury"

    const-string v2, "resizing Webview"

    invoke-virtual {v0, v1, v2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$9;

    invoke-direct {v1, p0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$9;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 627
    return-void
.end method

.method public setCloseButton(IIIIII)Z
    .locals 7
    .param p1, "buttonWidth"    # I
    .param p2, "buttonHeight"    # I
    .param p3, "leftMargin"    # I
    .param p4, "topMargin"    # I
    .param p5, "rightMargin"    # I
    .param p6, "bottomMargin"    # I

    .prologue
    .line 555
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 557
    :cond_0
    sget-object v2, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Mercury"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: button Size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/4 v2, 0x0

    .line 612
    :goto_0
    return v2

    .line 561
    :cond_1
    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    if-ltz p5, :cond_2

    if-gez p6, :cond_3

    .line 563
    :cond_2
    sget-object v2, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Mercury"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error : Margin is : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v2, 0x0

    goto :goto_0

    .line 568
    :cond_3
    const-string v2, "closeLayout"

    invoke-virtual {p0, v2}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 569
    .local v1, "templayout":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_4

    .line 571
    invoke-virtual {p0, v1}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->removeView(Landroid/view/View;)V

    .line 575
    :cond_4
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/com2us/module/mercury/MercuryDialog;->access$9(Lcom/com2us/module/mercury/MercuryDialog;Landroid/widget/ImageView;)V

    .line 576
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$10(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, "closeButton"

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 577
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$10(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$8;

    invoke-direct {v3, p0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$8;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryDialog;->access$11(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/com2us/module/mercury/MercuryDialog;->access$12(Lcom/com2us/module/mercury/MercuryDialog;Landroid/graphics/Bitmap;)V

    .line 586
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$11(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    .line 588
    sget-object v2, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v3, "Mercury"

    const-string v4, "Error : CloseButton Bitmap is null"

    invoke-virtual {v2, v3, v4}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 593
    :cond_5
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$10(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v3, p3}, Lcom/com2us/module/mercury/MercuryDialog;->DPFromPixel(I)I

    move-result v3

    iget-object v4, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v4, p4}, Lcom/com2us/module/mercury/MercuryDialog;->DPFromPixel(I)I

    move-result v4

    iget-object v5, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v5, p5}, Lcom/com2us/module/mercury/MercuryDialog;->DPFromPixel(I)I

    move-result v5

    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-virtual {v6, p5}, Lcom/com2us/module/mercury/MercuryDialog;->DPFromPixel(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 594
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$10(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryDialog;->access$11(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 595
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$10(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 596
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$10(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 597
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$10(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 598
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$10(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/com2us/module/mercury/MercuryDialog;->access$13(Lcom/com2us/module/mercury/MercuryDialog;Landroid/widget/LinearLayout;)V

    .line 603
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$14(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    const-string v3, "closeLayout"

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 604
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 606
    .local v0, "closeLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$14(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x35

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 607
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$14(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$14(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v3}, Lcom/com2us/module/mercury/MercuryDialog;->access$10(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 609
    iget-object v2, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v2}, Lcom/com2us/module/mercury/MercuryDialog;->access$14(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->addView(Landroid/view/View;)V

    .line 612
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public setWebViewBorder()Z
    .locals 14

    .prologue
    const/16 v13, 0x66

    const/4 v12, -0x1

    const/4 v5, 0x1

    const/4 v11, -0x2

    const/4 v6, 0x0

    .line 341
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder0:Landroid/widget/ImageView;

    .line 342
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder0:Landroid/widget/ImageView;

    const-string v8, "webViewBorder"

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 343
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1d:Landroid/widget/ImageView;

    .line 344
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1d:Landroid/widget/ImageView;

    const-string v8, "webViewBorder"

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 346
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1d:Landroid/widget/ImageView;

    new-instance v8, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$2;

    invoke-direct {v8, p0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$2;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1d:Landroid/widget/ImageView;

    new-instance v8, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;

    invoke-direct {v8, p0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$3;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 387
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    .line 388
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    const-string v8, "webViewBorder"

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 389
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    new-instance v8, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$4;

    invoke-direct {v8, p0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$4;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    new-instance v8, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$5;

    invoke-direct {v8, p0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$5;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 422
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder2:Landroid/widget/ImageView;

    .line 423
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder2:Landroid/widget/ImageView;

    const-string v8, "webViewBorder"

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 424
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder2:Landroid/widget/ImageView;

    new-instance v8, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$6;

    invoke-direct {v8, p0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$6;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder2:Landroid/widget/ImageView;

    new-instance v8, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$7;

    invoke-direct {v8, p0}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$7;-><init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 463
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v7}, Lcom/com2us/module/mercury/MercuryDialog;->access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v8}, Lcom/com2us/module/mercury/MercuryDialog;->access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$5(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v7, v8, v9, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    .line 464
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v7}, Lcom/com2us/module/mercury/MercuryDialog;->access$6(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v8}, Lcom/com2us/module/mercury/MercuryDialog;->access$6(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$6(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v7, v8, v9, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    .line 465
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v7}, Lcom/com2us/module/mercury/MercuryDialog;->access$7(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v8}, Lcom/com2us/module/mercury/MercuryDialog;->access$7(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$7(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v7, v8, v9, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

    .line 466
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v7}, Lcom/com2us/module/mercury/MercuryDialog;->access$8(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v8}, Lcom/com2us/module/mercury/MercuryDialog;->access$8(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->this$0:Lcom/com2us/module/mercury/MercuryDialog;

    invoke-static {v9}, Lcom/com2us/module/mercury/MercuryDialog;->access$8(Lcom/com2us/module/mercury/MercuryDialog;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->zoomRate:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v7, v8, v9, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    .line 467
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 469
    :cond_0
    sget-object v5, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    const-string v7, "Mercury"

    const-string v8, "Error : Some of WebViewBorder Bitmap is null"

    invoke-virtual {v5, v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 550
    :goto_0
    return v5

    .line 473
    :cond_1
    sget-object v7, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bitmapWebViewBorder0.getWidth() : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bitmapWebViewBorder1d.getWidth() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bitmapWebViewBorder2.getWidth() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 474
    sget-object v7, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bitmapWebViewBorder0.getHeight() : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bitmapWebViewBorder1d.getHeight() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bitmapWebViewBorder2.getHeight() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 475
    sget-object v7, Lcom/com2us/module/mercury/MercuryDialog;->logger:Lcom/com2us/module/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bitmapWebViewBorder1d.getWidth()+bitmapWebViewBorder2.getWidth : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 478
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder0:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder0:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 479
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder0:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 480
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder0:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 481
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder0:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 482
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder0:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1d:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 485
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1d:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 486
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1d:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 487
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1d:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 488
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1d:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1s:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 491
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 492
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 493
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 494
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder2:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 498
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder2:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 499
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder2:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 500
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder2:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 501
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder2:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderLayout:Landroid/widget/LinearLayout;

    .line 505
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderLayout:Landroid/widget/LinearLayout;

    const-string v8, "webViewBorderLayout"

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 506
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 507
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x31

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 508
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 509
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderLayout:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder0:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderSubLayout:Landroid/widget/RelativeLayout;

    .line 513
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderSubLayout:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderSubLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 515
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderSubLayout:Landroid/widget/RelativeLayout;

    const-string v8, "webViewBorderSubLayout"

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 517
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 518
    .local v4, "doNotShowAgainText":Landroid/widget/TextView;
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 519
    invoke-static {v6}, Lcom/com2us/module/mercury/MercuryData;->getDialogBorderText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 521
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e6147ae    # 0.22f

    mul-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 522
    invoke-static {v13, v13, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-direct {v3, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 525
    .local v3, "doNotShowAgain":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 527
    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x7

    div-int/lit8 v7, v7, 0x6

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x7

    iget-object v9, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/lit8 v9, v9, 0x1

    div-int/lit8 v9, v9, 0x7

    invoke-virtual {v3, v7, v6, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 528
    const/16 v6, 0x13

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 529
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 531
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 532
    .local v0, "checkBoxLayout":Landroid/widget/RelativeLayout;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder1d:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 534
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder1s:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 535
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 536
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderSubLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 538
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->activity:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 539
    .local v1, "closeButtonLayout":Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->bitmapWebViewBorder2:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 540
    .local v2, "closeButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 541
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorder2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 544
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderSubLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 546
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderSubLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 548
    iget-object v6, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webViewBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public setWebViewScrollLock(Z)V
    .locals 4
    .param p1, "lockFlag"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 635
    iget-object v3, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 636
    iget-object v0, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 637
    return-void

    :cond_0
    move v0, v2

    .line 635
    goto :goto_0

    :cond_1
    move v1, v2

    .line 636
    goto :goto_1
.end method
