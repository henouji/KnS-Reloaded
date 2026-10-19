.class public Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;
.super Ljava/lang/Object;
.source "AppVersionCheck.java"

# interfaces
.implements Lcom/com2us/module/activeuser/ActiveUserModule;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AVC_RECEIVE_DATA:I = 0x0

.field private static final HOUR:J = 0x36ee80L


# instance fields
.field private activity:Landroid/app/Activity;

.field volatile cancelStr:Ljava/lang/String;

.field private dialog:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

.field private glView:Landroid/opengl/GLSurfaceView;

.field private isShownDialog:Z

.field private jniResponsePointer:I

.field private listener:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckListener;

.field private final logger:Lcom/com2us/module/util/Logger;

.field volatile okStr:Ljava/lang/String;

.field volatile period:I

.field private requestedTime:J

.field private sdf:Ljava/text/SimpleDateFormat;

.field volatile text:Ljava/lang/String;

.field volatile url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;Lcom/com2us/module/util/Logger;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/opengl/GLSurfaceView;
    .param p3, "logger"    # Lcom/com2us/module/util/Logger;

    .prologue
    .line 73
    invoke-direct {p0, p1, p3}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;-><init>(Landroid/app/Activity;Lcom/com2us/module/util/Logger;)V

    .line 74
    iput-object p2, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->glView:Landroid/opengl/GLSurfaceView;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/com2us/module/util/Logger;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "logger"    # Lcom/com2us/module/util/Logger;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->isShownDialog:Z

    .line 41
    iput v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->jniResponsePointer:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->glView:Landroid/opengl/GLSurfaceView;

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd_HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->sdf:Ljava/text/SimpleDateFormat;

    .line 59
    iput-object p1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->activity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->logger:Lcom/com2us/module/util/Logger;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;)Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->dialog:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->dialog:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->setReponseListener(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckListener;)V

    .line 104
    iput-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->dialog:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    .line 106
    iput-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->activity:Landroid/app/Activity;

    .line 108
    iput-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->glView:Landroid/opengl/GLSurfaceView;

    .line 109
    return-void
.end method

.method public isExecutable()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public responseNetwork(Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;)V
    .locals 3
    .param p1, "data"    # Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AppVersionCheck][responseNetwork]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public setJNIReponseListener(I)V
    .locals 3
    .param p1, "callbackPointer"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AppVersionCheck][setNativeReponseListener]pointer : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V

    .line 96
    iput p1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->jniResponsePointer:I

    .line 97
    return-void
.end method

.method public setReponseListener(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->listener:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckListener;

    .line 85
    return-void
.end method

.method public showDialog()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AppVersionCheck][showDialog]text="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->dialog:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->dialog:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->dialog:Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;

    invoke-virtual {v0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheckDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;

    invoke-direct {v1, p0}, Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck$1;-><init>(Lcom/com2us/module/activeuser/appversioncheck/AppVersionCheck;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    :cond_1
    return-void
.end method
