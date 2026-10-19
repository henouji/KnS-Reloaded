.class Lcom/com2us/peppermint/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/com2us/peppermint/PeppermintCallback;


# instance fields
.field final synthetic a:Lcom/com2us/peppermint/PeppermintDialog;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/PeppermintDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/k;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/com2us/peppermint/k;->a:Lcom/com2us/peppermint/PeppermintDialog;

    invoke-virtual {v0, p1}, Lcom/com2us/peppermint/PeppermintDialog;->receiveSocialUserToken(Lorg/json/JSONObject;)V

    return-void
.end method
