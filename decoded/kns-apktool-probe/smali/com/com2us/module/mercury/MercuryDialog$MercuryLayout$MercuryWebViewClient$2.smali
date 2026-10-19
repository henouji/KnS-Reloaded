.class Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient$2;
.super Ljava/lang/Object;
.source "MercuryDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;


# direct methods
.method constructor <init>(Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient$2;->this$2:Lcom/com2us/module/mercury/MercuryDialog$MercuryLayout$MercuryWebViewClient;

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 800
    const/4 v0, 0x1

    return v0
.end method
