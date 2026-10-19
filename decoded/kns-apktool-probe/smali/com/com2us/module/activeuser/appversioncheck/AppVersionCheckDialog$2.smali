.class Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$2;
.super Ljava/lang/Object;
.source "AppVersionCheckDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;


# direct methods
.method constructor <init>(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$2;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 51
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
