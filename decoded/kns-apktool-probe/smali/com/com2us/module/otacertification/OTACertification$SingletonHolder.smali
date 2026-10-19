.class final Lcom/com2us/module/otacertification/OTACertification$SingletonHolder;
.super Ljava/lang/Object;
.source "OTACertification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/otacertification/OTACertification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonHolder"
.end annotation


# static fields
.field static final instance:Lcom/com2us/module/otacertification/OTACertification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/com2us/module/otacertification/OTACertification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/com2us/module/otacertification/OTACertification;-><init>(Lcom/com2us/module/otacertification/OTACertification;)V

    sput-object v0, Lcom/com2us/module/otacertification/OTACertification$SingletonHolder;->instance:Lcom/com2us/module/otacertification/OTACertification;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
