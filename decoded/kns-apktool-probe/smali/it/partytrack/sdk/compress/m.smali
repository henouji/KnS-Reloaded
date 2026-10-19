.class final Lit/partytrack/sdk/compress/m;
.super Landroid/webkit/WebChromeClient;


# direct methods
.method constructor <init>(Lit/partytrack/sdk/compress/l;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adtruth result is : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lit/partytrack/sdk/compress/d;->g:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method
