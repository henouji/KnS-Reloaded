.class public Lcom/com2us/module/activeuser/useragree/UserAgreeManager;
.super Ljava/lang/Object;
.source "UserAgreeManager.java"

# interfaces
.implements Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;
.implements Lcom/com2us/module/activeuser/ActiveUserModule;


# static fields
.field private static agreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;


# instance fields
.field private agreement_ex_url:Ljava/lang/String;

.field private agreement_version:I

.field private backgroundImageName:Ljava/lang/String;

.field private closeBitmap:Landroid/graphics/Bitmap;

.field private colorType:I

.field private dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

.field private enable:Z

.field private logger:Lcom/com2us/module/util/Logger;

.field private logoBitmap:Landroid/graphics/Bitmap;

.field private mainActivity:Landroid/app/Activity;

.field private url:Ljava/lang/String;

.field private userAgreeNotifier:Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    invoke-direct {v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;-><init>()V

    sput-object v0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->agreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->mainActivity:Landroid/app/Activity;

    .line 34
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->backgroundImageName:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->userAgreeNotifier:Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;

    .line 40
    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->enable:Z

    .line 42
    iput v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->colorType:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->agreement_version:I

    .line 44
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->url:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->agreement_ex_url:Ljava/lang/String;

    .line 106
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->backgroundImageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->agreement_version:I

    return v0
.end method

.method static synthetic access$3(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->agreement_ex_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->dialog:Lcom/com2us/module/activeuser/useragree/UserAgreeDialog;

    return-void
.end method

.method static synthetic access$7(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->logoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->closeBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getInstance()Lcom/com2us/module/activeuser/useragree/UserAgreeManager;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->agreeManager:Lcom/com2us/module/activeuser/useragree/UserAgreeManager;

    return-object v0
.end method

.method private loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBitmaps(Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceOffset"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->logoBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "common/ActiveUserImage/activeuser_logo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->logoBitmap:Landroid/graphics/Bitmap;

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->closeBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 85
    const-string v0, "common/ActiveUserImage/activeuser_close_button.png"

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->closeBitmap:Landroid/graphics/Bitmap;

    .line 86
    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->logoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->logoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    :cond_0
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->logoBitmap:Landroid/graphics/Bitmap;

    .line 201
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->closeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->closeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    :cond_1
    iput-object v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->closeBitmap:Landroid/graphics/Bitmap;

    .line 204
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public isExecutable()Z
    .locals 3

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->enable:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->logger:Lcom/com2us/module/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[UserAgreeManager][isExecutable] false : disable"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUserAgreeResult(I)V
    .locals 1
    .param p1, "callbackMsg"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->userAgreeNotifier:Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->userAgreeNotifier:Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;

    invoke-interface {v0, p1}, Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;->onUserAgreeResult(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public resetUserAgree()V
    .locals 1

    .prologue
    .line 238
    const-string v0, "agreement_version"

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUserProperties;->removeProperty(Ljava/lang/String;)V

    .line 239
    const-string v0, "userinfo_agree_privacy"

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUserProperties;->removeProperty(Ljava/lang/String;)V

    .line 240
    const-string v0, "agreement_log_property"

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUserProperties;->removeProperty(Ljava/lang/String;)V

    .line 241
    const-string v0, "agreement_sms_property"

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUserProperties;->removeProperty(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->mainActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUserProperties;->storeProperties(Landroid/content/Context;)V

    .line 243
    return-void
.end method

.method public responseNetwork(Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;)V
    .locals 3
    .param p1, "data"    # Lcom/com2us/module/activeuser/ActiveUserNetwork$Received;

    .prologue
    .line 191
    move-object v0, p1

    check-cast v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;

    .line 192
    .local v0, "downloadData":Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;
    iget v1, v0, Lcom/com2us/module/activeuser/ActiveUserNetwork$ReceivedDownloadData;->errno:I

    if-nez v1, :cond_0

    .line 193
    const-string v1, "userinfo_agree_privacy"

    const-string v2, "COMPLETED"

    invoke-static {v1, v2}, Lcom/com2us/module/activeuser/ActiveUserProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method

.method public setAgreementEx_URL(Ljava/lang/String;)V
    .locals 0
    .param p1, "agreement_ex_url"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->agreement_ex_url:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setEnable()V
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->colorType:I

    invoke-virtual {p0, v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->setEnable(I)V

    .line 118
    return-void
.end method

.method public setEnable(I)V
    .locals 2
    .param p1, "colorType"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->logger:Lcom/com2us/module/util/Logger;

    const-string v1, "[UserAgreeManager][setEnable]"

    invoke-virtual {v0, v1}, Lcom/com2us/module/util/Logger;->d(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->enable:Z

    .line 122
    iput p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->colorType:I

    .line 123
    return-void
.end method

.method public setParameter(Landroid/app/Activity;Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;Lcom/com2us/module/util/Logger;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userAgreeNotifier"    # Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;
    .param p3, "logger"    # Lcom/com2us/module/util/Logger;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->mainActivity:Landroid/app/Activity;

    .line 72
    iput-object p2, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->userAgreeNotifier:Lcom/com2us/module/activeuser/useragree/UserAgreeNotifier;

    .line 73
    iput-object p3, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->logger:Lcom/com2us/module/util/Logger;

    .line 74
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUserData;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->loadBitmaps(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->url:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "agreement_version"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->agreement_version:I

    .line 130
    return-void
.end method

.method public showAgreementPage()V
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->colorType:I

    invoke-virtual {p0, v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->showAgreementPage(I)V

    .line 151
    return-void
.end method

.method public showAgreementPage(I)V
    .locals 2
    .param p1, "colorType"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$1;

    invoke-direct {v1, p0, p1}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$1;-><init>(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public showUserAgreeTerms(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const-string v0, "agreement_review_url"

    invoke-static {v0}, Lcom/com2us/module/activeuser/ActiveUserProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->showUserAgreeTerms(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public showUserAgreeTerms(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v0, "http://m.member.com2us.com/mobilepolicy2.c2s"

    .line 219
    .local v0, "defaultUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/com2us/module/activeuser/useragree/UserAgreeManager;->mainActivity:Landroid/app/Activity;

    new-instance v2, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/com2us/module/activeuser/useragree/UserAgreeManager$2;-><init>(Lcom/com2us/module/activeuser/useragree/UserAgreeManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method
