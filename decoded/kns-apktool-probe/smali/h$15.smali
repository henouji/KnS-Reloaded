.class Lh$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lh;


# direct methods
.method constructor <init>(Lh;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh$15;->b:Lh;

    iput-object p2, p0, Lh$15;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh$15;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lh$15;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh$15;->b:Lh;

    invoke-static {v0}, Lh;->b(Lh;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lh$15;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
