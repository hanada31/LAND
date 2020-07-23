.class public final Lcom/notriddle/budget/SQLiteLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SQLiteLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCntx:Landroid/content/Context;

.field mColumns:[Ljava/lang/String;

.field mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field mGroupBy:Ljava/lang/String;

.field mHaving:Ljava/lang/String;

.field mLimit:Ljava/lang/String;

.field mNotificationUri:Landroid/net/Uri;

.field mObserver:Landroid/database/ContentObserver;

.field mOrderBy:Ljava/lang/String;

.field mRawQuery:Ljava/lang/String;

.field mResults:Landroid/database/Cursor;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mTable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V
    # InsDal Modified --> local register: (1)#
    .registers 8

    move-object/16 v1, p0
    move-object/16 v2, p1
    move-object/16 v3, p2
    move-object/16 v4, p3

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p3, "rawQuery"    # Ljava/lang/String;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/SQLiteLoader;---><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {v1, v2}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object v2, v1, Lcom/notriddle/budget/SQLiteLoader;->mCntx:Landroid/content/Context;

    .line 66
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, v1, Lcom/notriddle/budget/SQLiteLoader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    iput-object v4, v1, Lcom/notriddle/budget/SQLiteLoader;->mRawQuery:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, v1}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, v1, Lcom/notriddle/budget/SQLiteLoader;->mObserver:Landroid/database/ContentObserver;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;)V
    # InsDal Modified --> local register: (8)#
    .registers 16

    move-object/16 v8, p0
    move-object/16 v9, p1
    move-object/16 v10, p2
    move-object/16 v11, p3
    move-object/16 v12, p4

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;

    .prologue

    const-string v13, "M_InsDal"
    const-string v14, "Lcom/notriddle/budget/SQLiteLoader;---><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;)V"
    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 84
    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/notriddle/budget/SQLiteLoader;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    # InsDal Modified --> local register: (2)#
    .registers 13

    move-object/16 v2, p0
    move-object/16 v3, p1
    move-object/16 v4, p2
    move-object/16 v5, p3
    move-object/16 v6, p4
    move-object/16 v7, p5
    move-object/16 v8, p6
    move-object/16 v9, p7

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "args"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue

    const-string v10, "M_InsDal"
    const-string v11, "Lcom/notriddle/budget/SQLiteLoader;---><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 48
    invoke-direct {v2, v3}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object v3, v2, Lcom/notriddle/budget/SQLiteLoader;->mCntx:Landroid/content/Context;

    .line 50
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, v2, Lcom/notriddle/budget/SQLiteLoader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    iput-object v5, v2, Lcom/notriddle/budget/SQLiteLoader;->mTable:Ljava/lang/String;

    .line 52
    iput-object v6, v2, Lcom/notriddle/budget/SQLiteLoader;->mColumns:[Ljava/lang/String;

    .line 53
    iput-object v7, v2, Lcom/notriddle/budget/SQLiteLoader;->mSelection:Ljava/lang/String;

    .line 54
    iput-object v8, v2, Lcom/notriddle/budget/SQLiteLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 55
    iput-object v1, v2, Lcom/notriddle/budget/SQLiteLoader;->mGroupBy:Ljava/lang/String;

    .line 56
    iput-object v1, v2, Lcom/notriddle/budget/SQLiteLoader;->mHaving:Ljava/lang/String;

    .line 57
    iput-object v9, v2, Lcom/notriddle/budget/SQLiteLoader;->mOrderBy:Ljava/lang/String;

    .line 58
    iput-object v1, v2, Lcom/notriddle/budget/SQLiteLoader;->mLimit:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, v2}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, v2, Lcom/notriddle/budget/SQLiteLoader;->mObserver:Landroid/database/ContentObserver;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;B)V
    # InsDal Modified --> local register: (0)#
    .registers 12

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2
    move-object/16 v3, p3
    move-object/16 v4, p4
    move-object/16 v5, p5
    move-object/16 v6, p6
    move-object/16 v7, p7
    move/16 v8, p8

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "args"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/SQLiteLoader;---><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;B)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct/range {v0 .. v7}, Lcom/notriddle/budget/SQLiteLoader;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private declared-synchronized loadInBackground()Landroid/database/Cursor;
    # InsDal Modified --> local register: (9)#
    .registers 13

    move-object/16 v9, p0


    .prologue

    const-string v10, "M_InsDal"
    const-string v11, "Lcom/notriddle/budget/SQLiteLoader;--->loadInBackground()Landroid/database/Cursor;"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    monitor-enter v9

    :try_start_0
    iget-object v0, v9, Lcom/notriddle/budget/SQLiteLoader;->mResults:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, v9, Lcom/notriddle/budget/SQLiteLoader;->mResults:Landroid/database/Cursor;

    iget-object v1, v9, Lcom/notriddle/budget/SQLiteLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 98
    :cond_0
    iget-object v0, v9, Lcom/notriddle/budget/SQLiteLoader;->mRawQuery:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/notriddle/budget/SQLiteLoader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, v9, Lcom/notriddle/budget/SQLiteLoader;->mTable:Ljava/lang/String;

    iget-object v2, v9, Lcom/notriddle/budget/SQLiteLoader;->mColumns:[Ljava/lang/String;

    iget-object v3, v9, Lcom/notriddle/budget/SQLiteLoader;->mSelection:Ljava/lang/String;

    iget-object v4, v9, Lcom/notriddle/budget/SQLiteLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, v9, Lcom/notriddle/budget/SQLiteLoader;->mGroupBy:Ljava/lang/String;

    iget-object v6, v9, Lcom/notriddle/budget/SQLiteLoader;->mHaving:Ljava/lang/String;

    iget-object v7, v9, Lcom/notriddle/budget/SQLiteLoader;->mOrderBy:Ljava/lang/String;

    iget-object v8, v9, Lcom/notriddle/budget/SQLiteLoader;->mLimit:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    iput-object v0, v9, Lcom/notriddle/budget/SQLiteLoader;->mResults:Landroid/database/Cursor;

    .line 106
    iget-object v0, v9, Lcom/notriddle/budget/SQLiteLoader;->mResults:Landroid/database/Cursor;

    iget-object v1, v9, Lcom/notriddle/budget/SQLiteLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    iget-object v0, v9, Lcom/notriddle/budget/SQLiteLoader;->mNotificationUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, v9, Lcom/notriddle/budget/SQLiteLoader;->mResults:Landroid/database/Cursor;

    iget-object v1, v9, Lcom/notriddle/budget/SQLiteLoader;->mCntx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v9, Lcom/notriddle/budget/SQLiteLoader;->mNotificationUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 110
    :cond_1
    iget-object v0, v9, Lcom/notriddle/budget/SQLiteLoader;->mResults:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v0

    .line 98
    :cond_2
    :try_start_1
    iget-object v0, v9, Lcom/notriddle/budget/SQLiteLoader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, v9, Lcom/notriddle/budget/SQLiteLoader;->mRawQuery:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method


# virtual methods
.method public final declared-synchronized abandon()V
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue
    .line 118
    monitor-enter v2

    :try_start_0
    invoke-super {v2}, Landroid/content/AsyncTaskLoader;->abandon()V


    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/SQLiteLoader;--->abandon()V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, v2, Lcom/notriddle/budget/SQLiteLoader;->mResults:Landroid/database/Cursor;

    iget-object v1, v2, Lcom/notriddle/budget/SQLiteLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/notriddle/budget/SQLiteLoader;->mResults:Landroid/database/Cursor;

    .line 121
    iget-object v0, v2, Lcom/notriddle/budget/SQLiteLoader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit v2

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/notriddle/budget/SQLiteLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized onStartLoading()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/SQLiteLoader;--->onStartLoading()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/notriddle/budget/SQLiteLoader;->forceLoad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit v1

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setNotificationUri(Landroid/net/Uri;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "uri"    # Landroid/net/Uri;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/SQLiteLoader;--->setNotificationUri(Landroid/net/Uri;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object v3, v2, Lcom/notriddle/budget/SQLiteLoader;->mNotificationUri:Landroid/net/Uri;

    .line 89
    iget-object v0, v2, Lcom/notriddle/budget/SQLiteLoader;->mResults:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, v2, Lcom/notriddle/budget/SQLiteLoader;->mResults:Landroid/database/Cursor;

    iget-object v1, v2, Lcom/notriddle/budget/SQLiteLoader;->mCntx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 92
    :cond_0
    return-void
.end method
