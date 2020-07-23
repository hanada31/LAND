.class public final Lcom/notriddle/budget/PaycheckEnvelopesAdapter;
.super Landroid/widget/CursorAdapter;
.source "PaycheckEnvelopesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;,
        Lcom/notriddle/budget/PaycheckEnvelopesAdapter$DepositesChangeListener;
    }
.end annotation


# instance fields
.field mDeposites:Landroid/util/SparseArray;

.field mInflater:Landroid/view/LayoutInflater;

.field mListener:Lcom/notriddle/budget/PaycheckEnvelopesAdapter$DepositesChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;)V
    # InsDal Modified --> local register: (2)#
    .registers 8

    move-object/16 v2, p0
    move-object/16 v3, p1
    move-object/16 v4, p2

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "deposites"    # Landroid/util/SparseArray;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter;---><init>(Landroid/content/Context;Landroid/util/SparseArray;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 45
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, v2, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object v4, v2, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->mDeposites:Landroid/util/SparseArray;

    .line 47
    return-void
.end method

.method private fillCardContents(Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;Landroid/database/Cursor;)V
    # InsDal Modified --> local register: (8)#
    .registers 14

    move-object/16 v8, p0
    move-object/16 v9, p1
    move-object/16 v10, p2

    .param p1, "contents"    # Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;
    .param p2, "csr"    # Landroid/database/Cursor;

    .prologue

    const-string v11, "M_InsDal"
    const-string v12, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter;--->fillCardContents(Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;Landroid/database/Cursor;)V"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 118
    iget-object v4, v9, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;->name:Landroid/widget/TextView;

    const-string v5, "name"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const-string v4, "_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 120
    .local v3, "id":I
    iget-object v4, v8, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->mDeposites:Landroid/util/SparseArray;

    const-string v5, "lastPaycheckCents"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 124
    .local v0, "cents":J
    const-string v4, "PaycheckEnvelopesAdapter.fillCardContents"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cents="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v4, v9, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;->value:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v4, v7}, Lcom/notriddle/budget/EditMoney;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v4, v9, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;->value:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v4, v0, v1}, Lcom/notriddle/budget/EditMoney;->setCents(J)V

    .line 128
    iget-object v4, v9, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;->value:Lcom/notriddle/budget/EditMoney;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/notriddle/budget/EditMoney;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v4, v8, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->mDeposites:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    const-string v4, "color"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 131
    .local v2, "color":I
    if-nez v2, :cond_0

    .line 132
    iget-object v4, v9, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;->name:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v4, v9, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;->name:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter;--->areAllItemsEnabled()Z"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    # InsDal Modified --> local register: (1)#
    .registers 8

    move-object/16 v1, p0
    move-object/16 v2, p1
    move-object/16 v3, p2
    move-object/16 v4, p3

    .param p1, "v"    # Landroid/view/View;
    .param p3, "csr"    # Landroid/database/Cursor;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter;--->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;

    .line 82
    .local v0, "contents":Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;
    invoke-direct {v1, v0, v4}, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->fillCardContents(Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;Landroid/database/Cursor;)V

    .line 83
    return-void
.end method

.method public final getDeposites()Landroid/util/SparseArray;
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter;--->getDeposites()Landroid/util/SparseArray;"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, v1, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->mDeposites:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final isEnabled(I)Z
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move/16 v2, p1


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter;--->isEnabled(I)Z"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    # InsDal Modified --> local register: (6)#
    .registers 13

    move-object/16 v6, p0
    move-object/16 v7, p1
    move-object/16 v8, p2
    move-object/16 v9, p3

    .param p2, "csr"    # Landroid/database/Cursor;
    .param p3, "par"    # Landroid/view/ViewGroup;

    .prologue

    const-string v10, "M_InsDal"
    const-string v11, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter;--->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v3, v6, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, "retVal":Landroid/view/View;
    new-instance v0, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;

    invoke-direct {v0, v1}, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;-><init>(Landroid/view/View;)V

    .line 88
    .local v0, "contents":Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;
    iget-object v2, v0, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;->value:Lcom/notriddle/budget/EditMoney;

    .line 89
    .local v2, "value":Lcom/notriddle/budget/EditMoney;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    invoke-direct {v6, v0, v8}, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->fillCardContents(Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;Landroid/database/Cursor;)V

    .line 91
    new-instance v3, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;

    invoke-direct {v3, v6, v2}, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;-><init>(Lcom/notriddle/budget/PaycheckEnvelopesAdapter;Lcom/notriddle/budget/EditMoney;)V

    invoke-virtual {v2, v3}, Lcom/notriddle/budget/EditMoney;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    return-object v1
.end method

.method public final setDepositesChangeListener(Lcom/notriddle/budget/PaycheckEnvelopesAdapter$DepositesChangeListener;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .param p1, "listener"    # Lcom/notriddle/budget/PaycheckEnvelopesAdapter$DepositesChangeListener;

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter;--->setDepositesChangeListener(Lcom/notriddle/budget/PaycheckEnvelopesAdapter$DepositesChangeListener;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object v1, v0, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->mListener:Lcom/notriddle/budget/PaycheckEnvelopesAdapter$DepositesChangeListener;

    .line 67
    return-void
.end method
