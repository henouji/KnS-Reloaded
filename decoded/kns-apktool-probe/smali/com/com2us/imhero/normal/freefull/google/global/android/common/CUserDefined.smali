.class public Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;
.super Lcom/com2us/wrapper/kernel/CWrapper;
.source "CUserDefined.java"


# static fields
.field static activity:Landroid/app/Activity;

.field private static cSoundManager:Lcom/com2us/wrapper/media/CSoundManager;

.field private static cSoundPlayManager:Lcom/com2us/wrapper/media/CSoundManager;

.field static downloadFile:Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;

.field static isPopShow:Z

.field private static m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

.field public static strResFolderName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    .line 58
    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->cSoundManager:Lcom/com2us/wrapper/media/CSoundManager;

    .line 59
    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->cSoundPlayManager:Lcom/com2us/wrapper/media/CSoundManager;

    .line 61
    const-string v0, "1.4.0"

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->strResFolderName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/com2us/wrapper/kernel/CWrapper;-><init>()V

    .line 89
    sput-object p1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->isPopShow:Z

    .line 91
    new-instance v0, Lcom/com2us/wrapper/media/CSoundManager;

    invoke-direct {v0}, Lcom/com2us/wrapper/media/CSoundManager;-><init>()V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->cSoundManager:Lcom/com2us/wrapper/media/CSoundManager;

    .line 92
    new-instance v0, Lcom/com2us/wrapper/media/CSoundManager;

    invoke-direct {v0}, Lcom/com2us/wrapper/media/CSoundManager;-><init>()V

    sput-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->cSoundPlayManager:Lcom/com2us/wrapper/media/CSoundManager;

    .line 93
    return-void
.end method

.method public static AdwaysEvent()V
    .locals 1

    .prologue
    .line 1121
    const/16 v0, 0x2edd

    invoke-static {v0}, Lit/partytrack/sdk/Track;->event(I)V

    .line 1122
    return-void
.end method

.method public static BackButtonPressed()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public static CallGC()V
    .locals 0

    .prologue
    .line 368
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 369
    return-void
.end method

.method public static CheckInstall()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    const-string v3, "AppInstalled"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 138
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v2, "AppInstalled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "AppInstalled"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->DelVerisonFolder()V

    .line 154
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static CheckMinLoad()Z
    .locals 3

    .prologue
    .line 1178
    const/4 v0, 0x0

    .line 1180
    .local v0, "blResult":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1182
    const/4 v0, 0x1

    .line 1185
    :cond_0
    return v0
.end method

.method public static ClientVersionUPDeleteCatchFiles()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 824
    const/4 v3, 0x0

    .line 825
    .local v3, "blResult":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetDownPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->strResFolderName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "DirPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    .local v2, "PatchDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 857
    :goto_0
    return v3

    .line 833
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 835
    .local v4, "fileList":[Ljava/io/File;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_1

    .line 855
    const/4 v3, 0x1

    .line 857
    goto :goto_0

    .line 837
    :cond_1
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, "FileName":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x74

    if-ne v6, v7, :cond_3

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5f

    if-ne v6, v7, :cond_3

    .line 843
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_2

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x39

    if-gt v6, v7, :cond_2

    .line 846
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 835
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 849
    :cond_3
    const-string v6, "dt_hubuserprofile.dat"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 851
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method public static CopyPatchFile()Z
    .locals 10

    .prologue
    .line 484
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetDownPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/patch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "SourcePath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->strResFolderName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "TargetPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .local v3, "dirFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 495
    .local v5, "fileList":[Ljava/io/File;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-lt v6, v7, :cond_0

    .line 512
    const/4 v7, 0x1

    return v7

    .line 498
    :cond_0
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "FileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 504
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 507
    :cond_1
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->FileCopy(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static DelPatchFolder()V
    .locals 6

    .prologue
    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetDownPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/patch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 597
    .local v3, "strPatchDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 599
    .local v0, "PatchDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 619
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 604
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 606
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-lt v2, v4, :cond_2

    .line 618
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 611
    .restart local v2    # "i":I
    :cond_2
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static DelVerisonFolder()V
    .locals 6

    .prologue
    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetDownPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->strResFolderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, "strPatchDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    .local v0, "PatchDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 631
    .local v1, "fileList":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-lt v2, v4, :cond_2

    .line 637
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 640
    const/4 v0, 0x0

    .line 641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetDownPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/patch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 642
    new-instance v0, Ljava/io/File;

    .end local v0    # "PatchDir":Ljava/io/File;
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .restart local v0    # "PatchDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 648
    const/4 v2, 0x0

    :goto_2
    array-length v4, v1

    if-lt v2, v4, :cond_3

    .line 654
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 634
    :cond_2
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 631
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 651
    :cond_3
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 648
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static DeleteCachedAvatar()V
    .locals 0

    .prologue
    .line 919
    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->deleteCachedAvatar()V

    .line 920
    return-void
.end method

.method public static DeleteCachedNoticeImg()V
    .locals 0

    .prologue
    .line 1004
    invoke-static {}, Lcom/com2us/hub2/Hub2AvatarManager;->deleteCachedNoticeImg()V

    .line 1005
    return-void
.end method

.method public static DeleteResourceDir(Ljava/lang/String;)Z
    .locals 8
    .param p0, "strResDir"    # Ljava/lang/String;

    .prologue
    .line 862
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DeleteResourceDir "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 864
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetFilePath()Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, "Path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, "DeletePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 869
    .local v0, "DelFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 871
    .local v3, "fileList":[Ljava/io/File;
    if-eqz v3, :cond_1

    .line 873
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-lt v4, v5, :cond_0

    .line 880
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 882
    const/4 v5, 0x1

    .line 885
    .end local v4    # "i":I
    :goto_1
    return v5

    .line 876
    .restart local v4    # "i":I
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "delete "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 877
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 873
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 885
    .end local v4    # "i":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static DestroySound(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 1157
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->cSoundManager:Lcom/com2us/wrapper/media/CSoundManager;

    invoke-virtual {v0, p0}, Lcom/com2us/wrapper/media/CSoundManager;->soundDestroy(I)Z

    .line 1158
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->cSoundPlayManager:Lcom/com2us/wrapper/media/CSoundManager;

    invoke-virtual {v0, p0}, Lcom/com2us/wrapper/media/CSoundManager;->soundDestroy(I)Z

    .line 1159
    const/4 v0, 0x0

    return v0
.end method

.method public static DownloadAvatarImgWithURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "i64UserID"    # Ljava/lang/String;
    .param p1, "strURL"    # Ljava/lang/String;

    .prologue
    .line 907
    invoke-static {p0, p1}, Lcom/com2us/hub2/Hub2AvatarManager;->downloadAvatarImgWithURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    return-void
.end method

.method public static DownloadNoticeImgWithName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "strName"    # Ljava/lang/String;
    .param p1, "strURL"    # Ljava/lang/String;

    .prologue
    .line 992
    invoke-static {p0, p1}, Lcom/com2us/hub2/Hub2AvatarManager;->downloadNoticeImgWithName(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method public static ExistFlag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "strCode"    # Ljava/lang/String;

    .prologue
    .line 986
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->ExistFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static FileCopy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "inFileName"    # Ljava/lang/String;
    .param p1, "outFileName"    # Ljava/lang/String;

    .prologue
    .line 542
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 543
    .local v7, "inputStream":Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 545
    .local v8, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 546
    .local v1, "fcin":Ljava/nio/channels/FileChannel;
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 548
    .local v6, "fcout":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 549
    .local v4, "size":J
    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 551
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 552
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v1    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    .end local v6    # "fcout":Ljava/nio/channels/FileChannel;
    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "error "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static GetCurrentTimeStamp()J
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 899
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 900
    .local v0, "local":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 901
    const/16 v1, 0x7b2

    const/4 v3, 0x1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 902
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static GetDeviceHeight()I
    .locals 3

    .prologue
    .line 177
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 178
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 180
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 182
    .local v0, "deviceHeight":I
    return v0
.end method

.method public static GetDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 890
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static GetDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static GetDeviceWidth()I
    .locals 3

    .prologue
    .line 167
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 168
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 170
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 172
    .local v0, "deviceWidth":I
    return v0
.end method

.method public static GetDownPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 231
    sget-object v3, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 232
    .local v2, "sdCard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "path":Ljava/lang/String;
    return-object v1
.end method

.method public static GetFilePath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 203
    sget-object v3, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 204
    .local v2, "sdCard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "path":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetFilePath "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    return-object v1
.end method

.method public static GetFlagLength(Ljava/lang/String;)J
    .locals 2
    .param p0, "strCode"    # Ljava/lang/String;

    .prologue
    .line 976
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->getFlagLength(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static GetImageFlag(Ljava/lang/String;)[B
    .locals 1
    .param p0, "strCode"    # Ljava/lang/String;

    .prologue
    .line 981
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->getUserFlag(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static GetNoticeImg(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "strName"    # Ljava/lang/String;
    .param p1, "strURL"    # Ljava/lang/String;

    .prologue
    .line 997
    invoke-static {p0, p1}, Lcom/com2us/hub2/Hub2AvatarManager;->getNoticeImg(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 999
    .local v0, "array":[B
    return-object v0
.end method

.method public static GetNoticeImgLength(Ljava/lang/String;)I
    .locals 1
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    .line 1014
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->getNoticeImgLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;

    invoke-direct {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;-><init>()V

    .line 159
    .local v0, "o":Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "packageName":Ljava/lang/String;
    return-object v1
.end method

.method public static GetPackageZipFileName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 568
    const-string v1, ""

    .line 571
    .local v1, "FileList":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetDownPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/patch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "DirPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v2, "dirFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 575
    .local v3, "fileList":[Ljava/io/File;
    array-length v5, v3

    if-gtz v5, :cond_1

    const/4 v1, 0x0

    .line 591
    .end local v1    # "FileList":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 577
    .restart local v1    # "FileList":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 579
    if-eqz v4, :cond_2

    .line 585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 587
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static GetSHA1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1126
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    invoke-static {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/gamecenter/GameHelperUtils;->getSHA1CertFingerprint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetUserAvatar(Ljava/lang/String;)[B
    .locals 1
    .param p0, "i64UserID"    # Ljava/lang/String;

    .prologue
    .line 912
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->getUserAvatar(Ljava/lang/String;)[B

    move-result-object v0

    .line 914
    .local v0, "array":[B
    return-object v0
.end method

.method public static GetUserAvatarLength(Ljava/lang/String;)I
    .locals 1
    .param p0, "i64UserID"    # Ljava/lang/String;

    .prologue
    .line 929
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->getUserAvatarLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetVersionSDK()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "sdk":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 190
    return v0
.end method

.method public static GetWifiConnection()Z
    .locals 4

    .prologue
    .line 962
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 963
    .local v1, "m_NetConnectMgr":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 965
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2
.end method

.method public static InitFolderClientUpdate(ZLjava/lang/String;)Z
    .locals 4
    .param p0, "blInitFileFolder"    # Z
    .param p1, "strVersion"    # Ljava/lang/String;

    .prologue
    .line 760
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->getBundleVersion()Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, "currentBundle":Ljava/lang/String;
    move-object v2, p1

    .line 765
    .local v2, "strFolder":Ljava/lang/String;
    const/4 v0, 0x0

    .line 767
    .local v0, "blDelete":Z
    if-eqz p0, :cond_1

    .line 769
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 771
    invoke-static {p1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->DeleteResourceDir(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    move v3, v0

    .line 819
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static IsExistAvatar(Ljava/lang/String;)Z
    .locals 1
    .param p0, "i64UserID"    # Ljava/lang/String;

    .prologue
    .line 934
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->isExistAvatar(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static IsExistNoticeImg(Ljava/lang/String;)Z
    .locals 1
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    .line 1019
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->isExistNoticeImg(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OpenURL(Ljava/lang/String;)V
    .locals 3
    .param p0, "strURL"    # Ljava/lang/String;

    .prologue
    .line 1024
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1026
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1027
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1028
    return-void
.end method

.method public static PatchGetFileSize(Ljava/lang/String;)I
    .locals 8
    .param p0, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 686
    const/4 v3, 0x0

    .line 688
    .local v3, "i32FileSize":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetDownPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/patch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, "strPatchDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 691
    .local v0, "PatchDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 704
    :goto_0
    return v5

    .line 693
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 695
    .local v1, "fileList":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-lt v2, v5, :cond_1

    :goto_2
    move v5, v3

    .line 704
    goto :goto_0

    .line 697
    :cond_1
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 699
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    .line 700
    goto :goto_2

    .line 695
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static PatchIsExistFile(Ljava/lang/String;)Z
    .locals 7
    .param p0, "strFileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 659
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetDownPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/patch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "strPatchDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 662
    .local v0, "PatchDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 681
    :cond_0
    :goto_0
    return v4

    .line 668
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 670
    .local v1, "fileList":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 673
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 676
    const/4 v4, 0x1

    goto :goto_0

    .line 670
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static PatchReadFile(Ljava/lang/String;)[B
    .locals 13
    .param p0, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 709
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "PatchReadFile "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 710
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetDownPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/patch/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 713
    .local v8, "strPatchFile":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 715
    .local v9, "zipFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 716
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v4, v10

    .line 720
    .local v4, "length":I
    new-array v0, v4, [B

    .line 725
    .local v0, "array":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 726
    .local v3, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 727
    .local v1, "bin":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .local v5, "offset":I
    move v6, v5

    .line 728
    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v7

    .local v7, "read":I
    const/4 v10, -0x1

    if-ne v7, v10, :cond_0

    if-lt v6, v4, :cond_0

    .line 733
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 755
    .end local v0    # "array":[B
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v6    # "offset":I
    .end local v7    # "read":I
    :goto_1
    return-object v0

    .line 730
    .restart local v0    # "array":[B
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v6    # "offset":I
    .restart local v7    # "read":I
    :cond_0
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    int-to-byte v10, v7

    aput-byte v10, v0, v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 735
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "offset":I
    .end local v7    # "read":I
    :catch_0
    move-exception v2

    .line 736
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v10, "ERROR"

    const-string v11, "FileNotFoundException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 739
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 740
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "ERROR"

    const-string v11, "IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 743
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 745
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "ERROR"

    const-string v11, "IndexOutOfBoundsException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 748
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v2

    .line 750
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "ERROR"

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 755
    .end local v0    # "array":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "length":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static PauseSound(I)I
    .locals 5
    .param p0, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 1164
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1165
    .local v0, "blResult":Ljava/lang/Boolean;
    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->cSoundPlayManager:Lcom/com2us/wrapper/media/CSoundManager;

    invoke-virtual {v1, p0}, Lcom/com2us/wrapper/media/CSoundManager;->soundPause(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1166
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SoundThread PauseSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1167
    return v4
.end method

.method public static PlayMovie()V
    .locals 3

    .prologue
    .line 1032
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/IntroMovieActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1033
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1034
    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1035
    return-void
.end method

.method public static PlaySound(I)I
    .locals 9
    .param p0, "index"    # I

    .prologue
    const/4 v8, 0x0

    .line 1141
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1142
    .local v0, "blResult":Ljava/lang/Boolean;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1143
    .local v2, "start":J
    sget-object v1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->cSoundPlayManager:Lcom/com2us/wrapper/media/CSoundManager;

    invoke-virtual {v1, p0, v8}, Lcom/com2us/wrapper/media/CSoundManager;->soundPlay(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1144
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SoundThread Play "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1146
    return v8
.end method

.method public static ProFilePatch([BLjava/lang/String;I)V
    .locals 9
    .param p0, "bytePatchFile"    # [B
    .param p1, "URL"    # Ljava/lang/String;
    .param p2, "FileCount"    # I

    .prologue
    .line 406
    new-instance v7, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;

    invoke-direct {v7}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;-><init>()V

    sput-object v7, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->downloadFile:Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;

    .line 407
    sget-object v7, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->downloadFile:Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;

    invoke-virtual {v7, p2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->setTotalFileCount(I)V

    .line 413
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p2, :cond_1

    .line 473
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->strResFolderName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, "strFolder":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v6, "targetFolder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 478
    :cond_0
    sget-object v7, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->downloadFile:Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;

    invoke-virtual {v7, p1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->setDownloadURL(Ljava/lang/String;)V

    .line 479
    sget-object v7, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->downloadFile:Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;

    invoke-virtual {v7}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->downloadCheck()Z

    .line 480
    return-void

    .line 415
    .end local v5    # "strFolder":Ljava/lang/String;
    .end local v6    # "targetFolder":Ljava/io/File;
    :cond_1
    const/4 v4, 0x0

    .line 417
    .local v4, "readLength":I
    mul-int/lit16 v3, v2, 0xa0

    .local v3, "j":I
    :goto_1
    mul-int/lit16 v7, v2, 0xa0

    add-int/lit16 v7, v7, 0x80

    if-lt v3, v7, :cond_4

    .line 425
    :cond_2
    new-instance v0, Ljava/lang/String;

    mul-int/lit16 v7, v2, 0xa0

    invoke-direct {v0, p0, v7, v4}, Ljava/lang/String;-><init>([BII)V

    .line 426
    .local v0, "FileName":Ljava/lang/String;
    sget-object v7, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->downloadFile:Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;

    invoke-virtual {v7, v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->addFile(Ljava/lang/String;)V

    .line 428
    const/4 v4, 0x0

    .line 430
    mul-int/lit16 v7, v2, 0xa0

    add-int/lit16 v3, v7, 0x80

    :goto_2
    mul-int/lit16 v7, v2, 0xa0

    add-int/lit16 v7, v7, 0x80

    add-int/lit8 v7, v7, 0x20

    if-lt v3, v7, :cond_5

    .line 438
    :cond_3
    new-instance v1, Ljava/lang/String;

    mul-int/lit16 v7, v2, 0xa0

    add-int/lit16 v7, v7, 0x80

    invoke-direct {v1, p0, v7, v4}, Ljava/lang/String;-><init>([BII)V

    .line 439
    .local v1, "Version":Ljava/lang/String;
    sget-object v7, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->downloadFile:Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;

    invoke-virtual {v7, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/patch/DownloadFile;->addFileVers(Ljava/lang/String;)V

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "FileName":Ljava/lang/String;
    .end local v1    # "Version":Ljava/lang/String;
    :cond_4
    aget-byte v7, p0, v3

    if-eqz v7, :cond_2

    .line 420
    add-int/lit8 v4, v4, 0x1

    .line 417
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 432
    .restart local v0    # "FileName":Ljava/lang/String;
    :cond_5
    aget-byte v7, p0, v3

    if-eqz v7, :cond_3

    .line 433
    add-int/lit8 v4, v4, 0x1

    .line 430
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static RemoveAvatarByUserNo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "i64UserID"    # Ljava/lang/String;

    .prologue
    .line 924
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->removeAvatarByUserNo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static RemoveNoticeImgByNoticeNo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    .line 1009
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->removeNoticeImgByNoticeNo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static RequestFlagImageWithCode(Ljava/lang/String;)V
    .locals 0
    .param p0, "strCode"    # Ljava/lang/String;

    .prologue
    .line 971
    invoke-static {p0}, Lcom/com2us/hub2/Hub2AvatarManager;->downloadFlagImgWithCode(Ljava/lang/String;)V

    .line 972
    return-void
.end method

.method public static RequestServer(Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;)Z
    .locals 1
    .param p0, "ptSend"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;

    .prologue
    .line 384
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->NetworkModule:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;

    invoke-virtual {v0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->Request(Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/Send;)Z

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public static ResumeSound(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 1172
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->cSoundPlayManager:Lcom/com2us/wrapper/media/CSoundManager;

    invoke-virtual {v0, p0}, Lcom/com2us/wrapper/media/CSoundManager;->soundResume(I)Z

    .line 1173
    const/4 v0, 0x0

    return v0
.end method

.method public static SetDeviceMacAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1040
    const-string v1, ""

    .line 1041
    .local v1, "macAddress":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1043
    .local v0, "bIsWifiOff":Z
    sget-object v4, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1044
    .local v3, "wfManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1046
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1047
    const/4 v0, 0x1

    .line 1050
    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1051
    .local v2, "wfInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 1053
    if-eqz v0, :cond_1

    .line 1054
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1055
    const/4 v0, 0x0

    .line 1058
    :cond_1
    return-object v1
.end method

.method public static SetHeaderInfo(Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;)V
    .locals 1
    .param p0, "ptHeaderInfo"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;

    .prologue
    .line 397
    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->GetPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;->strBundleID:Ljava/lang/String;

    .line 399
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    iget-object v0, v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->NetworkModule:Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;

    invoke-virtual {v0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/JAVA_Network;->SetHeaderInfo(Lcom/com2us/imhero/normal/freefull/google/global/android/common/network/HeaderInfo;)V

    .line 400
    return-void
.end method

.method public static StopSound(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 1151
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->cSoundPlayManager:Lcom/com2us/wrapper/media/CSoundManager;

    invoke-virtual {v0, p0}, Lcom/com2us/wrapper/media/CSoundManager;->soundStop(I)Z

    .line 1152
    const/4 v0, 0x0

    return v0
.end method

.method public static getAbsolutePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->getBundleVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "path":Ljava/lang/String;
    return-object v0
.end method

.method public static getBase64encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 353
    .local v0, "VersionName":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-object v0

    .line 355
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMediaPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->getPatchPath_Completed()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPatchPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 258
    sget-object v3, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 259
    .local v2, "sdCard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/patch/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 268
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "path":Ljava/lang/String;
    return-object v1
.end method

.method public static getPatchPath_Completed()Ljava/lang/String;
    .locals 7

    .prologue
    .line 278
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "sdCardMounted":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    sget-object v5, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 285
    .local v3, "sdCard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->strResFolderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .end local v3    # "sdCard":Ljava/io/File;
    .local v0, "dir":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "path":Ljava/lang/String;
    return-object v2

    .line 289
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 290
    .local v1, "internal":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->strResFolderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_0
.end method

.method public static getPatchPath_old(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "BundleVer"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "sdCardMounted":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    sget-object v5, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 308
    .local v3, "sdCard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .end local v3    # "sdCard":Ljava/io/File;
    .local v0, "dir":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "path":Ljava/lang/String;
    return-object v2

    .line 312
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 313
    .local v1, "internal":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_0
.end method

.method public static gpgsIncrementEvents(Ljava/lang/String;I)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 1112
    if-ge p1, v1, :cond_0

    .line 1113
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    invoke-virtual {v0, p0, v1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->gpgsIncrementEvents(Ljava/lang/String;I)V

    .line 1116
    :goto_0
    return-void

    .line 1115
    :cond_0
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    invoke-virtual {v0, p0, p1}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->gpgsIncrementEvents(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static gpgsReportScore(Ljava/lang/String;J)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "score"    # J

    .prologue
    .line 1101
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    invoke-virtual {v0, p0, p1, p2}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->gpgsReportScore(Ljava/lang/String;J)V

    .line 1102
    return-void
.end method

.method public static gpgsShowAchievement()V
    .locals 1

    .prologue
    .line 1089
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->gpgsShowAchievement()V

    .line 1090
    return-void
.end method

.method public static gpgsShowLeaderBoard(Ljava/lang/String;)V
    .locals 1
    .param p0, "leaderBoardkey"    # Ljava/lang/String;

    .prologue
    .line 1083
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    invoke-virtual {v0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->gpgsShowLeaderBoard(Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method public static gpgsShowQuests()V
    .locals 1

    .prologue
    .line 1106
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->gpgsShowQuests()V

    .line 1107
    return-void
.end method

.method public static gpgsSign()V
    .locals 1

    .prologue
    .line 1065
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->gpgsSign()V

    .line 1066
    return-void
.end method

.method public static gpgsSignOut()V
    .locals 1

    .prologue
    .line 1071
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->gpgsSignOut()V

    .line 1072
    return-void
.end method

.method public static gpgsUnlockAchievement(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1095
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    invoke-virtual {v0, p0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->gpgsUnlockAchievement(Ljava/lang/String;)V

    .line 1096
    return-void
.end method

.method public static isSign()Z
    .locals 1

    .prologue
    .line 1077
    sget-object v0, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;->isSign()Z

    move-result v0

    return v0
.end method

.method public static native nativeAddFileCount()V
.end method

.method public static native nativeCallNetworkEvent()V
.end method

.method public static native nativeGetNetState()I
.end method

.method public static native nativeGetSavedVersion()Ljava/lang/String;
.end method

.method public static native nativeInitFileDownloadLog(IJ)V
.end method

.method public static native nativeResponseServer([BII)V
.end method

.method public static native nativeSendDownloadLog()V
.end method

.method public static native nativeSetFileDownloadFileName(Ljava/lang/String;)V
.end method

.method public static native nativeSetFileDownloadVersion(Ljava/lang/String;)V
.end method

.method public static native nativeSetNetState(I)V
.end method

.method public static native nativeSetPatchError()V
.end method

.method public static native nativeSetPatchFileData(Ljava/lang/String;JJ)V
.end method

.method public static native nativeSetbyGpgsQuestReward(Ljava/lang/String;)V
.end method

.method public static native nativeSetbyGpgsSignedIn(Z)V
.end method

.method public static native nativeSetbyIntroPlay(C)V
.end method

.method public static native nativeSoundLoadCallback(II)V
.end method

.method public static sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 948
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 949
    .local v2, "strTemp":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "strSub":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 952
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "message/rfc882"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    const-string v3, "mailto:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 956
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 957
    sget-object v3, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    const-string v4, "Email"

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 958
    return-void
.end method

.method public static sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 939
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, "strTemp":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 942
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "sms_body"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    sget-object v2, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 944
    return-void
.end method


# virtual methods
.method public setActivity(Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;)V
    .locals 0
    .param p1, "_activity"    # Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    .prologue
    .line 96
    sput-object p1, Lcom/com2us/imhero/normal/freefull/google/global/android/common/CUserDefined;->m_activity:Lcom/com2us/imhero/normal/freefull/google/global/android/common/MainActivity;

    .line 97
    return-void
.end method
