.class public interface abstract Lcom/com2us/module/Modulable;
.super Ljava/lang/Object;
.source "Modulable.java"

# interfaces
.implements Lcom/com2us/module/ActivityStateListener;
.implements Lcom/com2us/module/CletStateListener;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPermission()[Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract setAppIdForIdentity(Ljava/lang/String;)V
.end method

.method public abstract setLogged(Z)V
.end method
