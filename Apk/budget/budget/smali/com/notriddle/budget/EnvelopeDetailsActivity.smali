.class public Lcom/notriddle/budget/EnvelopeDetailsActivity;
.super Lcom/notriddle/budget/LockedActivity;
.source "EnvelopeDetailsActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/notriddle/budget/DeleteAdapter$Deleter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/notriddle/budget/LockedActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/notriddle/budget/DeleteAdapter$Deleter;"
    }
.end annotation


# instance fields
.field mAmount:Landroid/widget/TextView;

.field mAmountName:Landroid/widget/TextView;

.field mColor:I

.field mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

.field mEnvelopeData:Landroid/database/Cursor;

.field mId:I

.field mLogAdapter:Lcom/notriddle/budget/LogAdapter;

.field mLogData:Landroid/database/Cursor;

.field mLogView:Landroid/widget/ListView;

.field mName:Lcom/notriddle/budget/EditTextDefaultFocus;

.field mNavAdapter:Lcom/notriddle/budget/SimpleEnvelopesAdapter;

.field mNavView:Landroid/widget/ListView;

.field mProjected:Landroid/widget/TextView;

.field mShowTransactionId:I


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/EnvelopeDetailsActivity;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {v0}, Lcom/notriddle/budget/LockedActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/notriddle/budget/EnvelopeDetailsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/notriddle/budget/EnvelopeDetailsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->switchEnvelope(I)V

    return-void
.end method

.method private loadEnvelopeData(Landroid/database/Cursor;)V
    # InsDal Modified --> local register: (11)#
    .registers 16

    move-object/16 v11, p0
    move-object/16 v12, p1

    .param p1, "data"    # Landroid/database/Cursor;

    .prologue

    const-string v13, "M_InsDal"
    const-string v14, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->loadEnvelopeData(Landroid/database/Cursor;)V"
    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput-object v12, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mEnvelopeData:Landroid/database/Cursor;

    .line 249
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 250
    invoke-virtual {v11}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->finish()V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 253
    :goto_1
    const-string v7, "_id"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget v8, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mId:I

    if-eq v7, v8, :cond_2

    .line 254
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 256
    :cond_2
    const-string v7, "name"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "name":Ljava/lang/String;
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mName:Lcom/notriddle/budget/EditTextDefaultFocus;

    invoke-virtual {v7}, Lcom/notriddle/budget/EditTextDefaultFocus;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_4

    .line 258
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mName:Lcom/notriddle/budget/EditTextDefaultFocus;

    invoke-virtual {v7}, Lcom/notriddle/budget/EditTextDefaultFocus;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 259
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mName:Lcom/notriddle/budget/EditTextDefaultFocus;

    invoke-virtual {v7, v4}, Lcom/notriddle/budget/EditTextDefaultFocus;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_3
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mName:Lcom/notriddle/budget/EditTextDefaultFocus;

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/notriddle/budget/EditTextDefaultFocus;->setDefaultFocus(Z)V

    .line 263
    :cond_4
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v7}, Lcom/notriddle/budget/DeleteAdapter;->getDeletedId()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 264
    const-string v7, "cents"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 265
    .local v0, "cents":J
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mAmount:Landroid/widget/TextView;

    invoke-static {v11, v0, v1}, Lcom/notriddle/budget/EditMoney;->toColoredMoney(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const-string v7, "projectedCents"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 269
    .local v5, "projected":J
    cmp-long v7, v5, v0

    if-nez v7, :cond_7

    .line 270
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mProjected:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    .end local v0    # "cents":J
    .end local v5    # "projected":J
    :cond_5
    :goto_2
    const-string v7, "color"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    .line 279
    invoke-virtual {v11}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    iget v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    if-nez v7, :cond_8

    const v7, -0x111112

    :goto_3
    invoke-direct {v9, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavAdapter:Lcom/notriddle/budget/SimpleEnvelopesAdapter;

    if-eqz v7, :cond_6

    .line 282
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavAdapter:Lcom/notriddle/budget/SimpleEnvelopesAdapter;

    invoke-virtual {v7, v12}, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 283
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavView:Landroid/widget/ListView;

    if-eqz v7, :cond_6

    .line 284
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavAdapter:Lcom/notriddle/budget/SimpleEnvelopesAdapter;

    invoke-virtual {v7}, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->getCount()I

    move-result v3

    .line 285
    .local v3, "l":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-eq v2, v3, :cond_6

    .line 286
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavAdapter:Lcom/notriddle/budget/SimpleEnvelopesAdapter;

    invoke-virtual {v7, v2}, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->getItemId(I)J

    move-result-wide v7

    iget v9, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mId:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_9

    .line 287
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavView:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 293
    .end local v2    # "i":I
    .end local v3    # "l":I
    :cond_6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-ge v7, v8, :cond_0

    .line 294
    invoke-virtual {v11}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 272
    .restart local v0    # "cents":J
    .restart local v5    # "projected":J
    :cond_7
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mProjected:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mProjected:Landroid/widget/TextView;

    invoke-static {v11, v5, v6}, Lcom/notriddle/budget/EditMoney;->toColoredMoney(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 279
    .end local v0    # "cents":J
    .end local v5    # "projected":J
    :cond_8
    iget v7, v11, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    goto :goto_3

    .line 285
    .restart local v2    # "i":I
    .restart local v3    # "l":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private loadLogData(Landroid/database/Cursor;)V
    # InsDal Modified --> local register: (17)#
    .registers 22

    move-object/16 v17, p0
    move-object/16 v18, p1

    .param p1, "data"    # Landroid/database/Cursor;

    .prologue

    const-string v19, "M_InsDal"
    const-string v20, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->loadLogData(Landroid/database/Cursor;)V"
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogData:Landroid/database/Cursor;

    .line 301
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v13}, Lcom/notriddle/budget/DeleteAdapter;->getDeletedId()J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_3

    .line 302
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 303
    .local v5, "l":I
    const-wide/16 v11, 0x0

    .line 304
    .local v11, "total":J
    const-wide/16 v9, 0x0

    .line 305
    .local v9, "projected":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 306
    .local v7, "now":J
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 307
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-eq v4, v5, :cond_2

    .line 308
    const-string v13, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 309
    int-to-long v13, v13

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v15}, Lcom/notriddle/budget/DeleteAdapter;->getDeletedId()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_1

    .line 310
    const-string v13, "cents"

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 311
    .local v2, "cents":J
    const-string v13, "time"

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 312
    cmp-long v13, v13, v7

    if-gtz v13, :cond_0

    .line 313
    add-long/2addr v11, v2

    .line 315
    :cond_0
    add-long/2addr v9, v2

    .line 317
    .end local v2    # "cents":J
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 319
    :cond_2
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mAmount:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-static {v0, v11, v12}, Lcom/notriddle/budget/EditMoney;->toColoredMoney(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    cmp-long v13, v9, v11

    if-nez v13, :cond_7

    .line 321
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mProjected:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    .end local v4    # "i":I
    .end local v5    # "l":I
    .end local v7    # "now":J
    .end local v9    # "projected":J
    .end local v11    # "total":J
    :cond_3
    :goto_1
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogAdapter:Lcom/notriddle/budget/LogAdapter;

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/notriddle/budget/LogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 330
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogView:Landroid/widget/ListView;

    .line 331
    .local v6, "lV":Landroid/widget/ListView;
    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v13

    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogAdapter:Lcom/notriddle/budget/LogAdapter;

    invoke-virtual {v14}, Lcom/notriddle/budget/LogAdapter;->getCount()I

    move-result v14

    if-eq v13, v14, :cond_4

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_8

    .line 333
    :cond_4
    const v13, 0x7f050001

    invoke-virtual {v6, v13}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 337
    :goto_2
    move-object/from16 v0, v17

    iget v13, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mShowTransactionId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    .line 338
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v13}, Lcom/notriddle/budget/DeleteAdapter;->getCount()I

    move-result v5

    .line 339
    .restart local v5    # "l":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-eq v4, v5, :cond_5

    .line 340
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v13, v4}, Lcom/notriddle/budget/DeleteAdapter;->getItemId(I)J

    move-result-wide v13

    move-object/from16 v0, v17

    iget v15, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mShowTransactionId:I

    int-to-long v15, v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_a

    .line 341
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogView:Landroid/widget/ListView;

    add-int/lit8 v14, v5, -0x1

    if-ne v4, v14, :cond_9

    .end local v4    # "i":I
    :goto_4
    invoke-virtual {v13, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 345
    :cond_5
    const/4 v13, -0x1

    move-object/from16 v0, v17

    iput v13, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mShowTransactionId:I

    .line 347
    .end local v5    # "l":I
    :cond_6
    return-void

    .line 323
    .end local v6    # "lV":Landroid/widget/ListView;
    .restart local v4    # "i":I
    .restart local v5    # "l":I
    .restart local v7    # "now":J
    .restart local v9    # "projected":J
    .restart local v11    # "total":J
    :cond_7
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mProjected:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mProjected:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-static {v0, v9, v10}, Lcom/notriddle/budget/EditMoney;->toColoredMoney(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 335
    .end local v4    # "i":I
    .end local v5    # "l":I
    .end local v7    # "now":J
    .end local v9    # "projected":J
    .end local v11    # "total":J
    .restart local v6    # "lV":Landroid/widget/ListView;
    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 341
    .restart local v4    # "i":I
    .restart local v5    # "l":I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 339
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private needDatabase()Landroid/database/sqlite/SQLiteDatabase;
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->needDatabase()Landroid/database/sqlite/SQLiteDatabase;"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-direct {v0, v1}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 211
    :cond_0
    iget-object v0, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private switchEnvelope(I)V
    # InsDal Modified --> local register: (4)#
    .registers 9

    move-object/16 v4, p0
    move/16 v5, p1

    .param p1, "id"    # I

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->switchEnvelope(I)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 408
    iget-object v1, v4, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v1}, Lcom/notriddle/budget/DeleteAdapter;->performDelete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    iput v5, v4, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mId:I

    .line 410
    invoke-virtual {v4}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 413
    invoke-virtual {v4}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 434
    :goto_0
    return-void

    .line 417
    :cond_0
    new-instance v0, Lcom/notriddle/budget/EnvelopeDetailsActivity$2;

    invoke-direct {v0, v4, v5}, Lcom/notriddle/budget/EnvelopeDetailsActivity$2;-><init>(Lcom/notriddle/budget/EnvelopeDetailsActivity;I)V

    .line 432
    .local v0, "obs":Landroid/database/DataSetObserver;
    iget-object v1, v4, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v1, v0}, Lcom/notriddle/budget/DeleteAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->afterTextChanged(Landroid/text/Editable;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    # InsDal Modified --> local register: (0)#
    .registers 8

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2
    move/16 v3, p3
    move/16 v4, p4


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->beforeTextChanged(Ljava/lang/CharSequence;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (12)#
    .registers 17

    move-object/16 v12, p0
    move-object/16 v13, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/high16 v11, 0x7f050000

    const/4 v10, 0x0

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 74
    invoke-super {v12, v13}, Lcom/notriddle/budget/LockedActivity;->onCreate(Landroid/os/Bundle;)V


    const-string v14, "M_InsDal"
    const-string v15, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const v4, 0x7f03000a

    invoke-virtual {v12, v4}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->setContentView(I)V

    .line 76
    if-eqz v13, :cond_1

    const-string v4, "com.notriddle.budget.envelope"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.notriddle.budget.envelope"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    :goto_0
    iput v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mId:I

    .line 79
    if-nez v13, :cond_2

    invoke-virtual {v12}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "com.notriddle.budget.transaction"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :goto_1
    iput v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mShowTransactionId:I

    .line 82
    new-instance v4, Lcom/notriddle/budget/EditTextDefaultFocus;

    invoke-direct {v4, v12}, Lcom/notriddle/budget/EditTextDefaultFocus;-><init>(Landroid/content/Context;)V

    iput-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mName:Lcom/notriddle/budget/EditTextDefaultFocus;

    .line 83
    iget-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mName:Lcom/notriddle/budget/EditTextDefaultFocus;

    const v6, 0x7f070007

    invoke-virtual {v12, v6}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/notriddle/budget/EditTextDefaultFocus;->setHint(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mName:Lcom/notriddle/budget/EditTextDefaultFocus;

    const v6, 0x80001

    invoke-virtual {v4, v6}, Lcom/notriddle/budget/EditTextDefaultFocus;->setInputType(I)V

    .line 85
    iget-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mName:Lcom/notriddle/budget/EditTextDefaultFocus;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v5, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Lcom/notriddle/budget/EditTextDefaultFocus;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mName:Lcom/notriddle/budget/EditTextDefaultFocus;

    invoke-virtual {v4, v8}, Lcom/notriddle/budget/EditTextDefaultFocus;->setSingleLine(Z)V

    .line 90
    iput-object v9, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mEnvelopeData:Landroid/database/Cursor;

    .line 91
    iput-object v9, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogData:Landroid/database/Cursor;

    .line 93
    const v4, 0x7f0a000a

    invoke-virtual {v12, v4}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavView:Landroid/widget/ListView;

    .line 94
    .local v3, "nV":Landroid/widget/ListView;
    if-eqz v3, :cond_0

    .line 95
    new-instance v4, Lcom/notriddle/budget/SimpleEnvelopesAdapter;

    const v5, 0x7f030005

    invoke-direct {v4, v12, v9, v5}, Lcom/notriddle/budget/SimpleEnvelopesAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavAdapter:Lcom/notriddle/budget/SimpleEnvelopesAdapter;

    .line 96
    iget-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavAdapter:Lcom/notriddle/budget/SimpleEnvelopesAdapter;

    invoke-virtual {v4}, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->setExpanded$1385ff()V

    .line 97
    iget-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavAdapter:Lcom/notriddle/budget/SimpleEnvelopesAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 99
    invoke-virtual {v3, v12}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    :cond_0
    invoke-virtual {v12}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v10, v9, v12}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 103
    invoke-virtual {v12}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v8, v9, v12}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 105
    invoke-virtual {v12}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 106
    .local v0, "ab":Landroid/app/ActionBar;
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 107
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 108
    iget-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mName:Lcom/notriddle/budget/EditTextDefaultFocus;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 109
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 110
    iget-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mName:Lcom/notriddle/budget/EditTextDefaultFocus;

    invoke-virtual {v4, v12}, Lcom/notriddle/budget/EditTextDefaultFocus;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    new-instance v4, Lcom/notriddle/budget/LogAdapter;

    invoke-direct {v4, v12}, Lcom/notriddle/budget/LogAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogAdapter:Lcom/notriddle/budget/LogAdapter;

    .line 112
    const v4, 0x102000a

    invoke-virtual {v12, v4}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogView:Landroid/widget/ListView;

    .line 114
    .local v2, "lV":Landroid/widget/ListView;
    invoke-virtual {v12}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030011

    invoke-virtual {v4, v5, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "head":Landroid/view/View;
    invoke-virtual {v1, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 121
    const v4, 0x7f0a0007

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mAmount:Landroid/widget/TextView;

    .line 122
    const v4, 0x7f0a0006

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mAmountName:Landroid/widget/TextView;

    .line 123
    const v4, 0x7f0a001a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mProjected:Landroid/widget/TextView;

    .line 124
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 125
    new-instance v4, Lcom/notriddle/budget/DeleteAdapter;

    iget-object v5, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogAdapter:Lcom/notriddle/budget/LogAdapter;

    invoke-direct {v4, v12, v12, v5, v11}, Lcom/notriddle/budget/DeleteAdapter;-><init>(Landroid/app/Activity;Lcom/notriddle/budget/DeleteAdapter$Deleter;Landroid/widget/ListAdapter;I)V

    iput-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    .line 128
    iget-object v4, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    new-instance v4, Lcom/notriddle/budget/EnvelopeDetailsActivity$1;

    invoke-direct {v4, v12, v1}, Lcom/notriddle/budget/EnvelopeDetailsActivity$1;-><init>(Lcom/notriddle/budget/EnvelopeDetailsActivity;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 144
    const v4, 0x7f050001

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 145
    invoke-virtual {v2, v12}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    invoke-virtual {v12}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    const v4, 0x106000d

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelector(I)V

    .line 148
    invoke-virtual {v12}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 149
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v12}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 152
    invoke-virtual {v12}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {v12}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 158
    return-void

    .line 76
    .end local v0    # "ab":Landroid/app/ActionBar;
    .end local v1    # "head":Landroid/view/View;
    .end local v2    # "lV":Landroid/widget/ListView;
    .end local v3    # "nV":Landroid/widget/ListView;
    :cond_1
    invoke-virtual {v12}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "com.notriddle.budget.envelope"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_0

    :cond_2
    move v4, v5

    .line 79
    goto/16 :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    # InsDal Modified --> local register: (12)#
    .registers 18

    move-object/16 v12, p0
    move/16 v13, p1
    move-object/16 v14, p2

    .param p1, "id"    # I
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

    const-string v15, "M_InsDal"
    const-string v16, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;"
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 215
    if-nez v13, :cond_0

    const-string v3, "envelopes"

    .line 218
    .local v3, "table":Ljava/lang/String;
    :goto_0
    if-nez v13, :cond_1

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v8

    const-string v1, "cents"

    aput-object v1, v4, v2

    const-string v1, "projectedCents"

    aput-object v1, v4, v9

    const-string v1, "color"

    aput-object v1, v4, v10

    const-string v1, "_id"

    aput-object v1, v4, v11

    .line 223
    .local v4, "columns":[Ljava/lang/String;
    :goto_1
    if-nez v13, :cond_3

    iget-object v1, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavAdapter:Lcom/notriddle/budget/SimpleEnvelopesAdapter;

    if-nez v1, :cond_2

    const-string v5, "_id = ?"

    .line 226
    .local v5, "where":Ljava/lang/String;
    :goto_2
    if-nez v13, :cond_4

    iget-object v1, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavAdapter:Lcom/notriddle/budget/SimpleEnvelopesAdapter;

    if-eqz v1, :cond_4

    const/4 v6, 0x0

    .line 229
    .local v6, "wArgs":[Ljava/lang/String;
    :goto_3
    if-nez v13, :cond_5

    const-string v7, "name"

    .line 232
    .local v7, "sort":Ljava/lang/String;
    :goto_4
    new-instance v0, Lcom/notriddle/budget/SQLiteLoader;

    new-instance v2, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-direct {v2, v12}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    move-object v1, v12

    invoke-direct/range {v0 .. v8}, Lcom/notriddle/budget/SQLiteLoader;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;B)V

    .line 243
    .local v0, "retVal":Lcom/notriddle/budget/SQLiteLoader;
    sget-object v1, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/SQLiteLoader;->setNotificationUri(Landroid/net/Uri;)V

    .line 244
    return-object v0

    .line 215
    .end local v0    # "retVal":Lcom/notriddle/budget/SQLiteLoader;
    .end local v3    # "table":Ljava/lang/String;
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "where":Ljava/lang/String;
    .end local v6    # "wArgs":[Ljava/lang/String;
    .end local v7    # "sort":Ljava/lang/String;
    :cond_0
    const-string v3, "log"

    goto :goto_0

    .line 218
    .restart local v3    # "table":Ljava/lang/String;
    :cond_1
    new-array v4, v11, [Ljava/lang/String;

    const-string v1, "description"

    aput-object v1, v4, v8

    const-string v1, "cents"

    aput-object v1, v4, v2

    const-string v1, "time"

    aput-object v1, v4, v9

    const-string v1, "_id"

    aput-object v1, v4, v10

    goto :goto_1

    .line 223
    .restart local v4    # "columns":[Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const-string v5, "envelope = ?"

    goto :goto_2

    .line 226
    .restart local v5    # "where":Ljava/lang/String;
    :cond_4
    new-array v6, v2, [Ljava/lang/String;

    iget v1, v12, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v8

    goto :goto_3

    .line 229
    .restart local v6    # "wArgs":[Ljava/lang/String;
    :cond_5
    const-string v7, "time * -1"

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "menu"    # Landroid/view/Menu;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->onCreateOptionsMenu(Landroid/view/Menu;)Z"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v2}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public final onDelete$1349ef()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->onDelete$1349ef()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogData:Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->loadLogData(Landroid/database/Cursor;)V

    .line 188
    return-void
.end method

.method public onDestroy()V
    # InsDal Modified --> local register: (8)#
    .registers 12

    move-object/16 v8, p0


    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 175
    invoke-super {v8}, Lcom/notriddle/budget/LockedActivity;->onDestroy()V


    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->onDestroy()V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, v8, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mName:Lcom/notriddle/budget/EditTextDefaultFocus;

    invoke-virtual {v0}, Lcom/notriddle/budget/EditTextDefaultFocus;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v8, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogAdapter:Lcom/notriddle/budget/LogAdapter;

    invoke-virtual {v0}, Lcom/notriddle/budget/LogAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v8, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mEnvelopeData:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogData:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {v8}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->needDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "envelopes"

    const-string v2, "_id = ?"

    new-array v3, v6, [Ljava/lang/String;

    iget v4, v8, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {v8}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->needDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "log"

    const-string v2, "envelope = ?"

    new-array v3, v6, [Ljava/lang/String;

    iget v4, v8, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 178
    iget-object v0, v8, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 179
    iput-object v7, v8, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 181
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    # InsDal Modified --> local register: (6)#
    .registers 15

    move-object/16 v6, p0
    move-object/16 v7, p1
    move-object/16 v8, p2
    move/16 v9, p3
    move-wide/16 v10, p4

    .param p1, "a"    # Landroid/widget/AdapterView;
    .param p4, "id"    # J

    .prologue

    const-string v12, "M_InsDal"
    const-string v13, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V"
    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    long-to-int v0, v10

    .line 380
    .local v0, "iId":I
    iget-object v1, v6, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogView:Landroid/widget/ListView;

    if-ne v7, v1, :cond_3

    .line 381
    move-object v7, v6

    iget-object v1, v6, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mLogAdapter:Lcom/notriddle/budget/LogAdapter;

    invoke-virtual {v1}, Lcom/notriddle/budget/LogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v4, :cond_0

    const-string v5, "_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v0, :cond_2

    const-string v1, "description"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "cents"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/notriddle/budget/EditTransactionFragment;->newInstance(ILjava/lang/String;J)Lcom/notriddle/budget/EditTransactionFragment;

    move-result-object v1

    invoke-virtual {v7}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "dialog"

    invoke-virtual {v1, v4, v5}, Lcom/notriddle/budget/EditTransactionFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 385
    :cond_1
    :goto_1
    return-void

    .line 381
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_3
    iget-object v1, v6, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mNavView:Landroid/widget/ListView;

    if-ne v7, v1, :cond_1

    .line 383
    invoke-direct {v6, v0}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->switchEnvelope(I)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->loadEnvelopeData(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->loadLogData(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
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
    const-string v3, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->onLoaderReset(Landroid/content/Loader;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v0}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->finish()V

    .line 359
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (9)#
    .registers 14

    move-object/16 v9, p0
    move-object/16 v10, p1

    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v11, "M_InsDal"
    const-string v12, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v6, -0xcc1a4b

    const v5, -0xcc4a1b

    const v4, -0xffa022

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 470
    invoke-interface {v10}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 488
    invoke-super {v9, v10}, Lcom/notriddle/budget/LockedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 472
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/notriddle/budget/EnvelopesActivity;

    invoke-direct {v0, v9, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 474
    invoke-virtual {v9, v0}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 477
    .end local v0    # "i":Landroid/content/Intent;
    :sswitch_1
    iget v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mId:I

    invoke-static {v2, v8}, Lcom/notriddle/budget/SpendFragment;->newInstance(IZ)Lcom/notriddle/budget/SpendFragment;

    move-result-object v2

    .line 478
    invoke-virtual {v9}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/notriddle/budget/SpendFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :sswitch_2
    iget v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mId:I

    invoke-static {v2, v1}, Lcom/notriddle/budget/SpendFragment;->newInstance(IZ)Lcom/notriddle/budget/SpendFragment;

    move-result-object v2

    .line 482
    invoke-virtual {v9}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/notriddle/budget/SpendFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :sswitch_3
    iget v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    if-nez v2, :cond_0

    const/16 v2, -0x3e3f

    iput v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "color"

    iget v4, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {v9}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->needDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "envelopes"

    const-string v5, "_id = ?"

    new-array v6, v1, [Ljava/lang/String;

    iget v7, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    const/16 v3, -0x3e3f

    if-ne v2, v3, :cond_1

    const v2, -0xe071

    iput v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    goto :goto_1

    :cond_1
    iget v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    const v3, -0xe071

    if-ne v2, v3, :cond_2

    const v2, -0xbbbc

    iput v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    goto :goto_1

    :cond_2
    iget v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    const v3, -0xbbbc

    if-ne v2, v3, :cond_3

    const v2, -0x559934

    iput v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    goto :goto_1

    :cond_3
    iget v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    const v3, -0x559934

    if-ne v2, v3, :cond_4

    iput v5, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    goto :goto_1

    :cond_4
    iget v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    if-ne v2, v5, :cond_5

    iput v6, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    goto :goto_1

    :cond_5
    iget v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    if-ne v2, v6, :cond_6

    iput v4, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    goto :goto_1

    :cond_6
    iget v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    if-ne v2, v4, :cond_7

    const v2, -0x319100

    iput v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    goto :goto_1

    :cond_7
    iget v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    const v3, -0x319100

    if-ne v2, v3, :cond_8

    const/16 v2, -0x44cd

    iput v2, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    goto/16 :goto_1

    :cond_8
    iput v8, v9, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mColor:I

    goto/16 :goto_1

    .line 470
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a001e -> :sswitch_2
        0x7f0a001f -> :sswitch_1
        0x7f0a0020 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue
    .line 166
    invoke-super {v1}, Lcom/notriddle/budget/LockedActivity;->onPause()V


    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->onPause()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v0}, Lcom/notriddle/budget/DeleteAdapter;->performDelete()Z

    .line 168
    iget-object v0, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 172
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {v2, v3}, Lcom/notriddle/budget/LockedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V


    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->onSaveInstanceState(Landroid/os/Bundle;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "com.notriddle.budget.envelope"

    iget v1, v2, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mId:I

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    # InsDal Modified --> local register: (7)#
    .registers 15

    move-object/16 v7, p0
    move-object/16 v8, p1
    move/16 v9, p2
    move/16 v10, p3
    move/16 v11, p4

    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue

    const-string v12, "M_InsDal"
    const-string v13, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->onTextChanged(Ljava/lang/CharSequence;III)V"
    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-direct {v7}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->needDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "envelopes"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, v7, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    invoke-virtual {v7}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 376
    return-void
.end method

.method public final performDelete(J)V
    # InsDal Modified --> local register: (5)#
    .registers 11

    move-object/16 v5, p0
    move-wide/16 v6, p1

    .param p1, "id"    # J

    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->performDelete(J)V"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    long-to-int v0, v6

    invoke-direct {v5}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->needDatabase()Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, v5, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, v5, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM log WHERE _id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v5, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/notriddle/budget/EnvelopesOpenHelper;->playLog(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, v5, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v5}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v5, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v5, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final undoDelete$1349ef()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/EnvelopeDetailsActivity;--->undoDelete$1349ef()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mEnvelopeData:Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lcom/notriddle/budget/EnvelopeDetailsActivity;->loadEnvelopeData(Landroid/database/Cursor;)V

    .line 191
    return-void
.end method
