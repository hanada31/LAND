.class public Lcom/notriddle/budget/PaycheckActivity;
.super Lcom/notriddle/budget/LockedActivity;
.source "PaycheckActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/notriddle/budget/DeleteView$OnDeleteListener;
.implements Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;
.implements Lcom/notriddle/budget/PaycheckEnvelopesAdapter$DepositesChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/notriddle/budget/LockedActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/notriddle/budget/DeleteView$OnDeleteListener;",
        "Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;",
        "Lcom/notriddle/budget/PaycheckEnvelopesAdapter$DepositesChangeListener;"
    }
.end annotation


# instance fields
.field mDescription:Landroid/widget/EditText;

.field mEnvelopes:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

.field mGrid:Landroid/widget/GridView;

.field mIncome:Lcom/notriddle/budget/EditMoney;

.field mIncomeValue:J

.field mPrefs:Landroid/content/SharedPreferences;

.field mProgress:Landroid/widget/ProgressBar;

.field mScroll:Lcom/notriddle/budget/MonitorScrollView;

.field mSpendingCard:Landroid/view/View;

.field mSpent:Landroid/widget/TextView;

.field mSpentValue:J


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/PaycheckActivity;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {v0}, Lcom/notriddle/budget/LockedActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/notriddle/budget/PaycheckActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/notriddle/budget/PaycheckActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/notriddle/budget/PaycheckActivity;->recalcProgress()V

    return-void
.end method

.method private depositePaycheck()V
    # InsDal Modified --> local register: (14)#
    .registers 18

    move-object/16 v14, p0


    .prologue

    const-string v15, "M_InsDal"
    const-string v16, "Lcom/notriddle/budget/PaycheckActivity;--->depositePaycheck()V"
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v9, v14, Lcom/notriddle/budget/PaycheckActivity;->mEnvelopes:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    invoke-virtual {v9}, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->getDeposites()Landroid/util/SparseArray;

    move-result-object v3

    .line 215
    .local v3, "deposites":Landroid/util/SparseArray;
    iget-object v9, v14, Lcom/notriddle/budget/PaycheckActivity;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "description":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 217
    .local v7, "l":I
    new-instance v9, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-direct {v9, v14}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 218
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 220
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v8, "values":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-eq v5, v7, :cond_0

    .line 222
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 223
    .local v6, "id":I
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 224
    .local v0, "centsDeposited":J
    invoke-static {v2, v6, v0, v1, v4}, Lcom/notriddle/budget/EnvelopesOpenHelper;->deposite(Landroid/database/sqlite/SQLiteDatabase;IJLjava/lang/String;)V

    .line 225
    const-string v9, "lastPaycheckCents"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    const-string v9, "envelopes"

    const-string v10, "_id = ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v2, v9, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "centsDeposited":J
    .end local v6    # "id":I
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 231
    invoke-virtual {v14}, Lcom/notriddle/budget/PaycheckActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 234
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 235
    return-void

    .line 233
    .end local v5    # "i":I
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 234
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v9
.end method

.method private recalcProgress()V
    # InsDal Modified --> local register: (13)#
    .registers 17

    move-object/16 v13, p0


    .prologue

    const-string v14, "M_InsDal"
    const-string v15, "Lcom/notriddle/budget/PaycheckActivity;--->recalcProgress()V"
    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const-wide/16 v11, 0x0

    .line 183
    iget-object v5, v13, Lcom/notriddle/budget/PaycheckActivity;->mIncome:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v5}, Lcom/notriddle/budget/EditMoney;->getCents()J

    move-result-wide v7

    iput-wide v7, v13, Lcom/notriddle/budget/PaycheckActivity;->mIncomeValue:J

    .line 184
    iget-object v5, v13, Lcom/notriddle/budget/PaycheckActivity;->mEnvelopes:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    invoke-virtual {v5}, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->getDeposites()Landroid/util/SparseArray;

    move-result-object v0

    .line 185
    .local v0, "deposites":Landroid/util/SparseArray;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 186
    .local v2, "l":I
    iput-wide v11, v13, Lcom/notriddle/budget/PaycheckActivity;->mSpentValue:J

    .line 187
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v2, :cond_0

    .line 188
    iget-wide v7, v13, Lcom/notriddle/budget/PaycheckActivity;->mSpentValue:J

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v13, Lcom/notriddle/budget/PaycheckActivity;->mSpentValue:J

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_0
    iget-wide v7, v13, Lcom/notriddle/budget/PaycheckActivity;->mIncomeValue:J

    cmp-long v5, v7, v11

    if-eqz v5, :cond_2

    iget-wide v7, v13, Lcom/notriddle/budget/PaycheckActivity;->mSpentValue:J

    cmp-long v5, v7, v11

    if-eqz v5, :cond_2

    .line 191
    iget-wide v7, v13, Lcom/notriddle/budget/PaycheckActivity;->mSpentValue:J

    long-to-double v7, v7

    iget-wide v9, v13, Lcom/notriddle/budget/PaycheckActivity;->mIncomeValue:J

    long-to-double v9, v9

    div-double v3, v7, v9

    .line 192
    .local v3, "progress":D
    iget-object v5, v13, Lcom/notriddle/budget/PaycheckActivity;->mProgress:Landroid/widget/ProgressBar;

    const-wide v7, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v7, v3

    double-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 193
    iget-object v7, v13, Lcom/notriddle/budget/PaycheckActivity;->mProgress:Landroid/widget/ProgressBar;

    iget-wide v8, v13, Lcom/notriddle/budget/PaycheckActivity;->mIncomeValue:J

    iget-wide v10, v13, Lcom/notriddle/budget/PaycheckActivity;->mSpentValue:J

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v7, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 197
    .end local v3    # "progress":D
    :goto_2
    iget-object v5, v13, Lcom/notriddle/budget/PaycheckActivity;->mProgress:Landroid/widget/ProgressBar;

    const v6, 0x186a0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 198
    iget-object v5, v13, Lcom/notriddle/budget/PaycheckActivity;->mSpent:Landroid/widget/TextView;

    iget-wide v6, v13, Lcom/notriddle/budget/PaycheckActivity;->mSpentValue:J

    invoke-static {v6, v7}, Lcom/notriddle/budget/EditMoney;->toMoney(J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v13}, Lcom/notriddle/budget/PaycheckActivity;->invalidateOptionsMenu()V

    .line 200
    return-void

    .restart local v3    # "progress":D
    :cond_1
    move v5, v6

    .line 193
    goto :goto_1

    .line 195
    .end local v3    # "progress":D
    :cond_2
    iget-object v5, v13, Lcom/notriddle/budget/PaycheckActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/PaycheckActivity;--->afterTextChanged(Landroid/text/Editable;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
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
    const-string v6, "Lcom/notriddle/budget/PaycheckActivity;--->beforeTextChanged(Ljava/lang/CharSequence;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .param p1, "v"    # Landroid/view/View;

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/PaycheckActivity;--->onClick(Landroid/view/View;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    check-cast v1, Lcom/notriddle/budget/DeleteView;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/notriddle/budget/DeleteView;->performDelete()V

    .line 113
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (10)#
    .registers 15

    move-object/16 v10, p0
    move-object/16 v11, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 69
    invoke-super {v10, v11}, Lcom/notriddle/budget/LockedActivity;->onCreate(Landroid/os/Bundle;)V


    const-string v12, "M_InsDal"
    const-string v13, "Lcom/notriddle/budget/PaycheckActivity;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const v3, 0x7f03000e

    invoke-virtual {v10, v3}, Lcom/notriddle/budget/PaycheckActivity;->setContentView(I)V

    .line 71
    invoke-virtual {v10}, Lcom/notriddle/budget/PaycheckActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 73
    const v3, 0x7f0a0011

    invoke-virtual {v10, v3}, Lcom/notriddle/budget/PaycheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/notriddle/budget/DeleteView;

    .line 74
    .local v2, "docs":Lcom/notriddle/budget/DeleteView;
    iget-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "com.notriddle.budget.PaycheckActivity.docs.show"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v2, v10}, Lcom/notriddle/budget/DeleteView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v2, v10}, Lcom/notriddle/budget/DeleteView;->setOnDeleteListener(Lcom/notriddle/budget/DeleteView$OnDeleteListener;)V

    .line 81
    :goto_0
    const v3, 0x7f0a0008

    invoke-virtual {v10, v3}, Lcom/notriddle/budget/PaycheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mGrid:Landroid/widget/GridView;

    .line 82
    const v3, 0x7f0a0014

    invoke-virtual {v10, v3}, Lcom/notriddle/budget/PaycheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 83
    const v3, 0x7f0a0013

    invoke-virtual {v10, v3}, Lcom/notriddle/budget/PaycheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mSpent:Landroid/widget/TextView;

    .line 84
    if-eqz v11, :cond_1

    const-string v3, "deposites"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 85
    .local v1, "deposites":Landroid/os/Bundle;
    :goto_1
    new-instance v7, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/notriddle/budget/Util;->unpackSparseLongArray(Landroid/os/Bundle;)Landroid/util/SparseArray;

    move-result-object v3

    :goto_2
    invoke-direct {v7, v10, v3}, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;-><init>(Landroid/content/Context;Landroid/util/SparseArray;)V

    iput-object v7, v10, Lcom/notriddle/budget/PaycheckActivity;->mEnvelopes:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    .line 92
    iget-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mEnvelopes:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    invoke-virtual {v3, v10}, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->setDepositesChangeListener(Lcom/notriddle/budget/PaycheckEnvelopesAdapter$DepositesChangeListener;)V

    .line 93
    iget-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mGrid:Landroid/widget/GridView;

    iget-object v7, v10, Lcom/notriddle/budget/PaycheckActivity;->mEnvelopes:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    invoke-virtual {v3, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    invoke-virtual {v10}, Lcom/notriddle/budget/PaycheckActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v9, v4, v10}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 95
    invoke-virtual {v10}, Lcom/notriddle/budget/PaycheckActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 96
    .local v0, "ab":Landroid/app/ActionBar;
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 97
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 98
    const v3, 0x7f03000f

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 99
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/notriddle/budget/EditMoney;

    iput-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mIncome:Lcom/notriddle/budget/EditMoney;

    .line 101
    iget-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mIncome:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v3, v10}, Lcom/notriddle/budget/EditMoney;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    if-eqz v11, :cond_3

    const-string v3, "income"

    invoke-virtual {v11, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    :goto_3
    iput-wide v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mIncomeValue:J

    .line 103
    iget-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mIncome:Lcom/notriddle/budget/EditMoney;

    iget-wide v4, v10, Lcom/notriddle/budget/PaycheckActivity;->mIncomeValue:J

    invoke-virtual {v3, v4, v5}, Lcom/notriddle/budget/EditMoney;->setCents(J)V

    .line 104
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mDescription:Landroid/widget/EditText;

    .line 105
    invoke-direct {v10}, Lcom/notriddle/budget/PaycheckActivity;->recalcProgress()V

    .line 106
    const v3, 0x7f0a000b

    invoke-virtual {v10, v3}, Lcom/notriddle/budget/PaycheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/notriddle/budget/MonitorScrollView;

    iput-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mScroll:Lcom/notriddle/budget/MonitorScrollView;

    .line 107
    const v3, 0x7f0a0012

    invoke-virtual {v10, v3}, Lcom/notriddle/budget/PaycheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mSpendingCard:Landroid/view/View;

    .line 108
    iget-object v3, v10, Lcom/notriddle/budget/PaycheckActivity;->mScroll:Lcom/notriddle/budget/MonitorScrollView;

    invoke-virtual {v3, v10}, Lcom/notriddle/budget/MonitorScrollView;->setOnScrollListener(Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;)V

    .line 109
    return-void

    .line 79
    .end local v0    # "ab":Landroid/app/ActionBar;
    .end local v1    # "deposites":Landroid/os/Bundle;
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/notriddle/budget/DeleteView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    move-object v1, v4

    .line 84
    goto/16 :goto_1

    .line 85
    .restart local v1    # "deposites":Landroid/os/Bundle;
    :cond_2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    goto/16 :goto_2

    .restart local v0    # "ab":Landroid/app/ActionBar;
    :cond_3
    move-wide v3, v5

    .line 102
    goto :goto_3
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    # InsDal Modified --> local register: (9)#
    .registers 15

    move-object/16 v9, p0
    move/16 v10, p1
    move-object/16 v11, p2

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

    const-string v12, "M_InsDal"
    const-string v13, "Lcom/notriddle/budget/PaycheckActivity;--->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;"
    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 136
    new-instance v0, Lcom/notriddle/budget/SQLiteLoader;

    new-instance v2, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-direct {v2, v9}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    const-string v3, "envelopes"

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v8

    const/4 v1, 0x1

    const-string v6, "lastPaycheckCents"

    aput-object v6, v4, v1

    const/4 v1, 0x2

    const-string v6, "_id"

    aput-object v6, v4, v1

    const/4 v1, 0x3

    const-string v6, "color"

    aput-object v6, v4, v1

    const-string v7, "name"

    move-object v1, v9

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/notriddle/budget/SQLiteLoader;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;B)V

    .line 147
    .local v0, "retVal":Lcom/notriddle/budget/SQLiteLoader;
    sget-object v1, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/SQLiteLoader;->setNotificationUri(Landroid/net/Uri;)V

    .line 148
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "menu"    # Landroid/view/Menu;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/PaycheckActivity;--->onCreateOptionsMenu(Landroid/view/Menu;)Z"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v2}, Lcom/notriddle/budget/PaycheckActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public final onDelete(Lcom/notriddle/budget/DeleteView;)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "v"    # Lcom/notriddle/budget/DeleteView;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/PaycheckActivity;--->onDelete(Lcom/notriddle/budget/DeleteView;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, v3, Lcom/notriddle/budget/PaycheckActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.notriddle.budget.PaycheckActivity.docs.show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/notriddle/budget/DeleteView;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public final onDepositesChange$555aa968()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/PaycheckActivity;--->onDepositesChange$555aa968()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {v0}, Lcom/notriddle/budget/PaycheckActivity;->recalcProgress()V

    .line 153
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 4
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    iget-object v0, p0, Lcom/notriddle/budget/PaycheckActivity;->mEnvelopes:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    invoke-virtual {v0, p2}, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/notriddle/budget/PaycheckActivity;->mIncome:Lcom/notriddle/budget/EditMoney;

    new-instance v1, Lcom/notriddle/budget/PaycheckActivity$1;

    invoke-direct {v1, p0}, Lcom/notriddle/budget/PaycheckActivity$1;-><init>(Lcom/notriddle/budget/PaycheckActivity;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/notriddle/budget/EditMoney;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

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

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/PaycheckActivity;--->onLoaderReset(Landroid/content/Loader;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, v2, Lcom/notriddle/budget/PaycheckActivity;->mEnvelopes:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 166
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/PaycheckActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 239
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 250
    invoke-super {v3, v4}, Lcom/notriddle/budget/LockedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 241
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/notriddle/budget/EnvelopesActivity;

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    invoke-virtual {v3, v0}, Lcom/notriddle/budget/PaycheckActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    .end local v0    # "i":Landroid/content/Intent;
    :sswitch_1
    invoke-direct {v3}, Lcom/notriddle/budget/PaycheckActivity;->depositePaycheck()V

    .line 247
    invoke-virtual {v3}, Lcom/notriddle/budget/PaycheckActivity;->finish()V

    goto :goto_0

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a0026 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    # InsDal Modified --> local register: (7)#
    .registers 12

    move-object/16 v7, p0
    move-object/16 v8, p1

    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 208
    invoke-super {v7, v8}, Lcom/notriddle/budget/LockedActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z


    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/PaycheckActivity;--->onPrepareOptionsMenu(Landroid/view/Menu;)Z"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const v0, 0x7f0a0026

    invoke-interface {v8, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-wide v3, v7, Lcom/notriddle/budget/PaycheckActivity;->mIncomeValue:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    iget-wide v3, v7, Lcom/notriddle/budget/PaycheckActivity;->mIncomeValue:J

    iget-wide v5, v7, Lcom/notriddle/budget/PaycheckActivity;->mSpentValue:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 210
    return v1

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (8)#
    .registers 13

    move-object/16 v8, p0
    move-object/16 v9, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {v8, v9}, Lcom/notriddle/budget/LockedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V


    const-string v10, "M_InsDal"
    const-string v11, "Lcom/notriddle/budget/PaycheckActivity;--->onSaveInstanceState(Landroid/os/Bundle;)V"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v2, "deposites"

    iget-object v0, v8, Lcom/notriddle/budget/PaycheckActivity;->mEnvelopes:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    invoke-virtual {v0}, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->getDeposites()Landroid/util/SparseArray;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    const-string v0, "income"

    iget-wide v1, v8, Lcom/notriddle/budget/PaycheckActivity;->mIncomeValue:J

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 133
    return-void
.end method

.method public final onScrollChanged$255f295(I)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move/16 v3, p1

    .param p1, "pos"    # I

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/PaycheckActivity;--->onScrollChanged$255f295(I)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, v2, Lcom/notriddle/budget/PaycheckActivity;->mSpendingCard:Landroid/view/View;

    mul-int/lit8 v1, v3, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 124
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    # InsDal Modified --> local register: (0)#
    .registers 8

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2
    move/16 v3, p3
    move/16 v4, p4


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/PaycheckActivity;--->onTextChanged(Ljava/lang/CharSequence;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {v0}, Lcom/notriddle/budget/PaycheckActivity;->recalcProgress()V

    .line 180
    return-void
.end method
