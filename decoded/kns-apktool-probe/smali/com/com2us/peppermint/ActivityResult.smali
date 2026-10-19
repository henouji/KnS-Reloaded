.class public Lcom/com2us/peppermint/ActivityResult;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/com2us/peppermint/Peppermint;


# direct methods
.method public constructor <init>(Lcom/com2us/peppermint/Peppermint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    return-void
.end method


# virtual methods
.method public onActivityResultForCamera(IILandroid/content/Intent;)V
    .locals 7

    const v6, 0xca003

    const/16 v5, 0x1f4

    const/16 v4, 0x100

    const/4 v3, 0x1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/PeppermintDialog;->getImageCaptureUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CAMERA ExternalStorageState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tmp_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v2}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/com2us/peppermint/PeppermintDialog;->setImageOutputUri(Landroid/net/Uri;)V

    const-string v1, "output"

    iget-object v2, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v2}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/com2us/peppermint/PeppermintDialog;->getImageOutputUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/PeppermintDialog;->getImageOutputUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "onActivityResultForCamera REQUEST_CODE_CROP_FROM_CAMERA mImageOutputUri is null"

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/PeppermintDialog;->getImageOutputUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getPeppermintDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/PeppermintDialog;->getImageOutputUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:window[\'native\'].getPictureCallback(\'\')"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_3

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/PeppermintDialog;->getImageOutputUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    div-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/PeppermintDialog;->getImageOutputUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v2, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v2}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/com2us/peppermint/PeppermintDialog;->getImageOutputUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintUtil;->getDegreeFromOrientation(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/com2us/peppermint/util/PeppermintUtil;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, v5, :cond_6

    const/16 v1, 0x1f4

    const/16 v2, 0x1f4

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "REQUEST_CODE_CROP_FROM_CAMERA mImageOutputUri Height : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintUtil;->getByteArrFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintEncryption;->encodeBase64([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:window[\'native\'].getPictureCallback(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/PeppermintDialog;->getImageOutputUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file.exists() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file.delete() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :sswitch_2
    if-nez p3, :cond_7

    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onActivityResultForCamera data is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v0}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/com2us/peppermint/PeppermintDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:window[\'native\'].getPictureCallback(\'\')"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/com2us/peppermint/PeppermintDialog;->setImageCaptureUri(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/com2us/peppermint/PeppermintDialog;->getImageCaptureUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALBUM ExternalStorageState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tmp_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v2}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/com2us/peppermint/PeppermintDialog;->setImageOutputUri(Landroid/net/Uri;)V

    const-string v1, "output"

    iget-object v2, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v2}, Lcom/com2us/peppermint/Peppermint;->getDialog()Lcom/com2us/peppermint/PeppermintDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/com2us/peppermint/PeppermintDialog;->getImageOutputUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_8
    iget-object v1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xca001 -> :sswitch_0
        0xca003 -> :sswitch_1
        0xa1b002 -> :sswitch_2
    .end sparse-switch
.end method

.method public onActivityResultForFacebook(IILandroid/content/Intent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResultForFacebook requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResultForFacebook session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/com2us/peppermint/util/PeppermintLog;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/com2us/peppermint/ActivityResult;->a:Lcom/com2us/peppermint/Peppermint;

    invoke-virtual {v1}, Lcom/com2us/peppermint/Peppermint;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xface -> :sswitch_0
        0xea0623 -> :sswitch_0
    .end sparse-switch
.end method
