.class Lcom/com2us/wrapper/kernel/CWrapperActivity$3;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/com2us/wrapper/kernel/CWrapperActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/com2us/wrapper/kernel/CWrapperActivity;


# direct methods
.method constructor <init>(Lcom/com2us/wrapper/kernel/CWrapperActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CWrapperActivity$3;->a:Lcom/com2us/wrapper/kernel/CWrapperActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
