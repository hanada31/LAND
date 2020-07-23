.class public final Lcom/notriddle/budget/EditTransactionFragment;
.super Lcom/notriddle/budget/OkFragment;
.source "EditTransactionFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field mAmount:Lcom/notriddle/budget/EditMoney;

.field mDescription:Landroid/widget/EditText;

.field mId:I


# direct methods
.method public constructor <init>()V
    # InsDal Modified --> local register: (0)#
    .registers 4

    move-object/16 v0, p0


    .prologue

    const-string v1, "M_InsDal"
    const-string v2, "Lcom/notriddle/budget/EditTransactionFragment;---><init>()V"
    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {v0}, Lcom/notriddle/budget/OkFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;J)Lcom/notriddle/budget/EditTransactionFragment;
    # InsDal Modified --> local register: (3)#
    .registers 10

    move/16 v3, p0
    move-object/16 v4, p1
    move-wide/16 v5, p2

    .param p0, "id"    # I
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "cents"    # J

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/EditTransactionFragment;--->newInstance(ILjava/lang/String;J)Lcom/notriddle/budget/EditTransactionFragment;"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v1, Lcom/notriddle/budget/EditTransactionFragment;

    invoke-direct {v1}, Lcom/notriddle/budget/EditTransactionFragment;-><init>()V

    .line 54
    .local v1, "retVal":Lcom/notriddle/budget/EditTransactionFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "com.notriddle.budget.log"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string v2, "com.notriddle.budget.log.description"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "com.notriddle.bugdget.log.cents"

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 58
    invoke-virtual {v1, v0}, Lcom/notriddle/budget/EditTransactionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v1
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/EditTransactionFragment;--->afterTextChanged(Landroid/text/Editable;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v0}, Lcom/notriddle/budget/EditTransactionFragment;->refreshOkButton()V

    .line 101
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
    const-string v6, "Lcom/notriddle/budget/EditTransactionFragment;--->beforeTextChanged(Ljava/lang/CharSequence;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public final getTitle()Ljava/lang/String;
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/EditTransactionFragment;--->getTitle()Ljava/lang/String;"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v2}, Lcom/notriddle/budget/EditTransactionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070011

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
    const-string v6, "Lcom/notriddle/budget/EditTransactionFragment;--->isOk()Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, v4, Lcom/notriddle/budget/EditTransactionFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/notriddle/budget/EditTransactionFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v0}, Lcom/notriddle/budget/EditMoney;->getCents()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ok()V
    # InsDal Modified --> local register: (6)#
    .registers 10

    move-object/16 v6, p0


    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/EditTransactionFragment;--->ok()V"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v1, Lcom/notriddle/budget/EnvelopesOpenHelper;

    invoke-virtual {v6}, Lcom/notriddle/budget/EditTransactionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/notriddle/budget/EnvelopesOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/notriddle/budget/EnvelopesOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 110
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 112
    :try_start_0
    const-string v1, "UPDATE log SET cents = ?, description = ? WHERE _id = ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/notriddle/budget/EditTransactionFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v4}, Lcom/notriddle/budget/EditMoney;->getCents()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v6, Lcom/notriddle/budget/EditTransactionFragment;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, v6, Lcom/notriddle/budget/EditTransactionFragment;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {v0}, Lcom/notriddle/budget/EnvelopesOpenHelper;->playLog(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 122
    invoke-virtual {v6}, Lcom/notriddle/budget/EditTransactionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/notriddle/budget/EnvelopesOpenHelper;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    # InsDal Modified --> local register: (4)#
    .registers 9

    move-object/16 v4, p0
    move-object/16 v5, p1

    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {v4, v5}, Lcom/notriddle/budget/OkFragment;->onActivityCreated(Landroid/os/Bundle;)V


    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/EditTransactionFragment;--->onActivityCreated(Landroid/os/Bundle;)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, v4, Lcom/notriddle/budget/EditTransactionFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v1, v4}, Lcom/notriddle/budget/EditMoney;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 66
    iget-object v1, v4, Lcom/notriddle/budget/EditTransactionFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v1, v4}, Lcom/notriddle/budget/EditMoney;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    invoke-virtual {v4}, Lcom/notriddle/budget/EditTransactionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "com.notriddle.budget.log"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcom/notriddle/budget/EditTransactionFragment;->mId:I

    .line 70
    iget-object v1, v4, Lcom/notriddle/budget/EditTransactionFragment;->mDescription:Landroid/widget/EditText;

    const-string v2, "com.notriddle.budget.log.description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, v4, Lcom/notriddle/budget/EditTransactionFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    const-string v2, "com.notriddle.bugdget.log.cents"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/notriddle/budget/EditMoney;->setCents(J)V

    .line 74
    return-void
.end method

.method public final onCreateInternalView$469ccb8a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    # InsDal Modified --> local register: (5)#
    .registers 11

    move-object/16 v5, p0
    move-object/16 v6, p1
    move-object/16 v7, p2

    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/EditTransactionFragment;--->onCreateInternalView$469ccb8a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    .line 78
    const v1, 0x7f030010

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "retVal":Landroid/view/View;
    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/notriddle/budget/EditMoney;

    iput-object v1, v5, Lcom/notriddle/budget/EditTransactionFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    .line 80
    iget-object v1, v5, Lcom/notriddle/budget/EditTransactionFragment;->mAmount:Lcom/notriddle/budget/EditMoney;

    const/16 v2, 0x3002

    invoke-virtual {v1, v2}, Lcom/notriddle/budget/EditMoney;->setInputType(I)V

    .line 81
    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v5, Lcom/notriddle/budget/EditTransactionFragment;->mDescription:Landroid/widget/EditText;

    .line 82
    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 83
    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 84
    return-object v0
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
    const-string v6, "Lcom/notriddle/budget/EditTransactionFragment;--->onTextChanged(Ljava/lang/CharSequence;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method
