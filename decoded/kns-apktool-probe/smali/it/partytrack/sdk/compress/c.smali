.class final Lit/partytrack/sdk/compress/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lit/partytrack/sdk/compress/c;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lit/partytrack/sdk/compress/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lit/partytrack/sdk/compress/c;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
