.class public interface abstract Lcom/com2us/module/crypt/StreamCipher;
.super Ljava/lang/Object;
.source "StreamCipher.java"


# virtual methods
.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract init(ZLcom/com2us/module/crypt/CipherParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract processBytes([BII[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/com2us/module/crypt/DataLengthException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract returnByte(B)B
.end method
