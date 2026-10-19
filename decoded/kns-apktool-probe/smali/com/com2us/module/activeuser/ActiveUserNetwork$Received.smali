.class public Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;
.super Ljava/lang/Object;
.source "ActiveUserNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/ActiveUserNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Received"
.end annotation


# instance fields
.field public errno:I

.field public error:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;->errno:I

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;->error:Ljava/lang/String;

    .line 318
    return-void
.end method
