.class public Lcom/notriddle/budget/AllTransactionsActivity;
.super Landroid/app/Activity;
.source "AllTransactionsActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/notriddle/budget/LogAdapter;

.field mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/AllTransactionsActivity;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move-object/16 v4, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {v3, v4}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V


    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/AllTransactionsActivity;--->onCreate(Landroid/os/Bundle;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const v0, 0x7f030002

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/AllTransactionsActivity;->setContentView(I)V

    .line 44
    const v0, 0x102000a

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/AllTransactionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v3, Lcom/notriddle/budget/AllTransactionsActivity;->mListView:Landroid/widget/ListView;

    .line 45
    new-instance v0, Lcom/notriddle/budget/LogAdapter;

    invoke-direct {v0, v3}, Lcom/notriddle/budget/LogAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/notriddle/budget/AllTransactionsActivity;->mAdapter:Lcom/notriddle/budget/LogAdapter;

    .line 46
    iget-object v0, v3, Lcom/notriddle/budget/AllTransactionsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, v3, Lcom/notriddle/budget/AllTransactionsActivity;->mAdapter:Lcom/notriddle/budget/LogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object v0, v3, Lcom/notriddle/budget/AllTransactionsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    invoke-virtual {v3}, Lcom/notriddle/budget/AllTransactionsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 49
    invoke-virtual {v3}, Lcom/notriddle/budget/AllTransactionsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    # InsDal Modified --> local register: (5)#
    .registers 11

    move-object/16 v5, p0
    move/16 v6, p1
    move-object/16 v7, p2

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

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/AllTransactionsActivity;--->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x134fd9000L

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/notriddle/budget/SQLiteLoader;

    new-instance v1, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-direct {v1, v5}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    const-string v2, "SELECT e.name AS envelope, e.color AS color, l.description AS description, l.cents AS cents, l.time AS time, l._id AS _id, e._id AS envelope_id FROM log AS l LEFT JOIN envelopes AS e ON (e._id = l.envelope) ORDER BY l.time * -1"

    invoke-direct {v0, v5, v1, v2}, Lcom/notriddle/budget/SQLiteLoader;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V

    .line 59
    .local v0, "retVal":Lcom/notriddle/budget/SQLiteLoader;
    sget-object v1, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/SQLiteLoader;->setNotificationUri(Landroid/net/Uri;)V

    .line 60
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    # InsDal Modified --> local register: (5)#
    .registers 14

    move-object/16 v5, p0
    move-object/16 v6, p1
    move-object/16 v7, p2
    move/16 v8, p3
    move-wide/16 v9, p4

    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue

    const-string v11, "M_InsDal"
    const-string v12, "Lcom/notriddle/budget/AllTransactionsActivity;--->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, v5, Lcom/notriddle/budget/AllTransactionsActivity;->mAdapter:Lcom/notriddle/budget/LogAdapter;

    invoke-virtual {v3}, Lcom/notriddle/budget/LogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 84
    .local v0, "csr":Landroid/database/Cursor;
    invoke-interface {v0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 85
    const-string v3, "envelope_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 86
    .local v1, "envelopeId":I
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/notriddle/budget/EnvelopeDetailsActivity;

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "com.notriddle.budget.envelope"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v3, "com.notriddle.budget.transaction"

    long-to-int v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-virtual {v5, v2}, Lcom/notriddle/budget/AllTransactionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    iget-object v0, p0, Lcom/notriddle/budget/AllTransactionsActivity;->mAdapter:Lcom/notriddle/budget/LogAdapter;

    invoke-virtual {v0, p2}, Lcom/notriddle/budget/LogAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
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
    const-string v3, "Lcom/notriddle/budget/AllTransactionsActivity;--->onLoaderReset(Landroid/content/Loader;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/AllTransactionsActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 79
    invoke-super {v2, v3}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 74
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/notriddle/budget/EnvelopesActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {v2, v0}, Lcom/notriddle/budget/AllTransactionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    const/4 v1, 0x1

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
