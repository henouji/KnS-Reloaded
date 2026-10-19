.class Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$3;
.super Ljava/lang/Object;
.source "AppVersionCheckDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->setNegativeButton(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$3;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog$3;->this$0:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->dismiss()V

    .line 92
    return-void
.end method
