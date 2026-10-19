.class Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;
.super Ljava/lang/Object;
.source "AgreementUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerTextBox"
.end annotation


# instance fields
.field layout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;


# direct methods
.method public constructor <init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 26
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 1183
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    new-instance v23, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    .line 1185
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1186
    .local v17, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1190
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1191
    .local v9, "edge1Params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xa

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1192
    const/16 v23, 0x9

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1194
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1195
    .local v10, "edge1View":Landroid/widget/ImageView;
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$19(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1197
    add-int/lit8 v23, p4, 0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1202
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1203
    .local v11, "edge2Params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xa

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1204
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1206
    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1207
    .local v12, "edge2View":Landroid/widget/ImageView;
    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1208
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$20(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1209
    add-int/lit8 v23, p4, 0x2

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1214
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1215
    .local v13, "edge3Params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1216
    const/16 v23, 0x9

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1218
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1219
    .local v14, "edge3View":Landroid/widget/ImageView;
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1220
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$21(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1221
    add-int/lit8 v23, p4, 0x3

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1226
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1227
    .local v15, "edge4Params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1228
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1230
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1231
    .local v16, "edge4View":Landroid/widget/ImageView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1232
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$22(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1233
    add-int/lit8 v23, p4, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1238
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1239
    .local v7, "centertopParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xa

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1240
    const/16 v23, 0x1

    invoke-virtual {v10}, Landroid/widget/ImageView;->getId()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1241
    const/16 v23, 0x0

    invoke-virtual {v12}, Landroid/widget/ImageView;->getId()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1243
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1244
    .local v8, "centertopView":Landroid/widget/ImageView;
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1245
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$23(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1246
    sget-object v23, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1247
    add-int/lit8 v23, p4, 0x5

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1252
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1253
    .local v5, "centerdownParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1254
    const/16 v23, 0x1

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1255
    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getId()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1257
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1258
    .local v6, "centerdownView":Landroid/widget/ImageView;
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1259
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$24(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1260
    sget-object v23, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1261
    add-int/lit8 v23, p4, 0x6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1266
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1267
    .local v19, "sideleftParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1268
    const/16 v23, 0x3

    invoke-virtual {v10}, Landroid/widget/ImageView;->getId()I

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1269
    const/16 v23, 0x2

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1271
    new-instance v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1272
    .local v20, "sideleftView":Landroid/widget/ImageView;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1273
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$25(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1274
    sget-object v23, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1275
    add-int/lit8 v23, p4, 0x7

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1280
    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1281
    .local v21, "siderightParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xb

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1282
    const/16 v23, 0x3

    invoke-virtual {v12}, Landroid/widget/ImageView;->getId()I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1283
    const/16 v23, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getId()I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1285
    new-instance v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1286
    .local v22, "siderightView":Landroid/widget/ImageView;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1287
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$26(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1288
    sget-object v23, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1289
    add-int/lit8 v23, p4, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setId(I)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1294
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1295
    .local v3, "centerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xd

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1296
    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getId()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1297
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getId()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1298
    const/16 v23, 0x3

    invoke-virtual {v8}, Landroid/widget/ImageView;->getId()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1299
    const/16 v23, 0x2

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1302
    new-instance v18, Landroid/widget/ScrollView;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1303
    .local v18, "scrollView":Landroid/widget/ScrollView;
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1304
    add-int/lit8 v23, p4, 0x9

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setId(I)V

    .line 1305
    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 1306
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$27(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 1307
    new-instance v23, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox$1;-><init>(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1323
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1324
    .local v4, "centerTV":Landroid/widget/TextView;
    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x1

    invoke-direct/range {v23 .. v25}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1325
    invoke-static/range {p3 .. p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    invoke-static/range {p1 .. p1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$30(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1327
    const/high16 v23, 0x41a00000    # 20.0f

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;->access$12(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;F)F

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1328
    add-int/lit8 v23, p4, 0xa

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setId(I)V

    .line 1330
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1355
    return-void
.end method

.method static synthetic access$0(Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;)Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->this$0:Lcom/com2us/module/activeuser/useragree/AgreementUIActivity;

    return-object v0
.end method


# virtual methods
.method public getLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/com2us/module/activeuser/useragree/AgreementUIActivity$InnerTextBox;->layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method
