.class public final Lcom/notriddle/budget/GraphFragment;
.super Landroid/app/Fragment;
.source "GraphFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/GraphFragment;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {v0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {v3, v4}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V


    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/GraphFragment;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v3}, Lcom/notriddle/budget/GraphFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 54
    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    # InsDal Modified --> local register: (6)#
    .registers 12

    move-object/16 v6, p0
    move/16 v7, p1
    move-object/16 v8, p2

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/GraphFragment;--->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x134fd9000L

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "time":Ljava/lang/String;
    new-instance v0, Lcom/notriddle/budget/SQLiteLoader;

    invoke-virtual {v6}, Lcom/notriddle/budget/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-virtual {v6}, Lcom/notriddle/budget/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT (SELECT sum(l2.cents) FROM log as l2 WHERE l2.envelope = l.envelope AND l2.time <= l.time), e._id, e.color, l.time, e.name, l.cents FROM log as l LEFT JOIN envelopes AS e ON (e._id = l.envelope) WHERE e.color <> 0 AND l.time > "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ORDER BY e._id, l.time asc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/notriddle/budget/SQLiteLoader;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V

    .line 74
    .local v0, "retVal":Lcom/notriddle/budget/SQLiteLoader;
    sget-object v2, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/notriddle/budget/SQLiteLoader;->setNotificationUri(Landroid/net/Uri;)V

    .line 75
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    # InsDal Modified --> local register: (4)#
    .registers 11

    move-object/16 v4, p0
    move-object/16 v5, p1
    move-object/16 v6, p2
    move-object/16 v7, p3


    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/GraphFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/notriddle/budget/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, "retVal":Landroid/widget/ImageView;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    return-object v1
.end method

.method public final bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 37
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v18

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    const-wide/16 v16, 0x0

    const-wide v5, 0x7fffffffffffffffL

    const-wide/16 v14, 0x0

    const-wide v10, 0x7fffffffffffffffL

    const/4 v3, 0x0

    move v9, v3

    :goto_0
    move/from16 v0, v18

    if-eq v9, v0, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v7, v3, v16

    if-lez v7, :cond_b

    move-wide v12, v3

    :goto_1
    cmp-long v7, v3, v5

    if-gez v7, :cond_a

    :goto_2
    const/4 v5, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v7, v5, v14

    if-lez v7, :cond_9

    move-wide v7, v5

    :goto_3
    cmp-long v14, v5, v10

    if-gez v14, :cond_8

    :goto_4
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v9, v9, 0x1

    move-wide v10, v5

    move-wide v14, v7

    move-wide/from16 v16, v12

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/notriddle/budget/GraphFragment;->getView()Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/notriddle/budget/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/notriddle/budget/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f060002

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    mul-int/lit8 v20, v19, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/notriddle/budget/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v4, v3

    mul-int/lit8 v4, v19, 0x2

    sub-int v21, v3, v4

    const-string v3, "Budget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "GraphFragment.onLoadFinished(): width="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/notriddle/budget/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    const-string v3, "Budget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "GraphFragment.onLoadFinished(): height="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/high16 v4, -0x1000000

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move/from16 v0, v20

    int-to-float v4, v0

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setHinting(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p0 .. p0}, Lcom/notriddle/budget/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f06000a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v12, -0x1

    const/4 v7, 0x0

    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v13, v13, v25

    sub-float/2addr v4, v13

    move/from16 v0, v20

    int-to-float v13, v0

    sub-float/2addr v4, v13

    move/from16 v0, v19

    int-to-float v13, v0

    sub-float v26, v4, v13

    move/from16 v0, v21

    int-to-float v4, v0

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v13, v13, v25

    sub-float/2addr v4, v13

    move/from16 v0, v20

    int-to-float v13, v0

    sub-float v27, v4, v13

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    move v13, v4

    move-object v4, v7

    move v7, v12

    :goto_5
    move/from16 v0, v18

    if-eq v13, v0, :cond_5

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    const/16 v30, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    sub-long v32, v28, v5

    move-wide/from16 v0, v32

    long-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v26

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    sub-long v34, v16, v5

    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v26, v32

    add-float v32, v32, v25

    sub-long v33, v30, v10

    move-wide/from16 v0, v33

    long-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v27

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    sub-long v35, v14, v10

    move-wide/from16 v0, v35

    long-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v33, v33, v35

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    add-float v33, v33, v25

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v33, v33, v34

    const-string v34, "Budget"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "GraphFragment.onLoadFinished(): envelope="

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v34, "Budget"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "GraphFragment.onLoadFinished(): envelope.name="

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v36, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v34, "Budget"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "GraphFragment.onLoadFinished(): cents="

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v34, "Budget"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "GraphFragment.onLoadFinished(): pointHeight="

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v34, "Budget"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "GraphFragment.onLoadFinished(): time="

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v30, "Budget"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v34, "GraphFragment.onLoadFinished(): pointPosition="

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v12, v7, :cond_2

    if-eqz v4, :cond_1

    const/4 v7, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    const-string v31, "Budget"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v4, "GraphFragment.onLoadFinished(): first transaction? "

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v35, v0

    cmp-long v4, v35, v28

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    cmp-long v4, v30, v28

    if-eqz v4, :cond_4

    move/from16 v0, v20

    int-to-float v4, v0

    add-float v4, v4, v25

    move/from16 v0, v32

    invoke-virtual {v7, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v4, v7

    move v7, v12

    :cond_2
    move/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_7
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto/16 :goto_5

    :cond_3
    const/4 v4, 0x0

    goto :goto_6

    :cond_4
    move/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v4, v7

    move v7, v12

    goto :goto_7

    :cond_5
    if-eqz v4, :cond_6

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v22

    int-to-float v6, v0

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v0, v20

    int-to-float v4, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {p0 .. p0}, Lcom/notriddle/budget/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f070004

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    sub-int v6, v22, v19

    int-to-float v6, v6

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v0, v21

    int-to-float v4, v0

    sub-int v6, v22, v19

    int-to-float v6, v6

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {p0 .. p0}, Lcom/notriddle/budget/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f070034

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    const-wide/16 v6, 0x0

    cmp-long v4, v14, v6

    if-eqz v4, :cond_7

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/notriddle/budget/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v10, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v10, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :cond_7
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_8
    move-wide v5, v10

    goto/16 :goto_4

    :cond_9
    move-wide v7, v14

    goto/16 :goto_3

    :cond_a
    move-wide v3, v5

    goto/16 :goto_2

    :cond_b
    move-wide/from16 v12, v16

    goto/16 :goto_1
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/GraphFragment;--->onLoaderReset(Landroid/content/Loader;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method
