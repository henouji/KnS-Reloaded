.class Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$EventCallback;
.super Ljava/lang/Object;
.source "GooglePlayServicesActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventCallback"
.end annotation


# instance fields
.field m_parent:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;

.field final synthetic this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;


# direct methods
.method public constructor <init>(Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;)V
    .locals 0
    .param p2, "main"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$EventCallback;->this$0:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity$EventCallback;->m_parent:Lcom/com2us/imhero/normal/freefull/google/global/android/common/GooglePlayServicesActivity;

    .line 302
    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "result"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 329
    return-void
.end method
