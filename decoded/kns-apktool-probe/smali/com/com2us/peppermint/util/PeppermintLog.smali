.class public Lcom/com2us/peppermint/util/PeppermintLog;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "peppermint"

    sput-object v0, Lcom/com2us/peppermint/util/PeppermintLog;->a:Ljava/lang/String;

    sput-boolean v1, Lcom/com2us/peppermint/util/PeppermintLog;->a:Z

    sput-boolean v1, Lcom/com2us/peppermint/util/PeppermintLog;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/com2us/peppermint/util/PeppermintLog;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/com2us/peppermint/util/PeppermintLog;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/com2us/peppermint/util/PeppermintLog;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/peppermint/util/PeppermintLog;->getCallerClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/com2us/peppermint/util/PeppermintLog;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/com2us/peppermint/util/PeppermintLog;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/com2us/peppermint/util/PeppermintLog;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/com2us/peppermint/util/PeppermintLog;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/peppermint/util/PeppermintLog;->getCallerClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/com2us/peppermint/util/PeppermintLog;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCallerClassName()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Not Found Class"

    goto :goto_0
.end method

.method public static getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/com2us/peppermint/util/PeppermintLog;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/com2us/peppermint/util/PeppermintLog;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/com2us/peppermint/util/PeppermintLog;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/peppermint/util/PeppermintLog;->getCallerClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/com2us/peppermint/util/PeppermintLog;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
