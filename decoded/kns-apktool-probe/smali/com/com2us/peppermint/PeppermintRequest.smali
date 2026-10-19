.class public Lcom/com2us/peppermint/PeppermintRequest;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x7530


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintRequest;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/com2us/peppermint/PeppermintRequest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/com2us/peppermint/PeppermintRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/PeppermintRequest;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/com2us/peppermint/PeppermintRequest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/com2us/peppermint/PeppermintRequest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/PeppermintRequest;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public request(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)Lcom/com2us/peppermint/PeppermintRequest;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " jObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/peppermint/PeppermintRequest;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/com2us/peppermint/PeppermintRequest;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/com2us/peppermint/y;

    invoke-direct {v1, p0, p3, p4}, Lcom/com2us/peppermint/y;-><init>(Lcom/com2us/peppermint/PeppermintRequest;Lorg/json/JSONObject;Lcom/com2us/peppermint/PeppermintCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method
