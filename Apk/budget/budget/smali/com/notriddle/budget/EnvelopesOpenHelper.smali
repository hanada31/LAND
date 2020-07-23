.class public final Lcom/notriddle/budget/EnvelopesOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EnvelopesOpenHelper.java"


# static fields
.field public static final URI:Landroid/net/Uri;


# instance fields
.field mCntx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    # InsDal Modified --> local register: (1)#
    .registers 4



    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/EnvelopesOpenHelper;---><clinit>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v0, "sqlite://com.notriddle.budget/envelopes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "cntx"    # Landroid/content/Context;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/EnvelopesOpenHelper;---><init>(Landroid/content/Context;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v0, "envelopes.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    iput-object v4, v3, Lcom/notriddle/budget/EnvelopesOpenHelper;->mCntx:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static deposite(Landroid/content/Context;IJLjava/lang/String;)V
    # InsDal Modified --> local register: (4)#
    .registers 12

    move-object/16 v4, p0
    move/16 v5, p1
    move-wide/16 v6, p2
    move-object/16 v8, p4

    .param p0, "cntx"    # Landroid/content/Context;
    .param p1, "envelope"    # I
    .param p2, "cents"    # J
    .param p4, "description"    # Ljava/lang/String;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/EnvelopesOpenHelper;--->deposite(Landroid/content/Context;IJLjava/lang/String;)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v1, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-direct {v1, v4}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 106
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 108
    :try_start_0
    invoke-static {v0, v5, v6, v7, v8}, Lcom/notriddle/budget/EnvelopesOpenHelper;->deposite(Landroid/database/sqlite/SQLiteDatabase;IJLjava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 110
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public static deposite(Landroid/database/sqlite/SQLiteDatabase;IJLjava/lang/String;)V
    # InsDal Modified --> local register: (11)#
    .registers 19

    move-object/16 v11, p0
    move/16 v12, p1
    move-wide/16 v13, p2
    move-object/16 v15, p4

    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "envelope"    # I
    .param p2, "cents"    # J
    .param p4, "description"    # Ljava/lang/String;

    .prologue

    const-string v16, "M_InsDal"
    const-string v17, "Lcom/notriddle/budget/EnvelopesOpenHelper;--->deposite(Landroid/database/sqlite/SQLiteDatabase;IJLjava/lang/String;)V"
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-wide/16 v8, 0x0

    cmp-long v8, v13, v8

    if-eqz v8, :cond_0

    .line 82
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "envelopeString":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 84
    .local v6, "envelopeStringArray":[Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "SELECT cents, projectedCents FROM envelopes WHERE _id = ?"

    invoke-virtual {v11, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 88
    .local v0, "csr":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 89
    const-string v8, "cents"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 90
    .local v1, "currentCents":J
    const-string v8, "projectedCents"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 91
    .local v3, "currentProjectedCents":J
    const-string v8, "cents"

    add-long v9, v1, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    const-string v8, "projectedCents"

    add-long v9, v3, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v8, "envelopes"

    const-string v9, "_id = ?"

    invoke-virtual {v11, v8, v7, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 94
    new-instance v7, Landroid/content/ContentValues;

    .end local v7    # "values":Landroid/content/ContentValues;
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string v8, "envelope"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v8, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v8, "description"

    invoke-virtual {v7, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v8, "cents"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v8, "log"

    const/4 v9, 0x0

    invoke-virtual {v11, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 101
    .end local v0    # "csr":Landroid/database/Cursor;
    .end local v1    # "currentCents":J
    .end local v3    # "currentProjectedCents":J
    .end local v5    # "envelopeString":Ljava/lang/String;
    .end local v6    # "envelopeStringArray":[Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public static depositeDelayed(Landroid/content/Context;IJLjava/lang/String;J)V
    # InsDal Modified --> local register: (8)#
    .registers 18

    move-object/16 v8, p0
    move/16 v9, p1
    move-wide/16 v10, p2
    move-object/16 v12, p4
    move-wide/16 v13, p5

    .param p0, "cntx"    # Landroid/content/Context;
    .param p1, "envelope"    # I
    .param p2, "cents"    # J
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "delayUntil"    # J

    .prologue

    const-string v15, "M_InsDal"
    const-string v16, "Lcom/notriddle/budget/EnvelopesOpenHelper;--->depositeDelayed(Landroid/content/Context;IJLjava/lang/String;J)V"
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v1, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-direct {v1, v8}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 164
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "SELECT projectedCents FROM envelopes WHERE _id = ?"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "projectedCents"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "projectedCents"

    add-long v6, v3, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v13, v5

    if-gtz v5, :cond_0

    const-string v5, "cents"

    add-long/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v3, "envelopes"

    const-string v4, "_id = ?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "envelope"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "time"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "description"

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cents"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "log"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 165
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 166
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public static playLog(Landroid/content/Context;)V
    # InsDal Modified --> local register: (4)#
    .registers 8

    move-object/16 v4, p0

    .param p0, "cntx"    # Landroid/content/Context;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/EnvelopesOpenHelper;--->playLog(Landroid/content/Context;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v1, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-direct {v1, v4}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 125
    :try_start_0
    invoke-static {v0}, Lcom/notriddle/budget/EnvelopesOpenHelper;->playLog(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 127
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 130
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 130
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public static playLog(Landroid/database/sqlite/SQLiteDatabase;)V
    # InsDal Modified --> local register: (6)#
    .registers 10

    move-object/16 v6, p0

    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/EnvelopesOpenHelper;--->playLog(Landroid/database/sqlite/SQLiteDatabase;)V"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, "currentTime":J
    const-string v2, "UPDATE envelopes SET cents = (SELECT SUM(log.cents) FROM log WHERE log.envelope = envelopes._id AND log.time < ? GROUP BY log.envelope), projectedCents = (SELECT SUM(log.cents) FROM log WHERE log.envelope = envelopes._id GROUP BY log.envelope)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v6, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    # InsDal Modified --> local register: (6)#
    .registers 11

    move-object/16 v6, p0
    move-object/16 v7, p1

    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/EnvelopesOpenHelper;--->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 39
    const-string v1, "CREATE TABLE \'envelopes\' ( \'_id\' INTEGER PRIMARY KEY, \'name\' TEXT, \'cents\' INTEGER, \'projectedCents\' INTEGER, \'lastPaycheckCents\' INTEGER, \'color\' INTEGER );"

    invoke-virtual {v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    iget-object v2, v6, Lcom/notriddle/budget/EnvelopesOpenHelper;->mCntx:Landroid/content/Context;

    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "cents"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string v1, "projectedCents"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    const-string v1, "lastPaycheckCents"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    const-string v1, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    const-string v1, "envelopes"

    invoke-virtual {v7, v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 47
    const-string v1, "name"

    iget-object v2, v6, Lcom/notriddle/budget/EnvelopesOpenHelper;->mCntx:Landroid/content/Context;

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "cents"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    const-string v1, "projectedCents"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    const-string v1, "lastPaycheckCents"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    const-string v1, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v1, "envelopes"

    invoke-virtual {v7, v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 53
    const-string v1, "name"

    iget-object v2, v6, Lcom/notriddle/budget/EnvelopesOpenHelper;->mCntx:Landroid/content/Context;

    const v3, 0x7f070017

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "cents"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v1, "projectedCents"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v1, "lastPaycheckCents"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v1, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string v1, "envelopes"

    invoke-virtual {v7, v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 59
    const-string v1, "CREATE TABLE \'log\' ( \'_id\' INTEGER PRIMARY KEY, \'envelope\' INTEGER, \'time\' TIMESTAMP, \'description\' TEXT, \'cents\' INTEGER )"

    invoke-virtual {v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    # InsDal Modified --> local register: (4)#
    .registers 11

    move-object/16 v4, p0
    move-object/16 v5, p1
    move/16 v6, p2
    move/16 v7, p3

    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVer"    # I

    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/EnvelopesOpenHelper;--->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    .line 63
    const/4 v0, 0x3

    if-ge v6, v0, :cond_0

    .line 64
    const-string v0, "ALTER TABLE \'envelopes\' ADD COLUMN \'projectedCents\' INTEGER"

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    invoke-static {v5}, Lcom/notriddle/budget/EnvelopesOpenHelper;->playLog(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    :cond_0
    const/4 v0, 0x4

    if-ge v6, v0, :cond_1

    .line 68
    const-string v0, "ALTER TABLE \'envelopes\' ADD COLUMN \'lastPaycheckCents\' INTEGER"

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "UPDATE envelopes SET lastPaycheckCents = 0"

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    :cond_1
    if-ge v6, v1, :cond_3

    .line 72
    const-string v0, "ALTER TABLE \'envelopes\' ADD COLUMN \'color\' INTEGER"

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string v0, "UPDATE envelopes SET color = 0"

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    :cond_2
    :goto_0
    return-void

    .line 74
    :cond_3
    if-ne v6, v1, :cond_2

    .line 75
    const-string v0, "UPDATE envelopes SET color = 0 WHERE color = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, -0x111112

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
