.class Lcom/com2us/peppermint/PeppermintDialog$a;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/peppermint/PeppermintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/PeppermintDialog;


# direct methods
.method public constructor <init>(Lcom/com2us/peppermint/PeppermintDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/PeppermintDialog$a;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/PeppermintDialog$a;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/com2us/peppermint/t;

    invoke-direct {v0, p0, p1}, Lcom/com2us/peppermint/t;-><init>(Lcom/com2us/peppermint/PeppermintDialog$a;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/com2us/peppermint/PeppermintDialog$a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
