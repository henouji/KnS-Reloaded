.class Lcom/com2us/peppermint/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic a:Lorg/json/JSONObject;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lorg/json/JSONObject;II)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/c;->a:Lorg/json/JSONObject;

    iput p2, p0, Lcom/com2us/peppermint/c;->a:I

    iput p3, p0, Lcom/com2us/peppermint/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/com2us/peppermint/c;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/com2us/peppermint/c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/com2us/peppermint/c;->a:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/com2us/peppermint/c;->a:I

    iget v2, p0, Lcom/com2us/peppermint/c;->b:I

    invoke-static {v0, v1, v2}, Lcom/com2us/peppermint/HubBridge;->a(Ljava/lang/String;II)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
