.class public Lcom/com2us/module/crypt/MaxBytesExceededException;
.super Lcom/com2us/module/crypt/RuntimeCryptoException;
.source "MaxBytesExceededException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/com2us/module/crypt/RuntimeCryptoException;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/com2us/module/crypt/RuntimeCryptoException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
