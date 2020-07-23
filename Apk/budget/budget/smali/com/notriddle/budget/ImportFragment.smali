.class public final Lcom/notriddle/budget/ImportFragment;
.super Lcom/notriddle/budget/FileCreatorFragment;
.source "ImportFragment.java"


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/ImportFragment;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {v0}, Lcom/notriddle/budget/FileCreatorFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/notriddle/budget/ImportFragment;
    # InsDal Modified --> local register: (1)#
    .registers 4



    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/ImportFragment;--->newInstance()Lcom/notriddle/budget/ImportFragment;"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lcom/notriddle/budget/ImportFragment;

    invoke-direct {v0}, Lcom/notriddle/budget/ImportFragment;-><init>()V

    return-object v0
.end method

.method private performOnCSV(Landroid/net/Uri;)V
    # InsDal Modified --> local register: (17)#
    .registers 22

    move-object/16 v17, p0
    move-object/16 v18, p1

    .param p1, "dest"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue

    const-string v19, "M_InsDal"
    const-string v20, "Lcom/notriddle/budget/ImportFragment;--->performOnCSV(Landroid/net/Uri;)V"
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v7, "envelopeValues":Landroid/content/ContentValues;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v10, "logValues":Landroid/content/ContentValues;
    new-instance v8, Ljava/io/FileReader;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 138
    .local v8, "f":Ljava/io/FileReader;
    new-instance v0, Lcom/notriddle/budget/csv/CSVReader;

    invoke-direct {v0, v8}, Lcom/notriddle/budget/csv/CSVReader;-><init>(Ljava/io/Reader;)V

    .line 139
    .local v0, "c":Lcom/notriddle/budget/csv/CSVReader;
    new-instance v14, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-virtual/range {v17 .. v17}, Lcom/notriddle/budget/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 141
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 143
    :try_start_0
    const-string v14, "DELETE FROM envelopes"

    invoke-virtual {v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string v14, "DELETE FROM log"

    invoke-virtual {v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lcom/notriddle/budget/csv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v9

    .line 146
    :goto_0
    if-eqz v9, :cond_1

    .line 147
    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 148
    .local v12, "time":J
    const/4 v14, 0x1

    aget-object v6, v9, v14

    .line 149
    .local v6, "envelopeName":Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v14, v9, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 150
    .local v1, "cents":J
    const/4 v14, 0x3

    aget-object v4, v9, v14

    .line 152
    .local v4, "description":Ljava/lang/String;
    invoke-virtual {v11, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 153
    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 160
    .local v5, "envelopeId":I
    :goto_1
    const-string v14, "envelope"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v14, "time"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    const-string v14, "description"

    invoke-virtual {v10, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v14, "cents"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string v14, "log"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 165
    invoke-virtual {v0}, Lcom/notriddle/budget/csv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 155
    .end local v5    # "envelopeId":I
    :cond_0
    const-string v14, "name"

    invoke-virtual {v7, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v14, "envelopes"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    long-to-int v5, v14

    .line 158
    .restart local v5    # "envelopeId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 172
    .end local v1    # "cents":J
    .end local v4    # "description":Ljava/lang/String;
    .end local v5    # "envelopeId":I
    .end local v6    # "envelopeName":Ljava/lang/String;
    .end local v12    # "time":J
    :catchall_0
    move-exception v14

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 173
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 174
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    throw v14

    .line 167
    :cond_1
    :try_start_1
    invoke-static {v3}, Lcom/notriddle/budget/EnvelopesOpenHelper;->playLog(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 169
    invoke-virtual/range {v17 .. v17}, Lcom/notriddle/budget/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 173
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 174
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 175
    return-void
.end method


# virtual methods
.method protected final getButtonTitle()I
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/ImportFragment;--->getButtonTitle()I"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const v0, 0x7f070024

    return v0
.end method

.method protected final getDialogTitle()I
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/ImportFragment;--->getDialogTitle()I"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const v0, 0x7f070024

    return v0
.end method

.method protected final perform(Landroid/net/Uri;)V
    # InsDal Modified --> local register: (16)#
    .registers 21

    move-object/16 v16, p0
    move-object/16 v17, p1

    .param p1, "src"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue

    const-string v18, "M_InsDal"
    const-string v19, "Lcom/notriddle/budget/ImportFragment;--->perform(Landroid/net/Uri;)V"
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 49
    move-object/from16 v6, v16

    .end local v17    # "src":Landroid/net/Uri;
    .local v6, "src":Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v0, "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'Accounts\'"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    new-instance v0, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-virtual {v6}, Lcom/notriddle/budget/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "DELETE FROM envelopes"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM log"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "SELECT _id, _name FROM Accounts"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    :goto_1
    if-eq v0, v4, :cond_1

    const-string v5, "_id"

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "name"

    const/4 v7, 0x1

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "envelopes"

    const/4 v7, 0x0

    invoke-virtual {v12, v5, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v0, "SELECT _account, _value, _transtype, description, year, month, day, hour, minute, _expensetype FROM Transactions"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    move v9, v0

    :goto_2
    if-eq v9, v14, :cond_3

    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    move-wide v7, v0

    :goto_3
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    const/16 v0, 0x9

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :goto_4
    const/4 v0, 0x4

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v0, 0x5

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v0, 0x6

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v0, 0x7

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v0, 0x8

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v0, Ljava/util/Date;

    add-int/lit16 v1, v1, -0x76c

    add-int/lit8 v2, v2, -0x1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-string v2, "envelope"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "description"

    invoke-virtual {v11, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cents"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "log"

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_2

    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    invoke-static {v12}, Lcom/notriddle/budget/EnvelopesOpenHelper;->playLog(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v6}, Lcom/notriddle/budget/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object/from16 v17, v6

    .line 53
    .end local v6    # "src":Landroid/net/Uri;
    .restart local v17    # "src":Landroid/net/Uri;
    :goto_5
    return-void

    .line 49
    .end local v17    # "src":Landroid/net/Uri;
    .restart local v6    # "src":Landroid/net/Uri;
    :catchall_0
    move-exception v17

    .end local v6    # "src":Landroid/net/Uri;
    .restart local v17    # "src":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v17

    .end local v17    # "src":Landroid/net/Uri;
    .restart local v6    # "src":Landroid/net/Uri;
    :cond_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-virtual {v6}, Lcom/notriddle/budget/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "envelopes.db"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2, v1}, Lcom/notriddle/budget/Util;->pump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object/from16 v17, v6

    .end local v6    # "src":Landroid/net/Uri;
    .restart local v17    # "src":Landroid/net/Uri;
    goto :goto_5

    .line 51
    :cond_5
    invoke-direct/range {v16 .. v17}, Lcom/notriddle/budget/ImportFragment;->performOnCSV(Landroid/net/Uri;)V

    goto :goto_5

    .end local v17    # "src":Landroid/net/Uri;
    .restart local v6    # "src":Landroid/net/Uri;
    :cond_6
    move-wide v7, v0

    goto/16 :goto_3

    :cond_7
    move-object v10, v0

    goto/16 :goto_4
.end method
