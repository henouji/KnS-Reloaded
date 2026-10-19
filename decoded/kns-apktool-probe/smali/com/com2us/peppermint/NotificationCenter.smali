.class public Lcom/com2us/peppermint/NotificationCenter;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Observable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/com2us/peppermint/NotificationCenter;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addObserver(Ljava/lang/String;Ljava/util/Observer;)V
    .locals 2

    iget-object v0, p0, Lcom/com2us/peppermint/NotificationCenter;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Observable;

    invoke-direct {v0}, Ljava/util/Observable;-><init>()V

    iget-object v1, p0, Lcom/com2us/peppermint/NotificationCenter;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public postNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/NotificationCenter;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observable;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    invoke-virtual {v0}, Ljava/util/Observable;->notifyObservers()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeObserver(Ljava/lang/String;Ljava/util/Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/NotificationCenter;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    :cond_0
    return-void
.end method
