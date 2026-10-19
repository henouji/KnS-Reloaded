.class Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;
.super Lcom/facebook/TokenCachingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/Facebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetterTokenCachingStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/android/Facebook;


# direct methods
.method private constructor <init>(Lcom/facebook/android/Facebook;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-direct {p0}, Lcom/facebook/TokenCachingStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/android/Facebook;Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;-><init>(Lcom/facebook/android/Facebook;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/android/Facebook;->access$6(Lcom/facebook/android/Facebook;Ljava/lang/String;)V

    return-void
.end method

.method public load()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$0(Lcom/facebook/android/Facebook;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$0(Lcom/facebook/android/Facebook;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/TokenCachingStrategy;->putToken(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$2(Lcom/facebook/android/Facebook;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/TokenCachingStrategy;->putExpirationMilliseconds(Landroid/os/Bundle;J)V

    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$3(Lcom/facebook/android/Facebook;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$4([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/TokenCachingStrategy;->putPermissions(Landroid/os/Bundle;Ljava/util/List;)V

    sget-object v1, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    invoke-static {v0, v1}, Lcom/facebook/TokenCachingStrategy;->putSource(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)V

    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$5(Lcom/facebook/android/Facebook;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/TokenCachingStrategy;->putLastRefreshMilliseconds(Landroid/os/Bundle;J)V

    :cond_0
    return-object v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/facebook/TokenCachingStrategy;->getToken(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/android/Facebook;->access$6(Lcom/facebook/android/Facebook;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/facebook/TokenCachingStrategy;->getExpirationMilliseconds(Landroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/android/Facebook;->access$7(Lcom/facebook/android/Facebook;J)V

    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/facebook/TokenCachingStrategy;->getPermissions(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$8(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/android/Facebook;->access$9(Lcom/facebook/android/Facebook;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/facebook/TokenCachingStrategy;->getLastRefreshMilliseconds(Landroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/android/Facebook;->access$10(Lcom/facebook/android/Facebook;J)V

    return-void
.end method
