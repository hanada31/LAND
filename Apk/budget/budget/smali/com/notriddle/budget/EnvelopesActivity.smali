.class public Lcom/notriddle/budget/EnvelopesActivity;
.super Lcom/notriddle/budget/LockedActivity;
.source "EnvelopesActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/notriddle/budget/DeleteAdapter$Deleter;
.implements Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/notriddle/budget/LockedActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/notriddle/budget/DeleteAdapter$Deleter;",
        "Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;"
    }
.end annotation


# instance fields
.field mAllTransactionsLabel:Landroid/view/View;

.field mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

.field mEnvelopes:Lcom/notriddle/budget/EnvelopesAdapter;

.field mGraph:Landroid/view/ViewGroup;

.field mGraphLabel:Landroid/widget/TextView;

.field mGrid:Landroid/widget/GridView;

.field mPrefs:Landroid/content/SharedPreferences;

.field mScroll:Lcom/notriddle/budget/MonitorScrollView;

.field mTotal:Landroid/widget/TextView;

.field mTotalContainer:Landroid/view/View;

.field mTotalLabel:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/EnvelopesActivity;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {v0}, Lcom/notriddle/budget/LockedActivity;-><init>()V

    return-void
.end method

.method private loadEnvelopesData(Landroid/database/Cursor;)V
    # InsDal Modified --> local register: (9)#
    .registers 14

    move-object/16 v9, p0
    move-object/16 v10, p1

    .param p1, "data"    # Landroid/database/Cursor;

    .prologue

    const-string v11, "M_InsDal"
    const-string v12, "Lcom/notriddle/budget/EnvelopesActivity;--->loadEnvelopesData(Landroid/database/Cursor;)V"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 190
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 191
    .local v2, "l":I
    const-wide/16 v3, 0x0

    .line 192
    .local v3, "total":J
    const/4 v0, 0x0

    .line 193
    .local v0, "hasColor":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v2, :cond_1

    .line 194
    const-string v5, "_id"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 195
    int-to-long v5, v5

    iget-object v7, v9, Lcom/notriddle/budget/EnvelopesActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v7}, Lcom/notriddle/budget/DeleteAdapter;->getDeletedId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 196
    const-string v5, "cents"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 197
    const-string v5, "color"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 198
    if-eqz v5, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 202
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_1
    iget-object v5, v9, Lcom/notriddle/budget/EnvelopesActivity;->mTotal:Landroid/widget/TextView;

    invoke-static {v9, v3, v4}, Lcom/notriddle/budget/EditMoney;->toColoredMoney(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v5, v9, Lcom/notriddle/budget/EnvelopesActivity;->mEnvelopes:Lcom/notriddle/budget/EnvelopesAdapter;

    invoke-virtual {v5, v10}, Lcom/notriddle/budget/EnvelopesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 206
    iget-object v6, v9, Lcom/notriddle/budget/EnvelopesActivity;->mGraph:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 207
    return-void

    .line 206
    :cond_2
    const/16 v5, 0x8

    goto :goto_1
.end method

.method private openEnvelope(I)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move/16 v3, p1

    .param p1, "id"    # I

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/EnvelopesActivity;--->openEnvelope(I)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.notriddle.budget.envelope"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    invoke-virtual {v2, v0}, Lcom/notriddle/budget/EnvelopesActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

.method private setGraphVisible(Z)V
    # InsDal Modified --> local register: (5)#
    .registers 10

    move-object/16 v5, p0
    move/16 v6, p1

    .param p1, "visible"    # Z

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/EnvelopesActivity;--->setGraphVisible(Z)V"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f0a000c

    .line 117
    invoke-virtual {v5}, Lcom/notriddle/budget/EnvelopesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 118
    .local v0, "chart":Landroid/app/Fragment;
    invoke-virtual {v5}, Lcom/notriddle/budget/EnvelopesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 119
    .local v1, "trans":Landroid/app/FragmentTransaction;
    iget-object v3, v5, Lcom/notriddle/budget/EnvelopesActivity;->mGraphLabel:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    const v2, 0x7f07001e

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 120
    if-eqz v6, :cond_3

    .line 121
    if-nez v0, :cond_2

    .line 122
    new-instance v2, Lcom/notriddle/budget/GraphFragment;

    invoke-direct {v2}, Lcom/notriddle/budget/GraphFragment;-><init>()V

    invoke-virtual {v1, v4, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 131
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 132
    iget-object v2, v5, Lcom/notriddle/budget/EnvelopesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "com.notriddle.budget.graphVisible"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void

    .line 119
    :cond_1
    const v2, 0x7f07001d

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 127
    :cond_3
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    # InsDal Modified --> local register: (4)#
    .registers 9

    move-object/16 v4, p0
    move-object/16 v5, p1

    .param p1, "v"    # Landroid/view/View;

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/EnvelopesActivity;--->onClick(Landroid/view/View;)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 108
    iget-object v2, v4, Lcom/notriddle/budget/EnvelopesActivity;->mGraph:Landroid/view/ViewGroup;

    if-ne v5, v2, :cond_2

    .line 109
    iget-object v2, v4, Lcom/notriddle/budget/EnvelopesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "com.notriddle.budget.graphVisible"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {v4, v1}, Lcom/notriddle/budget/EnvelopesActivity;->setGraphVisible(Z)V

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    iget-object v1, v4, Lcom/notriddle/budget/EnvelopesActivity;->mAllTransactionsLabel:Landroid/view/View;

    if-ne v5, v1, :cond_1

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/notriddle/budget/AllTransactionsActivity;

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Lcom/notriddle/budget/EnvelopesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-super {v3, v4}, Lcom/notriddle/budget/LockedActivity;->onCreate(Landroid/os/Bundle;)V


    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/EnvelopesActivity;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const v0, 0x7f03000b

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/EnvelopesActivity;->setContentView(I)V

    .line 68
    invoke-virtual {v3}, Lcom/notriddle/budget/EnvelopesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 70
    const v0, 0x7f0a0008

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/EnvelopesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mGrid:Landroid/widget/GridView;

    .line 71
    invoke-virtual {v3}, Lcom/notriddle/budget/EnvelopesActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 72
    new-instance v0, Lcom/notriddle/budget/EnvelopesAdapter;

    invoke-direct {v0, v3}, Lcom/notriddle/budget/EnvelopesAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mEnvelopes:Lcom/notriddle/budget/EnvelopesAdapter;

    .line 73
    new-instance v0, Lcom/notriddle/budget/DeleteAdapter;

    iget-object v1, v3, Lcom/notriddle/budget/EnvelopesActivity;->mEnvelopes:Lcom/notriddle/budget/EnvelopesAdapter;

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/notriddle/budget/DeleteAdapter;-><init>(Landroid/app/Activity;Lcom/notriddle/budget/DeleteAdapter$Deleter;Landroid/widget/ListAdapter;I)V

    iput-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    .line 74
    iget-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mGrid:Landroid/widget/GridView;

    iget-object v1, v3, Lcom/notriddle/budget/EnvelopesActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    const v0, 0x7f0a0019

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/EnvelopesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mTotalContainer:Landroid/view/View;

    .line 77
    iget-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mTotalContainer:Landroid/view/View;

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mTotal:Landroid/widget/TextView;

    .line 78
    iget-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mTotalContainer:Landroid/view/View;

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mTotalLabel:Landroid/view/View;

    .line 79
    const v0, 0x7f0a000b

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/EnvelopesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/notriddle/budget/MonitorScrollView;

    iput-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mScroll:Lcom/notriddle/budget/MonitorScrollView;

    .line 80
    iget-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mScroll:Lcom/notriddle/budget/MonitorScrollView;

    invoke-virtual {v0, v3}, Lcom/notriddle/budget/MonitorScrollView;->setOnScrollListener(Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;)V

    .line 81
    const v0, 0x7f0a000d

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/EnvelopesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mGraphLabel:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0a000c

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/EnvelopesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mGraph:Landroid/view/ViewGroup;

    .line 83
    iget-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mGraph:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "com.notriddle.budget.graphVisible"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {v3, v0}, Lcom/notriddle/budget/EnvelopesActivity;->setGraphVisible(Z)V

    .line 85
    const v0, 0x7f0a000e

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/EnvelopesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mAllTransactionsLabel:Landroid/view/View;

    .line 86
    iget-object v0, v3, Lcom/notriddle/budget/EnvelopesActivity;->mAllTransactionsLabel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
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
    const-string v13, "Lcom/notriddle/budget/EnvelopesActivity;--->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;"
    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 170
    new-instance v0, Lcom/notriddle/budget/SQLiteLoader;

    new-instance v2, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-direct {v2, v9}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    const-string v3, "envelopes"

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v8

    const/4 v1, 0x1

    const-string v6, "cents"

    aput-object v6, v4, v1

    const/4 v1, 0x2

    const-string v6, "color"

    aput-object v6, v4, v1

    const/4 v1, 0x3

    const-string v6, "_id"

    aput-object v6, v4, v1

    const-string v7, "name"

    move-object v1, v9

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/notriddle/budget/SQLiteLoader;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;B)V

    .line 181
    .local v0, "retVal":Lcom/notriddle/budget/SQLiteLoader;
    sget-object v1, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/SQLiteLoader;->setNotificationUri(Landroid/net/Uri;)V

    .line 182
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
    const-string v5, "Lcom/notriddle/budget/EnvelopesActivity;--->onCreateOptionsMenu(Landroid/view/Menu;)Z"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v2}, Lcom/notriddle/budget/EnvelopesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public final onDelete$1349ef()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/EnvelopesActivity;--->onDelete$1349ef()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, v1, Lcom/notriddle/budget/EnvelopesActivity;->mEnvelopes:Lcom/notriddle/budget/EnvelopesAdapter;

    invoke-virtual {v0}, Lcom/notriddle/budget/EnvelopesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/notriddle/budget/EnvelopesActivity;->loadEnvelopesData(Landroid/database/Cursor;)V

    .line 142
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    # InsDal Modified --> local register: (1)#
    .registers 10

    move-object/16 v1, p0
    move-object/16 v2, p1
    move-object/16 v3, p2
    move/16 v4, p3
    move-wide/16 v5, p4

    .param p4, "id"    # J

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/EnvelopesActivity;--->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    long-to-int v0, v5

    invoke-direct {v1, v0}, Lcom/notriddle/budget/EnvelopesActivity;->openEnvelope(I)V

    .line 215
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/notriddle/budget/EnvelopesActivity;->loadEnvelopesData(Landroid/database/Cursor;)V

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
    const-string v5, "Lcom/notriddle/budget/EnvelopesActivity;--->onLoaderReset(Landroid/content/Loader;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, v2, Lcom/notriddle/budget/EnvelopesActivity;->mEnvelopes:Lcom/notriddle/budget/EnvelopesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/EnvelopesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 211
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
    const-string v12, "Lcom/notriddle/budget/EnvelopesActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 229
    invoke-interface {v10}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 267
    invoke-super {v9, v10}, Lcom/notriddle/budget/LockedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_0
    return v5

    .line 231
    :pswitch_0
    new-instance v6, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-direct {v6, v9}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 233
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "name"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v6, "color"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v6, "envelopes"

    invoke-virtual {v0, v6, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 237
    .local v2, "id":J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 238
    invoke-virtual {v9}, Lcom/notriddle/budget/EnvelopesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 239
    long-to-int v6, v2

    invoke-direct {v9, v6}, Lcom/notriddle/budget/EnvelopesActivity;->openEnvelope(I)V

    goto :goto_0

    .line 242
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "id":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :pswitch_1
    invoke-static {}, Lcom/notriddle/budget/TransferFragment;->newInstance()Lcom/notriddle/budget/TransferFragment;

    move-result-object v6

    .line 243
    invoke-virtual {v9}, Lcom/notriddle/budget/EnvelopesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "dialog"

    invoke-virtual {v6, v7, v8}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/notriddle/budget/PaycheckActivity;

    invoke-direct {v1, v9, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v9, v1}, Lcom/notriddle/budget/EnvelopesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 258
    .end local v1    # "i":Landroid/content/Intent;
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/notriddle/budget/AboutActivity;

    invoke-direct {v1, v9, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .restart local v1    # "i":Landroid/content/Intent;
    invoke-virtual {v9, v1}, Lcom/notriddle/budget/EnvelopesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 262
    .end local v1    # "i":Landroid/content/Intent;
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/notriddle/budget/SettingsActivity;

    invoke-direct {v1, v9, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .restart local v1    # "i":Landroid/content/Intent;
    invoke-virtual {v9, v1}, Lcom/notriddle/budget/EnvelopesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0021
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue
    .line 103
    invoke-super {v1}, Lcom/notriddle/budget/LockedActivity;->onPause()V


    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/EnvelopesActivity;--->onPause()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, v1, Lcom/notriddle/budget/EnvelopesActivity;->mDeleteAdapter:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v0}, Lcom/notriddle/budget/DeleteAdapter;->performDelete()Z

    .line 105
    return-void
.end method

.method public onResume()V
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue
    .line 90
    invoke-super {v2}, Lcom/notriddle/budget/LockedActivity;->onResume()V


    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/EnvelopesActivity;--->onResume()V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Lcom/notriddle/budget/EnvelopesActivity$1;

    invoke-direct {v0, v2}, Lcom/notriddle/budget/EnvelopesActivity$1;-><init>(Lcom/notriddle/budget/EnvelopesActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/EnvelopesActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
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
    const-string v5, "Lcom/notriddle/budget/EnvelopesActivity;--->onScrollChanged$255f295(I)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, v2, Lcom/notriddle/budget/EnvelopesActivity;->mTotal:Landroid/widget/TextView;

    mul-int/lit8 v1, v3, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 166
    iget-object v0, v2, Lcom/notriddle/budget/EnvelopesActivity;->mTotalLabel:Landroid/view/View;

    mul-int/lit8 v1, v3, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 167
    return-void
.end method

.method public final performDelete(J)V
    # InsDal Modified --> local register: (6)#
    .registers 12

    move-object/16 v6, p0
    move-wide/16 v7, p1

    .param p1, "id"    # J

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/EnvelopesActivity;--->performDelete(J)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    long-to-int v0, v7

    new-instance v1, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-direct {v1, v6}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "DELETE FROM envelopes WHERE _id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "DELETE FROM log WHERE envelope = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v6}, Lcom/notriddle/budget/EnvelopesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
.end method

.method public final undoDelete$1349ef()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/EnvelopesActivity;--->undoDelete$1349ef()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, v1, Lcom/notriddle/budget/EnvelopesActivity;->mEnvelopes:Lcom/notriddle/budget/EnvelopesAdapter;

    invoke-virtual {v0}, Lcom/notriddle/budget/EnvelopesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/notriddle/budget/EnvelopesActivity;->loadEnvelopesData(Landroid/database/Cursor;)V

    .line 145
    return-void
.end method
