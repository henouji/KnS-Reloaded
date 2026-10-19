.class public final Lcom/chartboost/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/e$3;
    }
.end annotation


# static fields
.field private static c:Lcom/chartboost/sdk/e;


# instance fields
.field private a:Lcom/chartboost/sdk/impl/bq;

.field private b:Lcom/chartboost/sdk/Model/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    .line 37
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/e;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/chartboost/sdk/e;->c:Lcom/chartboost/sdk/e;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/chartboost/sdk/e;

    invoke-direct {v0}, Lcom/chartboost/sdk/e;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/e;->c:Lcom/chartboost/sdk/e;

    .line 43
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/e;->c:Lcom/chartboost/sdk/e;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "CBViewController"

    const-string v1, " Closing impression activity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->c()Landroid/app/Activity;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v1, :cond_0

    .line 247
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()V

    .line 248
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 250
    :cond_0
    return-void
.end method

.method private e(Lcom/chartboost/sdk/Model/a;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 62
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 64
    const-string v0, "CBViewController"

    const-string v1, "Impression already visible"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    .line 70
    :goto_1
    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    iput-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 72
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->c()Landroid/app/Activity;

    move-result-object v2

    .line 73
    if-nez v2, :cond_4

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 74
    :goto_2
    if-nez v1, :cond_2

    .line 75
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->k()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v1

    .line 76
    :cond_2
    if-eqz v1, :cond_5

    .line 77
    const-string v0, "CBViewController"

    const-string v2, "Cannot able to create the view while trying th display the impression"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 69
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 73
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 82
    :cond_5
    iget-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    if-nez v1, :cond_6

    .line 83
    new-instance v1, Lcom/chartboost/sdk/impl/bq;

    invoke-direct {v1, v2, p1}, Lcom/chartboost/sdk/impl/bq;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/Model/a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    .line 84
    iget-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_6
    iget-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bq;->a()V

    .line 88
    const-string v1, "CBViewController"

    const-string v2, "Displaying the impression"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    iput-object v1, p1, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bq;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->e()Lcom/chartboost/sdk/impl/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bj;->a()V

    .line 94
    sget-object v0, Lcom/chartboost/sdk/impl/bi$b;->a:Lcom/chartboost/sdk/impl/bi$b;

    .line 95
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    sget-object v2, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    if-ne v1, v2, :cond_7

    .line 96
    sget-object v0, Lcom/chartboost/sdk/impl/bi$b;->c:Lcom/chartboost/sdk/impl/bi$b;

    .line 97
    :cond_7
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "animation"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bi$b;->a(I)Lcom/chartboost/sdk/impl/bi$b;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_8

    move-object v0, v1

    .line 100
    :cond_8
    invoke-static {}, Lcom/chartboost/sdk/b;->f()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 101
    sget-object v0, Lcom/chartboost/sdk/impl/bi$b;->g:Lcom/chartboost/sdk/impl/bi$b;

    .line 103
    :cond_9
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->n()V

    .line 104
    new-instance v1, Lcom/chartboost/sdk/e$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/e$1;-><init>(Lcom/chartboost/sdk/e;)V

    invoke-static {v0, p1, v1}, Lcom/chartboost/sdk/impl/bi;->a(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;)V

    .line 111
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    if-eq v0, v1, :cond_a

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_b

    .line 112
    :cond_a
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->willDisplayVideo(Ljava/lang/String;)V

    .line 115
    :cond_b
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->e(Lcom/chartboost/sdk/Model/a;)V

    goto/16 :goto_0
.end method

.method private f(Lcom/chartboost/sdk/Model/a;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 162
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->c()Landroid/app/Activity;

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    const-string v0, "No host activity to display loading view"

    invoke-static {p0, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    if-nez v1, :cond_1

    .line 169
    new-instance v1, Lcom/chartboost/sdk/impl/bq;

    invoke-direct {v1, v0, p1}, Lcom/chartboost/sdk/impl/bq;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/Model/a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    .line 170
    iget-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->b()V

    .line 174
    iput-object p1, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/Model/a;

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/e$3;->a:[I

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/e;->e(Lcom/chartboost/sdk/Model/a;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/e;->f(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Z)V
    .locals 2

    .prologue
    .line 182
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/Model/a;

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/Model/a;

    .line 187
    const-string v0, "CBViewController"

    const-string v1, "Dismissing loading view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/chartboost/sdk/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->c()V

    .line 191
    if-eqz p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method public b(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 124
    const-string v0, "CBViewController"

    const-string v1, "Dismissing impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/chartboost/sdk/e$2;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/e$2;-><init>(Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Model/a;)V

    .line 154
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->k:Z

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/a;->a(Ljava/lang/Runnable;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 200
    const-string v0, "CBViewController"

    const-string v1, "Removing impression silently"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/chartboost/sdk/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->j()V

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 208
    iget-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    .line 213
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string v1, "CBViewController"

    const-string v2, "Exception removing impression silently"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/chartboost/sdk/impl/bq;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    return-object v0
.end method

.method public d(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 217
    const-string v0, "CBViewController"

    const-string v1, "Removing impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->f:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    if-nez v0, :cond_1

    .line 221
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/chartboost/sdk/e;->e()V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 227
    iget-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->i()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bq;

    .line 234
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-direct {p0}, Lcom/chartboost/sdk/e;->e()V

    .line 238
    :cond_2
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 239
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->b(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v1, "CBViewController"

    const-string v2, "Exception removing impression "

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
