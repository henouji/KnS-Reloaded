.class Lcom/com2us/peppermint/socialextension/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/com2us/peppermint/PeppermintCallback;

.field final synthetic a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;


# direct methods
.method constructor <init>(Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;Lcom/com2us/peppermint/PeppermintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/com2us/peppermint/socialextension/y;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    iput-object p2, p0, Lcom/com2us/peppermint/socialextension/y;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V
    .locals 3

    iget-object v0, p0, Lcom/com2us/peppermint/socialextension/y;->a:Lcom/com2us/peppermint/PeppermintCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/y;->a:Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;

    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/com2us/peppermint/socialextension/PeppermintSocialPluginGooglePlus;->friendsJsonForPlugin(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/plus/model/people/PersonBuffer;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestFriendsWithResponseCallback json="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/peppermint/socialextension/y;->a:Lcom/com2us/peppermint/PeppermintCallback;

    invoke-interface {v1, v0}, Lcom/com2us/peppermint/PeppermintCallback;->run(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/People$LoadPeopleResult;

    invoke-virtual {p0, p1}, Lcom/com2us/peppermint/socialextension/y;->a(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V

    return-void
.end method
