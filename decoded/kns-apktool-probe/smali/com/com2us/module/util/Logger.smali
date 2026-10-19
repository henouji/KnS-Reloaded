.class public Lcom/com2us/module/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final isShown:Z

.field private volatile locked:Z

.field private volatile logged:Z

.field final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "TAG"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/com2us/module/util/Logger;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/com2us/module/util/Logger;->setActivity(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/com2us/module/util/Logger;->logged:Z

    .line 23
    iput-boolean v0, p0, Lcom/com2us/module/util/Logger;->locked:Z

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/module/util/Logger;->isShown:Z

    .line 28
    iput-object p1, p0, Lcom/com2us/module/util/Logger;->tag:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v1, p0, Lcom/com2us/module/util/Logger;->activityRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/com2us/module/util/Logger;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 219
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 220
    new-instance v1, Lcom/com2us/module/util/Logger$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/com2us/module/util/Logger$2;-><init>(Lcom/com2us/module/util/Logger;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/com2us/module/util/Logger;->activityRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/com2us/module/util/Logger;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 202
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 203
    new-instance v1, Lcom/com2us/module/util/Logger$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/com2us/module/util/Logger$1;-><init>(Lcom/com2us/module/util/Logger;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/com2us/module/util/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/com2us/module/util/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/com2us/module/util/Logger;->logged:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/com2us/module/util/Logger;->logged:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/com2us/module/util/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/com2us/module/util/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/com2us/module/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/com2us/module/util/Logger;->logged:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/com2us/module/util/Logger;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/com2us/module/util/Logger;->logged:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/com2us/module/util/Logger;->eMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/com2us/module/util/Logger;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public eMsg(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 245
    :cond_0
    aget-object v1, v3, v2

    .line 246
    .local v1, "ste":Ljava/lang/StackTraceElement;
    const-string v5, "\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "at"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method equals(Lcom/com2us/module/util/Logger;)Z
    .locals 2
    .param p1, "logger"    # Lcom/com2us/module/util/Logger;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/com2us/module/util/Logger;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/com2us/module/util/Logger;->tag:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/com2us/module/util/Logger;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/com2us/module/util/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/com2us/module/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/com2us/module/util/Logger;->logged:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Info:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/com2us/module/util/Logger;->showToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/com2us/module/util/Logger;->locked:Z

    return v0
.end method

.method public declared-synchronized isLogged()Z
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/com2us/module/util/Logger;->logged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/com2us/module/util/Logger;->activityRef:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "isLocked"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/com2us/module/util/Logger;->locked:Z

    .line 98
    return-void
.end method

.method public declared-synchronized setLogged(Z)V
    .locals 1
    .param p1, "log"    # Z

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/com2us/module/util/Logger;->locked:Z

    if-nez v0, :cond_0

    .line 88
    iput-boolean p1, p0, Lcom/com2us/module/util/Logger;->logged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/com2us/module/util/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/com2us/module/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/com2us/module/util/Logger;->logged:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/com2us/module/util/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/com2us/module/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/com2us/module/util/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/com2us/module/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/com2us/module/util/Logger;->logged:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Warn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/com2us/module/util/Logger;->showToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/com2us/module/util/Logger;->logged:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Warning:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/com2us/module/util/Logger;->eMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/com2us/module/util/Logger;->showToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
