.class public abstract Lcom/com2us/module/view/SurfaceViewWrapper;
.super Ljava/lang/Object;
.source "SurfaceViewWrapper.java"


# instance fields
.field protected view:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "view"    # Landroid/view/SurfaceView;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/com2us/module/view/SurfaceViewWrapper;->view:Landroid/view/SurfaceView;

    .line 27
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/com2us/module/view/SurfaceViewWrapper;->view:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public abstract queueEvent(Ljava/lang/Runnable;)V
.end method
