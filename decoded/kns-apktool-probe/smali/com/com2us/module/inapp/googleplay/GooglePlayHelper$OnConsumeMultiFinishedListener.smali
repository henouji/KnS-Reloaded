.class public interface abstract Lcom/com2us/module/inapp/googleplay/GooglePlayHelper$OnConsumeMultiFinishedListener;
.super Ljava/lang/Object;
.source "GooglePlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/inapp/googleplay/GooglePlayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConsumeMultiFinishedListener"
.end annotation


# virtual methods
.method public abstract onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/com2us/module/inapp/googleplay/Purchase;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/com2us/module/inapp/googleplay/GooglePlayResult;",
            ">;)V"
        }
    .end annotation
.end method
