.class Lcom/com2us/wrapper/kernel/CEventHandler$EventData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/wrapper/kernel/CEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventData"
.end annotation


# instance fields
.field front:I

.field rear:I

.field final synthetic this$0:Lcom/com2us/wrapper/kernel/CEventHandler;


# direct methods
.method public constructor <init>(Lcom/com2us/wrapper/kernel/CEventHandler;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/com2us/wrapper/kernel/CEventHandler$EventData;->this$0:Lcom/com2us/wrapper/kernel/CEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler$EventData;->front:I

    iput v0, p0, Lcom/com2us/wrapper/kernel/CEventHandler$EventData;->rear:I

    return-void
.end method
