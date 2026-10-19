.class Lh$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lh;


# direct methods
.method constructor <init>(Lh;I)V
    .locals 0

    iput-object p1, p0, Lh$16;->b:Lh;

    iput p2, p0, Lh$16;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lh$16;->b:Lh;

    invoke-static {v0}, Lh;->i(Lh;)[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lh$16;->a:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lh$16;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lh$16;->b:Lh;

    invoke-static {v1}, Lh;->i(Lh;)[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
