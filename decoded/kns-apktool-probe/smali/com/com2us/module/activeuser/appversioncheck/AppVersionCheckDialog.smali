.class public Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;
.super Landroid/app/AlertDialog;
.source "AppVersionCheckDialog.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private listener:Landroid/content/DialogInterface$OnClickListener;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$1;-><init>(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->setCancelable(Z)V

    .line 48
    new-instance v0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$2;

    invoke-direct {v0, p0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$2;-><init>(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;)V

    invoke-virtual {p0, v0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, -0x2

    new-instance v1, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$3;

    invoke-direct {v1, p0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$3;-><init>(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 94
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->url:Ljava/lang/String;

    .line 66
    return-void
.end method
