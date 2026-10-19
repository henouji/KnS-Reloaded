.class Lcom/facebook/AppEventsLogger$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AppEventsLogger;->flush(Lcom/facebook/AppEventsLogger$FlushReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$reason:Lcom/facebook/AppEventsLogger$FlushReason;


# direct methods
.method constructor <init>(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/AppEventsLogger$6;->val$reason:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/AppEventsLogger$6;->val$reason:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->access$5(Lcom/facebook/AppEventsLogger$FlushReason;)V

    return-void
.end method
