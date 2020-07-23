.class public final Lcom/notriddle/budget/TransferFragment;
.super Lcom/notriddle/budget/OkFragment;
.source "TransferFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/notriddle/budget/OkFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field mAmount:Lcom/notriddle/budget/EditMoney;

.field mCurrentCents:Landroid/util/SparseArray;

.field mDescription:Landroid/widget/EditText;

.field mFrom:Landroid/widget/Spinner;

.field mTo:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/TransferFragment;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {v0}, Lcom/notriddle/budget/OkFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/notriddle/budget/TransferFragment;
    # InsDal Modified --> local register: (1)#
    .registers 4



    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/TransferFragment;--->newInstance()Lcom/notriddle/budget/TransferFragment;"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lcom/notriddle/budget/TransferFragment;

    invoke-direct {v0}, Lcom/notriddle/budget/TransferFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/TransferFragment;--->afterTextChanged(Landroid/text/Editable;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v0}, Lcom/notriddle/budget/TransferFragment;->refreshOkButton()V

    .line 100
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    # InsDal Modified --> local register: (0)#
    .registers 8

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2
    move/16 v3, p3
    move/16 v4, p4


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/TransferFragment;--->beforeTextChanged(Ljava/lang/CharSequence;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public final getTitle()Ljava/lang/String;
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/TransferFragment;--->getTitle()Ljava/lang/String;"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v2}, Lcom/notriddle/budget/TransferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isOk()Z
    # InsDal Modified --> local register: (4)#
    .registers 8

    move-object/16 v4, p0


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/TransferFragment;--->isOk()Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, v4, Lcom/notriddle/budget/TransferFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/notriddle/budget/TransferFragment;->mCurrentCents:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/notriddle/budget/TransferFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v0}, Lcom/notriddle/budget/EditMoney;->getCents()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/notriddle/budget/TransferFragment;->mFrom:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, v4, Lcom/notriddle/budget/TransferFragment;->mTo:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ok()V
    # InsDal Modified --> local register: (9)#
    .registers 13

    move-object/16 v9, p0


    .prologue

    const-string v10, "M_InsDal"
    const-string v11, "Lcom/notriddle/budget/TransferFragment;--->ok()V"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v6, v9, Lcom/notriddle/budget/TransferFragment;->mFrom:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v6

    long-to-int v2, v6

    .line 152
    .local v2, "fromId":I
    iget-object v6, v9, Lcom/notriddle/budget/TransferFragment;->mTo:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v6

    long-to-int v3, v6

    .line 153
    .local v3, "toId":I
    iget-object v6, v9, Lcom/notriddle/budget/TransferFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v6}, Lcom/notriddle/budget/EditMoney;->getCents()J

    move-result-wide v4

    .line 154
    .local v4, "transferCents":J
    iget-object v6, v9, Lcom/notriddle/budget/TransferFragment;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "description":Ljava/lang/String;
    new-instance v6, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-virtual {v9}, Lcom/notriddle/budget/TransferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 157
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 159
    const-wide/16 v6, -0x1

    mul-long/2addr v6, v4

    :try_start_0
    invoke-static {v0, v2, v6, v7, v1}, Lcom/notriddle/budget/EnvelopesOpenHelper;->deposite(Landroid/database/sqlite/SQLiteDatabase;IJLjava/lang/String;)V

    .line 160
    invoke-static {v0, v3, v4, v5, v1}, Lcom/notriddle/budget/EnvelopesOpenHelper;->deposite(Landroid/database/sqlite/SQLiteDatabase;IJLjava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 162
    invoke-virtual {v9}, Lcom/notriddle/budget/TransferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 166
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 167
    return-void

    .line 165
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 166
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v6
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {v1, v2}, Lcom/notriddle/budget/OkFragment;->onActivityCreated(Landroid/os/Bundle;)V


    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/TransferFragment;--->onActivityCreated(Landroid/os/Bundle;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, v1, Lcom/notriddle/budget/TransferFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/EditMoney;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 69
    iget-object v0, v1, Lcom/notriddle/budget/TransferFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/EditMoney;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    iget-object v0, v1, Lcom/notriddle/budget/TransferFragment;->mFrom:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 71
    iget-object v0, v1, Lcom/notriddle/budget/TransferFragment;->mTo:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 72
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {v3, v4}, Lcom/notriddle/budget/OkFragment;->onCreate(Landroid/os/Bundle;)V


    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/TransferFragment;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v3}, Lcom/notriddle/budget/TransferFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 64
    return-void
.end method

.method public final onCreateInternalView$469ccb8a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    # InsDal Modified --> local register: (4)#
    .registers 10

    move-object/16 v4, p0
    move-object/16 v5, p1
    move-object/16 v6, p2

    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/TransferFragment;--->onCreateInternalView$469ccb8a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const v1, 0x7f030012

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v5, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "retVal":Landroid/view/View;
    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/notriddle/budget/EditMoney;

    iput-object v1, v4, Lcom/notriddle/budget/TransferFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    .line 78
    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v4, Lcom/notriddle/budget/TransferFragment;->mDescription:Landroid/widget/EditText;

    .line 79
    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v4, Lcom/notriddle/budget/TransferFragment;->mFrom:Landroid/widget/Spinner;

    .line 80
    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v4, Lcom/notriddle/budget/TransferFragment;->mTo:Landroid/widget/Spinner;

    .line 81
    return-object v0
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    # InsDal Modified --> local register: (7)#
    .registers 13

    move-object/16 v7, p0
    move/16 v8, p1
    move-object/16 v9, p2

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

    const-string v10, "M_InsDal"
    const-string v11, "Lcom/notriddle/budget/TransferFragment;--->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Lcom/notriddle/budget/SQLiteLoader;

    invoke-virtual {v7}, Lcom/notriddle/budget/TransferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-virtual {v7}, Lcom/notriddle/budget/TransferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    const-string v3, "envelopes"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cents"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "color"

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/notriddle/budget/SQLiteLoader;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;)V

    .line 119
    .local v0, "retVal":Lcom/notriddle/budget/SQLiteLoader;
    sget-object v1, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/SQLiteLoader;->setNotificationUri(Landroid/net/Uri;)V

    .line 120
    return-object v0
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    # InsDal Modified --> local register: (1)#
    .registers 10

    move-object/16 v1, p0
    move-object/16 v2, p1
    move-object/16 v3, p2
    move/16 v4, p3
    move-wide/16 v5, p4

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/TransferFragment;--->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .local v2, "a":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lcom/notriddle/budget/TransferFragment$1;

    invoke-direct {v0, v1}, Lcom/notriddle/budget/TransferFragment$1;-><init>(Lcom/notriddle/budget/TransferFragment;)V

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method public final bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 6
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/notriddle/budget/TransferFragment;->mCurrentCents:Landroid/util/SparseArray;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/notriddle/budget/TransferFragment;->mCurrentCents:Landroid/util/SparseArray;

    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "cents"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/notriddle/budget/SimpleEnvelopesAdapter;

    invoke-virtual {p0}, Lcom/notriddle/budget/TransferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030009

    invoke-direct {v0, v1, p2, v2}, Lcom/notriddle/budget/SimpleEnvelopesAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iget-object v1, p0, Lcom/notriddle/budget/TransferFragment;->mFrom:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/notriddle/budget/TransferFragment;->mTo:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p0}, Lcom/notriddle/budget/TransferFragment;->refreshOkButton()V

    return-void
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
    const-string v3, "Lcom/notriddle/budget/TransferFragment;--->onLoaderReset(Landroid/content/Loader;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0}, Lcom/notriddle/budget/TransferFragment;->dismiss()V

    .line 144
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/TransferFragment;--->onNothingSelected(Landroid/widget/AdapterView;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v0}, Lcom/notriddle/budget/TransferFragment;->refreshOkButton()V

    .line 110
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    # InsDal Modified --> local register: (0)#
    .registers 8

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2
    move/16 v3, p3
    move/16 v4, p4


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/TransferFragment;--->onTextChanged(Ljava/lang/CharSequence;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method
