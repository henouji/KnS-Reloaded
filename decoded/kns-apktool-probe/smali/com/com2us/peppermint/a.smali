.class Lcom/com2us/peppermint/a;
.super Lcom/com2us/peppermint/HubCallbackListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/com2us/peppermint/HubCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Runnable;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/com2us/peppermint/HubBridge;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/com2us/peppermint/HubBridge;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/com2us/peppermint/HubBridge;->mainActivity:Landroid/app/Activity;

    sget-object v1, Lcom/com2us/peppermint/HubBridge;->mainActivity:Landroid/app/Activity;

    const-string v2, "R.id.glsurfaceview"

    invoke-static {v1, v2}, Lcom/com2us/peppermint/util/PeppermintResource;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method
