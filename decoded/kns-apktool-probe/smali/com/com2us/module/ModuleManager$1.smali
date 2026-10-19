.class Lcom/com2us/module/ModuleManager$1;
.super Lcom/com2us/module/view/SurfaceViewWrapper;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/module/ModuleManager;->load(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/com2us/module/ModuleManager;


# direct methods
.method constructor <init>(Lcom/com2us/module/ModuleManager;Landroid/view/SurfaceView;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/view/SurfaceView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/com2us/module/ModuleManager$1;->this$0:Lcom/com2us/module/ModuleManager;

    .line 390
    invoke-direct {p0, p2}, Lcom/com2us/module/view/SurfaceViewWrapper;-><init>(Landroid/view/SurfaceView;)V

    return-void
.end method


# virtual methods
.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/com2us/module/ModuleManager$1;->view:Landroid/view/SurfaceView;

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/com2us/module/ModuleManager$1;->view:Landroid/view/SurfaceView;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 399
    :cond_0
    return-void
.end method
