.class Lcom/chartboost/sdk/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/chartboost/sdk/Model/a;

.field final synthetic c:Lcom/chartboost/sdk/d;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/d;Ljava/lang/String;Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/chartboost/sdk/d$1;->c:Lcom/chartboost/sdk/d;

    iput-object p2, p0, Lcom/chartboost/sdk/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/sdk/d$1;->b:Lcom/chartboost/sdk/Model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/chartboost/sdk/d$1;->c:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/d$1;->c:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$1;->c:Lcom/chartboost/sdk/d;

    iget-object v2, p0, Lcom/chartboost/sdk/d$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/d;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/d;->g(Lcom/chartboost/sdk/Model/a;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/d$1;->c:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$1;->b:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/d;->c(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method
