.class public final Lcom/notriddle/budget/ExportFragment;
.super Lcom/notriddle/budget/FileCreatorFragment;
.source "ExportFragment.java"


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/ExportFragment;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-direct {v0}, Lcom/notriddle/budget/FileCreatorFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/notriddle/budget/ExportFragment;
    # InsDal Modified --> local register: (1)#
    .registers 4



    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/ExportFragment;--->newInstance()Lcom/notriddle/budget/ExportFragment;"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Lcom/notriddle/budget/ExportFragment;

    invoke-direct {v0}, Lcom/notriddle/budget/ExportFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final getButtonTitle()I
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/ExportFragment;--->getButtonTitle()I"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const v0, 0x7f070021

    return v0
.end method

.method protected final getDialogTitle()I
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/ExportFragment;--->getDialogTitle()I"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const v0, 0x7f070021

    return v0
.end method

.method protected final perform(Landroid/net/Uri;)V
    # InsDal Modified --> local register: (12)#
    .registers 17

    move-object/16 v12, p0
    move-object/16 v13, p1

    .param p1, "dest"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue

    const-string v14, "M_InsDal"
    const-string v15, "Lcom/notriddle/budget/ExportFragment;--->perform(Landroid/net/Uri;)V"
    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 42
    new-instance v3, Ljava/io/FileWriter;

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 43
    .local v3, "f":Ljava/io/FileWriter;
    new-instance v0, Lcom/notriddle/budget/csv/CSVWriter;

    invoke-direct {v0, v3}, Lcom/notriddle/budget/csv/CSVWriter;-><init>(Ljava/io/Writer;)V

    .line 44
    .local v0, "c":Lcom/notriddle/budget/csv/CSVWriter;
    new-instance v6, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-virtual {v12}, Lcom/notriddle/budget/ExportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 46
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT l.time, e.name, l.cents, l.description FROM log AS l LEFT JOIN envelopes AS e ON (l.envelope = e._id)"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 47
    .local v1, "csr":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 48
    .local v5, "l":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-eq v4, v5, :cond_0

    .line 50
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v0, v6}, Lcom/notriddle/budget/csv/CSVWriter;->writeNext([Ljava/lang/String;)V

    .line 54
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 49
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 57
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 58
    return-void
.end method
