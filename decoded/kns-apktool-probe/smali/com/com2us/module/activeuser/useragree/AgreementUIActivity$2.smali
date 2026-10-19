.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$2;
.super Ljava/lang/Object;
.source "AgreementUIActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->createWebView()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

.field private final synthetic val$web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$2;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    iput-object p2, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$2;->val$web:Landroid/webkit/WebView;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$2;->val$web:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///android_asset/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 534
    return-void
.end method
