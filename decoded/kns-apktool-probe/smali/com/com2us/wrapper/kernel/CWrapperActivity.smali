.class public abstract Lcom/com2us/wrapper/kernel/CWrapperActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/com2us/common/ICommonTaskRunnerListener;
.implements Lcom/com2us/wrapper/kernel/CWrapperKernel$s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/com2us/wrapper/kernel/CWrapperActivity$8;
    }
.end annotation


# instance fields
.field private a:Landroid/media/AudioManager;

.field private b:I

.field private c:Lcom/com2us/wrapper/function/CFunctionTaskRunner;

.field private d:Lcom/com2us/wrapper/kernel/CWrapperTimer;

.field private e:Lcom/com2us/wrapper/kernel/CEventHandler;

.field private f:Lcom/com2us/wrapper/game/CGameManager;

.field private g:Lcom/com2us/wrapper/sensor/CSensor;

.field private h:Lcom/com2us/wrapper/ui/CUserInput;

.field private i:Lcom/com2us/wrapper/ui/CTextInput;

.field private j:Lcom/com2us/wrapper/font/CFont;

.field private k:Lcom/com2us/wrapper/media/CSoundManager;

.field private l:Lcom/com2us/wrapper/network/CHttpManager;

.field private m:Lcom/com2us/wrapper/utility/CUtility;

.field protected mActivity:Landroid/app/Activity;

.field protected mGLSurfaceView:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

.field private n:Ljava/lang/Object;

.field private o:Lcom/com2us/module/ModuleManager;

.field private p:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->a:Landroid/media/AudioManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->b:I

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->c:Lcom/com2us/wrapper/function/CFunctionTaskRunner;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->d:Lcom/com2us/wrapper/kernel/CWrapperTimer;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->e:Lcom/com2us/wrapper/kernel/CEventHandler;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->f:Lcom/com2us/wrapper/game/CGameManager;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->g:Lcom/com2us/wrapper/sensor/CSensor;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->h:Lcom/com2us/wrapper/ui/CUserInput;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->i:Lcom/com2us/wrapper/ui/CTextInput;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->j:Lcom/com2us/wrapper/font/CFont;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->k:Lcom/com2us/wrapper/media/CSoundManager;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->l:Lcom/com2us/wrapper/network/CHttpManager;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->m:Lcom/com2us/wrapper/utility/CUtility;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->n:Ljava/lang/Object;

    invoke-static {}, Lcom/com2us/module/ModuleManager;->getInstance()Lcom/com2us/module/ModuleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->p:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mGLSurfaceView:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    return-void
.end method

.method static synthetic a(Lcom/com2us/wrapper/kernel/CWrapperActivity;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/wrapper/kernel/CWrapperActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->n:Ljava/lang/Object;

    return-object p1
.end method

.method private a()V
    .locals 5

    :try_start_0
    const-string v0, "com.com2us.wrapper.WrapperStatistics"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const-string v2, "setContext"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->a:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->b:I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->b:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Z)V
    .locals 2

    const/16 v1, 0x80

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method

.method private a(Lcom/com2us/wrapper/kernel/CWrapperData;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->isVersionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/com2us/wrapper/kernel/CWrapperActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->p:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x3

    iget v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->a:Landroid/media/AudioManager;

    iget v2, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->b:I

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->b:I

    :cond_0
    return-void
.end method

.method private b(Lcom/com2us/wrapper/kernel/CWrapperData;)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getMinimumCommonVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/com2us/common/CommonTaskRunner;->getVersion()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v6, v2, v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, ""

    move-object v4, v2

    move v2, v0

    :goto_0
    if-ge v2, v9, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%03d"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v2, "."

    invoke-direct {v6, v5, v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, ""

    move-object v3, v2

    move v2, v0

    :goto_1
    if-ge v2, v9, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%03d"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static synthetic c(Lcom/com2us/wrapper/kernel/CWrapperActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->b()V

    return-void
.end method

.method private c(Lcom/com2us/wrapper/kernel/CWrapperData;)V
    .locals 5

    const/16 v4, 0x400

    new-instance v0, Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-direct {v0}, Lcom/com2us/wrapper/kernel/CEventHandler;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->e:Lcom/com2us/wrapper/kernel/CEventHandler;

    new-instance v0, Lcom/com2us/wrapper/game/CGameManager;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mGLSurfaceView:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    iget-object v3, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->e:Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/com2us/wrapper/game/CGameManager;-><init>(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;Lcom/com2us/wrapper/kernel/CEventHandler;Lcom/com2us/wrapper/kernel/CWrapperData;)V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->f:Lcom/com2us/wrapper/game/CGameManager;

    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperTimer;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mGLSurfaceView:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    invoke-direct {v0, v1}, Lcom/com2us/wrapper/kernel/CWrapperTimer;-><init>(Lcom/com2us/wrapper/game/CCustomGLSurfaceView;)V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->d:Lcom/com2us/wrapper/kernel/CWrapperTimer;

    new-instance v0, Lcom/com2us/wrapper/sensor/CSensor;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/com2us/wrapper/sensor/CSensor;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->g:Lcom/com2us/wrapper/sensor/CSensor;

    new-instance v1, Lcom/com2us/wrapper/ui/CUserInput;

    const-string v0, "R.id.UserInputLayout"

    invoke-static {v0}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getTextEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/com2us/wrapper/ui/CUserInput;-><init>(Landroid/widget/FrameLayout;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->h:Lcom/com2us/wrapper/ui/CUserInput;

    new-instance v1, Lcom/com2us/wrapper/ui/CTextInput;

    const-string v0, "R.id.TextInputLayout"

    invoke-static {v0}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getTextEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/com2us/wrapper/ui/CTextInput;-><init>(Landroid/widget/FrameLayout;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->i:Lcom/com2us/wrapper/ui/CTextInput;

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getUseSGL()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/com2us/wrapper/font/CSGLFont;

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getTextEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v4, v1}, Lcom/com2us/wrapper/font/CSGLFont;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->j:Lcom/com2us/wrapper/font/CFont;

    :goto_0
    :pswitch_0
    new-instance v0, Lcom/com2us/wrapper/media/CSoundManager;

    invoke-direct {v0}, Lcom/com2us/wrapper/media/CSoundManager;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->k:Lcom/com2us/wrapper/media/CSoundManager;

    new-instance v0, Lcom/com2us/wrapper/network/CHttpManager;

    invoke-direct {v0}, Lcom/com2us/wrapper/network/CHttpManager;-><init>()V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->l:Lcom/com2us/wrapper/network/CHttpManager;

    new-instance v0, Lcom/com2us/wrapper/utility/CUtility;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getTextEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/com2us/wrapper/utility/CUtility;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->m:Lcom/com2us/wrapper/utility/CUtility;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getRenderType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    new-instance v0, Lcom/com2us/wrapper/font/CFont;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getTextEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/com2us/wrapper/font/CFont;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/com2us/wrapper/kernel/CWrapperData;)V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->j:Lcom/com2us/wrapper/font/CFont;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/com2us/wrapper/font/CSGLFont;

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getTextEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v4, v1}, Lcom/com2us/wrapper/font/CSGLFont;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->j:Lcom/com2us/wrapper/font/CFont;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/com2us/wrapper/kernel/CWrapperActivity;)Lcom/com2us/module/ModuleManager;
    .locals 1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    return-object v0
.end method

.method private d(Lcom/com2us/wrapper/kernel/CWrapperData;)V
    .locals 0

    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->a()V

    invoke-direct {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->e(Lcom/com2us/wrapper/kernel/CWrapperData;)V

    return-void
.end method

.method private e(Lcom/com2us/wrapper/kernel/CWrapperData;)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "com.com2us.arm.CArmCreator"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v5, "com.com2us.arm.CArmCreator$IArmCallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v7, v6

    move-object v6, v5

    :goto_0
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    const-string v5, "ArmLibrary"

    invoke-static {v5}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->a(Ljava/lang/String;)V

    const/4 v5, -0x1

    if-nez v3, :cond_4

    :try_start_1
    const-string v8, "com.skt.arm.ArmListener"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :goto_1
    if-nez v5, :cond_3

    :try_start_2
    const-string v5, "com.kt.olleh.potection.ProtectionService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    :goto_2
    if-nez v4, :cond_2

    :try_start_3
    const-string v4, "com.lgt.arm.ArmInterface"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    :goto_3
    if-nez v2, :cond_1

    :try_start_4
    const-string v2, "com.android.vending.licensing.LicenseChecker"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getMarketArmId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    new-instance v4, Lcom/com2us/wrapper/kernel/CWrapperActivity$2;

    invoke-direct {v4, p0, v7, v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$2;-><init>(Lcom/com2us/wrapper/kernel/CWrapperActivity;Ljava/lang/Class;I)V

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v7, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->n:Ljava/lang/Object;

    const-string v0, "excute"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->n:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_0
    :goto_5
    return-void

    :catch_0
    move-exception v5

    move-object v6, v3

    move-object v7, v3

    goto/16 :goto_0

    :catch_1
    move-exception v4

    move v4, v5

    move-object v5, v3

    goto :goto_1

    :catch_2
    move-exception v2

    move v2, v4

    move-object v4, v3

    goto :goto_2

    :catch_3
    move-exception v1

    move v1, v2

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v0

    move v0, v1

    goto :goto_4

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_1
    move v0, v1

    goto :goto_4

    :cond_2
    move v1, v2

    move-object v2, v4

    goto/16 :goto_3

    :cond_3
    move v2, v4

    move-object v4, v5

    goto/16 :goto_2

    :cond_4
    move v4, v5

    move-object v5, v3

    goto/16 :goto_1
.end method


# virtual methods
.method public initialize(Lcom/com2us/wrapper/kernel/CWrapperData;)V
    .locals 3

    const-string v0, "InitializeWrapper"

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->a(Ljava/lang/String;)V

    const-string v0, "CommonLibrary"

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/com2us/common/CommonTaskRunner;->start(Landroid/content/Context;Lcom/com2us/common/ICommonTaskRunnerListener;)V

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getKeepScreenOnForcedly()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->a(Z)V

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getScreenBrightness()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->a(F)V

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperData;->getVolumeStyle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->a(I)V

    invoke-direct {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->c(Lcom/com2us/wrapper/kernel/CWrapperData;)V

    invoke-direct {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->a(Lcom/com2us/wrapper/kernel/CWrapperData;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->m:Lcom/com2us/wrapper/utility/CUtility;

    const-string v1, "Version is not matched"

    const-string v2, ".jar \ub77c\uc774\ube0c\ub7ec\ub9ac\uc640 .a \ub77c\uc774\ube0c\ub7ec\ub9ac\uc758 \ubc84\uc804\uc774 \ub2e4\ub985\ub2c8\ub2e4. \uac19\uc740 \ubc84\uc804\uc758 \ub77c\uc774\ube0c\ub7ec\ub9ac\ub97c \uc0ac\uc6a9\ud574\uc8fc\uc138\uc694."

    invoke-virtual {v0, v1, v2}, Lcom/com2us/wrapper/utility/CUtility;->showDialogAndExit(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->b(Lcom/com2us/wrapper/kernel/CWrapperData;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->m:Lcom/com2us/wrapper/utility/CUtility;

    const-string v1, "Version is invalid"

    const-string v2, "C2SCommon \ub77c\uc774\ube0c\ub7ec\ub9ac \ubc84\uc804\uc774 \ub108\ubb34 \ub0ae\uc2b5\ub2c8\ub2e4. \uc5c5\ub370\uc774\ud2b8 \ud6c4 \uc0ac\uc6a9\ud574\uc8fc\uc138\uc694."

    invoke-virtual {v0, v1, v2}, Lcom/com2us/wrapper/utility/CUtility;->showDialogAndExit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->d(Lcom/com2us/wrapper/kernel/CWrapperData;)V

    const-string v0, "InitializeWrapper"

    invoke-static {v0}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/com2us/module/ModuleManager;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/com2us/wrapper/game/CCustomGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mGLSurfaceView:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    new-instance v0, Lcom/com2us/wrapper/function/CFunctionTaskRunner;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mGLSurfaceView:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    invoke-direct {v0, v1, v2}, Lcom/com2us/wrapper/function/CFunctionTaskRunner;-><init>(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->c:Lcom/com2us/wrapper/function/CFunctionTaskRunner;

    invoke-static {}, Lcom/com2us/wrapper/function/CFunction;->getSystemVersionCode()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_0
    const-string v0, "R.layout.main"

    invoke-static {v0}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->setContentView(I)V

    const-string v0, "R.id.progressBar"

    invoke-static {v0}, Lcom/com2us/wrapper/function/CResource;->R(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->p:Landroid/widget/ProgressBar;

    invoke-static {p0}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->a(Lcom/com2us/wrapper/kernel/CWrapperKernel$s;)V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mGLSurfaceView:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    invoke-static {v0, v1}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->a(Landroid/app/Activity;Lcom/com2us/wrapper/game/CCustomGLSurfaceView;)V

    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperActivity$1;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$1;-><init>(Lcom/com2us/wrapper/kernel/CWrapperActivity;)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$1;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->f()V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->c:Lcom/com2us/wrapper/function/CFunctionTaskRunner;

    invoke-virtual {v0}, Lcom/com2us/wrapper/function/CFunctionTaskRunner;->uninitialize()V

    invoke-static {}, Lcom/com2us/common/CommonTaskRunner;->stop()V

    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperActivity$3;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$3;-><init>(Lcom/com2us/wrapper/kernel/CWrapperActivity;)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$3;->start()V

    return-void
.end method

.method public onKernelStateChanged(Lcom/com2us/wrapper/kernel/CWrapperKernel$r;)V
    .locals 2

    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperActivity$8;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperActivity$8;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :goto_1
    sget-object v0, Lcom/com2us/wrapper/kernel/CWrapperActivity$8;->a:[I

    invoke-virtual {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel$r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    :goto_2
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0}, Lcom/com2us/module/ModuleManager;->onActivityStarted()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0}, Lcom/com2us/module/ModuleManager;->onActivityResumed()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0}, Lcom/com2us/module/ModuleManager;->onActivityPaused()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0}, Lcom/com2us/module/ModuleManager;->onActivityStopped()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0}, Lcom/com2us/module/ModuleManager;->onActivityRestarted()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0}, Lcom/com2us/module/ModuleManager;->onActivityDestroyed()V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0}, Lcom/com2us/module/ModuleManager;->destroy()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/com2us/module/ModuleManager;->onWindowFocusChanged(Z)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/com2us/module/ModuleManager;->onWindowFocusChanged(Z)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0}, Lcom/com2us/module/ModuleManager;->onCletStarted()V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0}, Lcom/com2us/module/ModuleManager;->onCletPaused()V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0}, Lcom/com2us/module/ModuleManager;->onCletResumed()V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0}, Lcom/com2us/module/ModuleManager;->onCletDestroyed()V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/wrapper/kernel/CWrapperActivity$4;

    invoke-direct {v1, p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$4;-><init>(Lcom/com2us/wrapper/kernel/CWrapperActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_e
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/wrapper/kernel/CWrapperActivity$5;

    invoke-direct {v1, p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$5;-><init>(Lcom/com2us/wrapper/kernel/CWrapperActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_f
    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperActivity$6;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$6;-><init>(Lcom/com2us/wrapper/kernel/CWrapperActivity;)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$6;->start()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->e:Lcom/com2us/wrapper/kernel/CEventHandler;

    const/16 v1, 0x1000

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/wrapper/kernel/CEventHandler;->addEvent(IIIII)V

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v3, -0x1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->e:Lcom/com2us/wrapper/kernel/CEventHandler;

    const/16 v1, 0x1001

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/com2us/wrapper/kernel/CEventHandler;->addEvent(IIIII)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onModuleManagerInitialize(Lcom/com2us/module/ModuleManager;)V
    .locals 2

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperData;->getInstance()Lcom/com2us/wrapper/kernel/CWrapperData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getTerminateIfCracked()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/com2us/module/ModuleManager;->setExitAppIfCracked(Z)V

    invoke-virtual {v0}, Lcom/com2us/wrapper/kernel/CWrapperData;->getDevelopmentRevision()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/com2us/module/ModuleManager;->setWrapperDevelopmentRevision(I)V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->mGLSurfaceView:Lcom/com2us/wrapper/game/CCustomGLSurfaceView;

    invoke-virtual {p1, v0, v1}, Lcom/com2us/module/ModuleManager;->load(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V

    invoke-virtual {p1}, Lcom/com2us/module/ModuleManager;->onActivityCreated()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity;->o:Lcom/com2us/module/ModuleManager;

    invoke-virtual {v0, p1}, Lcom/com2us/module/ModuleManager;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->c()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->e()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->b()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->a()V

    return-void
.end method

.method public onStartTaskCompleted()V
    .locals 1

    new-instance v0, Lcom/com2us/wrapper/kernel/CWrapperActivity$7;

    invoke-direct {v0, p0}, Lcom/com2us/wrapper/kernel/CWrapperActivity$7;-><init>(Lcom/com2us/wrapper/kernel/CWrapperActivity;)V

    invoke-static {v0}, Lcom/com2us/wrapper/function/CFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->d()V

    return-void
.end method

.method public onStopTaskCompleted()V
    .locals 0

    invoke-static {}, Lcom/com2us/wrapper/common/CCommonAPI;->uninitialize()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-static {p1}, Lcom/com2us/wrapper/kernel/CWrapperKernel;->a(Z)V

    return-void
.end method
