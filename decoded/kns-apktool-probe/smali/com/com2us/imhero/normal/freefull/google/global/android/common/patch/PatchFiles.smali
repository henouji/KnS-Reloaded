.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/PatchFiles;
.super Ljava/lang/Object;
.source "PatchFiles.java"


# static fields
.field private static sharedArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/PatchFiles;->sharedArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addObject(Ljava/lang/Object;)V
    .locals 1
    .param p0, "add"    # Ljava/lang/Object;

    .prologue
    .line 10
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/PatchFiles;->sharedArray:Ljava/util/ArrayList;

    check-cast p0, Ljava/lang/String;

    .end local p0    # "add":Ljava/lang/Object;
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method
