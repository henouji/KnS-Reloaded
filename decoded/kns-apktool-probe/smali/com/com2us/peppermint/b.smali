.class Lcom/com2us/peppermint/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/com2us/peppermint/PeppermintCallback;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/com2us/peppermint/b;->a:I

    iput p2, p0, Lcom/com2us/peppermint/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCallbackNative callback="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget v0, p0, Lcom/com2us/peppermint/b;->a:I

    iget v1, p0, Lcom/com2us/peppermint/b;->b:I

    invoke-static {p1, v0, v1}, Lcom/com2us/peppermint/HubBridge;->HubCallbackWithJSON(Lorg/json/JSONObject;II)V

    return-void
.end method
