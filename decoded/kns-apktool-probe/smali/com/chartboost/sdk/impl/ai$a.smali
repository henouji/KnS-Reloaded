.class public Lcom/chartboost/sdk/impl/ai$a;
.super Lcom/chartboost/sdk/impl/ah$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic e:Lcom/chartboost/sdk/impl/ai;

.field private i:Lcom/chartboost/sdk/impl/bl;

.field private j:Lcom/chartboost/sdk/impl/ap;

.field private k:Lcom/chartboost/sdk/impl/am;

.field private l:Lcom/chartboost/sdk/impl/ag;

.field private m:Lcom/chartboost/sdk/impl/ak;

.field private n:Lcom/chartboost/sdk/impl/bl;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 79
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/ah$a;-><init>(Lcom/chartboost/sdk/impl/ah;Landroid/content/Context;)V

    .line 82
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_0

    .line 83
    new-instance v0, Lcom/chartboost/sdk/impl/am;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/am;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/am;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 88
    :cond_0
    new-instance v0, Lcom/chartboost/sdk/impl/ap;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/ap;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ap;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 91
    new-instance v0, Lcom/chartboost/sdk/impl/ag;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/ag;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    .line 92
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ag;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 95
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->b(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_1

    .line 96
    new-instance v0, Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/ak;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ak;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 102
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/impl/ai$a$1;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/chartboost/sdk/impl/ai$a$1;-><init>(Lcom/chartboost/sdk/impl/ai$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    .line 113
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 117
    new-instance v0, Lcom/chartboost/sdk/impl/ai$a$2;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/chartboost/sdk/impl/ai$a$2;-><init>(Lcom/chartboost/sdk/impl/ai$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bl;

    .line 123
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 127
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "background-color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "border-color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "progress-color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->c()Lcom/chartboost/sdk/impl/al;

    move-result-object v0

    .line 132
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "background-color"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/al;->a(I)V

    .line 133
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "border-color"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/al;->b(I)V

    .line 134
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "progress-color"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/al;->c(I)V

    .line 135
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "radius"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->j()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/al;->b(F)V

    .line 138
    :cond_2
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "video-controls-background"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "video-controls-background"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ap;->a(I)V

    .line 142
    :cond_3
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->e(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_4

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->s:Z

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "post-video-toaster"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "post-video-toaster"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "tagline"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_4
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->f(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->r:Z

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "confirmation"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "confirmation"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "color"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;I)V

    .line 152
    :cond_5
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->g(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->t:Z

    if-eqz v0, :cond_6

    .line 153
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "post-video-reward-toaster"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "inside-top"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/chartboost/sdk/impl/an$a;->a:Lcom/chartboost/sdk/impl/an$a;

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/impl/an$a;)V

    .line 156
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "post-video-reward-toaster"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)V

    .line 157
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 158
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->D:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 161
    :cond_6
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->h(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "video-click-button"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->d()V

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "video-progress-timer-enabled"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->i(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ap;->c(Z)V

    .line 167
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ai;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 169
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->i(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    if-eqz v0, :cond_9

    const-string v0, "video-portrait"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 171
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 173
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-static {p1, v0}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 187
    :goto_2
    return-void

    .line 153
    :cond_8
    sget-object v0, Lcom/chartboost/sdk/impl/an$a;->b:Lcom/chartboost/sdk/impl/an$a;

    goto :goto_0

    .line 169
    :cond_9
    const-string v0, "video-landscape"

    goto :goto_1

    .line 177
    :cond_a
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->m:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 178
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/ai;->m:Ljava/lang/String;

    .line 179
    :cond_b
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->m:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 180
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-static {p1, v0}, Lcom/chartboost/sdk/impl/ai;->b(Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_2

    .line 185
    :cond_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ap;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai$1;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/ai$a;-><init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ak;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai$a;Z)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)V

    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/ai$b;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iput-object p1, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    .line 355
    sget-object v0, Lcom/chartboost/sdk/impl/ai$2;->a:[I

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ai$b;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 396
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->f()Z

    move-result v0

    .line 397
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ai$a;->b(Z)Lcom/chartboost/sdk/impl/bl;

    move-result-object v3

    .line 398
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 399
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v4, v0, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 400
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->b(Z)Lcom/chartboost/sdk/impl/bl;

    move-result-object v0

    .line 401
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 402
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v3, v2, v0, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 405
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 406
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 407
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    if-eq p1, v0, :cond_8

    :goto_3
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ai$a;->a(Z)V

    .line 408
    return-void

    .line 357
    :pswitch_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_4
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 358
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->p(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v3, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v3, :cond_1

    .line 359
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 361
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 362
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 363
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ap;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 357
    goto :goto_4

    .line 368
    :pswitch_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 369
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->q(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v3, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v3, :cond_3

    .line 370
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 372
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 373
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 374
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ap;->setEnabled(Z)V

    goto/16 :goto_0

    .line 379
    :pswitch_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 380
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->r(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v3, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v3, :cond_4

    .line 381
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 383
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 384
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->s:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 386
    :goto_5
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 387
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 388
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ap;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->u:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->e(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 384
    goto :goto_5

    :cond_6
    move v0, v2

    .line 405
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 406
    goto/16 :goto_2

    :cond_8
    move v1, v2

    .line 407
    goto/16 :goto_3

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ai$a;Z)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ai$a;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 288
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v3, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->r:Z

    if-eqz v0, :cond_2

    .line 292
    const-string v0, "integrated"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->H:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    goto :goto_0

    .line 296
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    .line 298
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "timer"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v3, "delay"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    const-string v3, "InterstitialVideoViewProtocol"

    const-string v4, "controls starting %s, setting timer"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->q:Z

    if-eqz v0, :cond_3

    const-string v0, "visible"

    :goto_1
    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v2, v2, Lcom/chartboost/sdk/impl/ai;->q:Z

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ap;->a(Z)V

    .line 301
    const-wide v2, 0x408f400000000000L    # 1000.0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v4, "timer"

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v4, "delay"

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Libraries/e$a;->g(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 302
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    new-instance v5, Lcom/chartboost/sdk/impl/ai$a$3;

    invoke-direct {v5, p0}, Lcom/chartboost/sdk/impl/ai$a$3;-><init>(Lcom/chartboost/sdk/impl/ai$a;)V

    invoke-static {v0, v4, v5, v2, v3}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/impl/ai;Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 312
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ai;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v3, v3, Lcom/chartboost/sdk/impl/ai;->l:I

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 313
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->e()V

    .line 314
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-gt v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->o(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->g()V

    goto/16 :goto_0

    .line 299
    :cond_3
    const-string v0, "hidden"

    goto :goto_1

    .line 310
    :cond_4
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->q:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/impl/ap;->a(Z)V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private d(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 322
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->f()V

    .line 323
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->H:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-eq v0, v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "post-video-reward-toaster"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->t:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->e(Z)V

    .line 333
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->c:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    .line 335
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->requestLayout()V

    goto :goto_0
.end method

.method private e(Z)V
    .locals 4

    .prologue
    .line 342
    if-eqz p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(Z)V

    .line 346
    :goto_0
    sget-object v0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/ai$a$4;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ai$a$4;-><init>(Lcom/chartboost/sdk/impl/ai$a;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(FF)V
    .locals 5

    .prologue
    .line 468
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_2

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 472
    :cond_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->h()V

    .line 473
    const-string v0, "insterstitial"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ai;->v(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected a(II)V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/4 v1, -0x1

    .line 215
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/impl/ah$a;->a(II)V

    .line 218
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, v9}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v2

    .line 223
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 225
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 229
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 231
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 234
    iget-object v7, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->x:Lcom/chartboost/sdk/Libraries/j;

    :goto_0
    invoke-virtual {v7, v3, v1, v12}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 235
    iget-object v7, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    if-eqz v2, :cond_3

    const-string v1, "replay-portrait"

    :goto_1
    invoke-virtual {v7, v1}, Lcom/chartboost/sdk/impl/ai;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 236
    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v7, v7

    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    iget v8, v1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 237
    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v8, v8

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v10

    add-float/2addr v0, v8

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v10

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 238
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v7, p1, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 239
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bl;->bringToFront()V

    .line 241
    if-eqz v2, :cond_4

    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->x:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 246
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 247
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v1

    if-nez v1, :cond_5

    .line 249
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 250
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 251
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 252
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 254
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 255
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 256
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 257
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 271
    :goto_3
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 272
    const/16 v1, 0x48

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 273
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 274
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x48

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 276
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->m(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/am;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/ap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/impl/ag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/bl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->n(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/am;->a()V

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->a()V

    .line 285
    return-void

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->w:Lcom/chartboost/sdk/Libraries/j;

    goto/16 :goto_0

    .line 235
    :cond_3
    const-string v1, "replay-landscape"

    goto/16 :goto_1

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->w:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/Libraries/j;)V

    goto/16 :goto_2

    .line 260
    :cond_5
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 262
    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->E:Lcom/chartboost/sdk/Libraries/j;

    .line 263
    :goto_4
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v2, v7, v1, v12}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 264
    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 265
    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 266
    const/16 v2, 0xb

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 267
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v2, v7}, Lcom/chartboost/sdk/impl/bl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/Libraries/j;)V

    goto/16 :goto_3

    .line 262
    :cond_6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/j;

    goto :goto_4
.end method

.method public b(Z)Lcom/chartboost/sdk/impl/bl;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bl;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/bl;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->l()V

    .line 433
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah$a;->b()V

    .line 434
    return-void
.end method

.method protected d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah$a;->d()V

    .line 193
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->c(Z)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 202
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)V

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->h()V

    .line 204
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v1, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    .line 205
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->j(Lcom/chartboost/sdk/impl/ai;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->k(Lcom/chartboost/sdk/impl/ai;)V

    .line 207
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->o:I

    if-lt v0, v2, :cond_0

    .line 208
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->l(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->f()V

    .line 210
    :cond_0
    return-void
.end method

.method protected f()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 411
    .line 412
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v3, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v3, :cond_3

    .line 414
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-ge v0, v2, :cond_3

    .line 415
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->s(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "portrait"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v3, "delay"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(F)F

    move-result v0

    .line 417
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 418
    :goto_1
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iput v0, v3, Lcom/chartboost/sdk/impl/ai;->v:I

    .line 419
    if-ltz v0, :cond_2

    .line 420
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ap;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/chartboost/sdk/impl/bh$a;->d()I

    move-result v3

    if-le v0, v3, :cond_3

    move v0, v1

    .line 427
    :goto_2
    return v0

    .line 415
    :cond_0
    const-string v0, "landscape"

    goto :goto_0

    .line 417
    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 423
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method protected g()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 438
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "cancel-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "cancel-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "cancel-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "cancel-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "confirm"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->g()V

    .line 443
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-ge v0, v2, :cond_0

    .line 444
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->n()V

    .line 464
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_1

    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)V

    .line 451
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->h()V

    .line 452
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-ge v0, v2, :cond_1

    .line 453
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v1, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    .line 454
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->k(Lcom/chartboost/sdk/impl/ai;)V

    .line 455
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->t(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->f()V

    .line 458
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/ai$a$5;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ai$a$5;-><init>(Lcom/chartboost/sdk/impl/ai$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v2, v2, Lcom/chartboost/sdk/impl/ai;->v:I

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 478
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_0

    .line 479
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0, v2, v2}, Lcom/chartboost/sdk/impl/ai;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z

    .line 481
    return-void
.end method

.method protected i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 484
    const-string v0, "integrated"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->H:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 485
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/ai;->r:Z

    .line 486
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->c(Z)V

    .line 487
    return-void
.end method
