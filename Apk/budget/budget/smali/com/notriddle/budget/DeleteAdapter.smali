.class public final Lcom/notriddle/budget/DeleteAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeleteAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/WrapperListAdapter;
.implements Lcom/notriddle/budget/DeleteView$OnDeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/notriddle/budget/DeleteAdapter$Deleter;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mCntx:Landroid/app/Activity;

.field mDeletedId:J

.field mDeleter:Lcom/notriddle/budget/DeleteAdapter$Deleter;

.field mObserver:Landroid/database/DataSetObserver;

.field mObserverCount:I

.field mSwipeBackgroundResource:I

.field mUndoMode:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/notriddle/budget/DeleteAdapter$Deleter;Landroid/widget/ListAdapter;I)V
    # InsDal Modified --> local register: (2)#
    .registers 10

    move-object/16 v2, p0
    move-object/16 v3, p1
    move-object/16 v4, p2
    move-object/16 v5, p3
    move/16 v6, p4

    .param p1, "cntx"    # Landroid/app/Activity;
    .param p2, "deleter"    # Lcom/notriddle/budget/DeleteAdapter$Deleter;
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .param p4, "background"    # I

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/DeleteAdapter;---><init>(Landroid/app/Activity;Lcom/notriddle/budget/DeleteAdapter$Deleter;Landroid/widget/ListAdapter;I)V"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {v2}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    iput-object v3, v2, Lcom/notriddle/budget/DeleteAdapter;->mCntx:Landroid/app/Activity;

    .line 59
    iput-object v5, v2, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    .line 61
    iput v6, v2, Lcom/notriddle/budget/DeleteAdapter;->mSwipeBackgroundResource:I

    .line 62
    const/4 v0, 0x0

    iput v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mObserverCount:I

    .line 63
    new-instance v0, Lcom/notriddle/budget/DeleteAdapter$1;

    invoke-direct {v0, v2}, Lcom/notriddle/budget/DeleteAdapter$1;-><init>(Lcom/notriddle/budget/DeleteAdapter;)V

    iput-object v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 85
    iput-object v4, v2, Lcom/notriddle/budget/DeleteAdapter;->mDeleter:Lcom/notriddle/budget/DeleteAdapter$Deleter;

    .line 86
    return-void
.end method

.method private myPosToSourcePos(I)I
    # InsDal Modified --> local register: (6)#
    .registers 11

    move-object/16 v6, p0
    move/16 v7, p1

    .param p1, "pos"    # I

    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/DeleteAdapter;--->myPosToSourcePos(I)I"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-wide v0, v6, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v1, v6, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    iget-object v0, v6, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-eq v0, v3, :cond_2

    iget-object v4, v6, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_1

    :goto_1
    if-le v0, v7, :cond_3

    .end local v7    # "pos":I
    :cond_0
    :goto_2
    return v7

    .restart local v7    # "pos":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lcom/notriddle/budget/DeleteAdapter;->getCount()I

    move-result v0

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method private stopUndoMode()V
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/DeleteAdapter;--->stopUndoMode()V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, v2, Lcom/notriddle/budget/DeleteAdapter;->mUndoMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 241
    iget-object v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mUndoMode:Landroid/view/ActionMode;

    .line 242
    .local v0, "undoMode":Landroid/view/ActionMode;
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/notriddle/budget/DeleteAdapter;->mUndoMode:Landroid/view/ActionMode;

    .line 243
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 245
    .end local v0    # "undoMode":Landroid/view/ActionMode;
    :cond_0
    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteAdapter;--->areAllItemsEnabled()Z"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, v1, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public final getCount()I
    # InsDal Modified --> local register: (6)#
    .registers 10

    move-object/16 v6, p0


    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/DeleteAdapter;--->getCount()I"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, v6, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iget-wide v2, v6, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sub-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getDeletedId()J
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/DeleteAdapter;--->getDeletedId()J"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-wide v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    return-wide v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move/16 v3, p1

    .param p1, "pos"    # I

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteAdapter;--->getItem(I)Ljava/lang/Object;"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v2, v3}, Lcom/notriddle/budget/DeleteAdapter;->myPosToSourcePos(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move/16 v3, p1

    .param p1, "pos"    # I

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteAdapter;--->getItemId(I)J"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v2, v3}, Lcom/notriddle/budget/DeleteAdapter;->myPosToSourcePos(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move/16 v3, p1

    .param p1, "pos"    # I

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteAdapter;--->getItemViewType(I)I"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v2, v3}, Lcom/notriddle/budget/DeleteAdapter;->myPosToSourcePos(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    # InsDal Modified --> local register: (6)#
    .registers 13

    move-object/16 v6, p0
    move/16 v7, p1
    move-object/16 v8, p2
    move-object/16 v9, p3

    .param p1, "pos"    # I
    .param p2, "conv"    # Landroid/view/View;

    .prologue

    const-string v10, "M_InsDal"
    const-string v11, "Lcom/notriddle/budget/DeleteAdapter;--->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0a0007

    .line 131
    if-eqz v8, :cond_0

    move-object v1, v8

    .line 132
    check-cast v1, Lcom/notriddle/budget/DeleteView;

    .line 133
    .local v1, "retVal":Lcom/notriddle/budget/DeleteView;
    iget-object v2, v6, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v6, v7}, Lcom/notriddle/budget/DeleteAdapter;->myPosToSourcePos(I)I

    move-result v3

    invoke-virtual {v1}, Lcom/notriddle/budget/DeleteView;->getInnerView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "innerView":Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/notriddle/budget/DeleteView;->setInnerView(Landroid/view/View;)V

    .line 135
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/notriddle/budget/DeleteView;->setTag(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v6, v7}, Lcom/notriddle/budget/DeleteAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/notriddle/budget/DeleteView;->setTag(ILjava/lang/Object;)V

    .line 148
    :goto_0
    return-object v1

    .line 138
    .end local v0    # "innerView":Landroid/view/View;
    .end local v1    # "retVal":Lcom/notriddle/budget/DeleteView;
    :cond_0
    new-instance v1, Lcom/notriddle/budget/DeleteView;

    iget-object v2, v6, Lcom/notriddle/budget/DeleteAdapter;->mCntx:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/notriddle/budget/DeleteView;-><init>(Landroid/content/Context;)V

    .line 139
    .restart local v1    # "retVal":Lcom/notriddle/budget/DeleteView;
    iget v2, v6, Lcom/notriddle/budget/DeleteAdapter;->mSwipeBackgroundResource:I

    invoke-virtual {v1, v2}, Lcom/notriddle/budget/DeleteView;->setSwipeBackgroundResource(I)V

    .line 140
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/notriddle/budget/DeleteView;->setTag(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v6, v7}, Lcom/notriddle/budget/DeleteAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/notriddle/budget/DeleteView;->setTag(ILjava/lang/Object;)V

    .line 142
    iget-object v2, v6, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v6, v7}, Lcom/notriddle/budget/DeleteAdapter;->myPosToSourcePos(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 143
    .restart local v0    # "innerView":Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/notriddle/budget/DeleteView;->setInnerView(Landroid/view/View;)V

    .line 144
    invoke-virtual {v1, v6}, Lcom/notriddle/budget/DeleteView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v1, v6}, Lcom/notriddle/budget/DeleteView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 146
    invoke-virtual {v1, v6}, Lcom/notriddle/budget/DeleteView;->setOnDeleteListener(Lcom/notriddle/budget/DeleteView$OnDeleteListener;)V

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteAdapter;--->getViewTypeCount()I"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, v1, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public final getWrappedAdapter()Landroid/widget/ListAdapter;
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteAdapter;--->getWrappedAdapter()Landroid/widget/ListAdapter;"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, v1, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public final hasStableIds()Z
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteAdapter;--->hasStableIds()Z"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, v1, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteAdapter;--->isEmpty()Z"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, v1, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move/16 v3, p1

    .param p1, "pos"    # I

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteAdapter;--->isEnabled(I)Z"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v2, v3}, Lcom/notriddle/budget/DeleteAdapter;->myPosToSourcePos(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    # InsDal Modified --> local register: (2)#
    .registers 8

    move-object/16 v2, p0
    move-object/16 v3, p1
    move-object/16 v4, p2

    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/DeleteAdapter;--->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0027

    if-ne v0, v1, :cond_0

    .line 261
    iget-wide v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    const-wide/16 v0, -0x1

    iput-wide v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    iget-object v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mDeleter:Lcom/notriddle/budget/DeleteAdapter$Deleter;

    invoke-interface {v0}, Lcom/notriddle/budget/DeleteAdapter$Deleter;->undoDelete$1349ef()V

    invoke-virtual {v2}, Lcom/notriddle/budget/DeleteAdapter;->notifyDataSetChanged()V

    invoke-direct {v2}, Lcom/notriddle/budget/DeleteAdapter;->stopUndoMode()V

    .line 262
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    # InsDal Modified --> local register: (6)#
    .registers 11

    move-object/16 v6, p0
    move-object/16 v7, p1

    .param p1, "v"    # Landroid/view/View;

    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/DeleteAdapter;--->onClick(Landroid/view/View;)V"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/AdapterView;

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView;

    .line 177
    .local v1, "p":Landroid/widget/AdapterView;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 178
    .local v3, "pos":I
    invoke-virtual {v6, v3}, Lcom/notriddle/budget/DeleteAdapter;->getItemId(I)J

    move-result-wide v4

    .line 179
    .local v4, "id":J
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 180
    .local v0, "l":Landroid/widget/AdapterView$OnItemClickListener;
    if-eqz v0, :cond_0

    move-object v2, v7

    .line 181
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 184
    .end local v0    # "l":Landroid/widget/AdapterView$OnItemClickListener;
    .end local v1    # "p":Landroid/widget/AdapterView;
    .end local v3    # "pos":I
    .end local v4    # "id":J
    :cond_0
    return-void
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    # InsDal Modified --> local register: (4)#
    .registers 10

    move-object/16 v4, p0
    move-object/16 v5, p1
    move-object/16 v6, p2

    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/DeleteAdapter;--->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const v0, 0x7f070001

    invoke-virtual {v5, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 249
    invoke-virtual {v5}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1, v6}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 250
    iget-wide v0, v4, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onDelete(Lcom/notriddle/budget/DeleteView;)V
    # InsDal Modified --> local register: (7)#
    .registers 12

    move-object/16 v7, p0
    move-object/16 v8, p1

    .param p1, "v"    # Lcom/notriddle/budget/DeleteView;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/DeleteAdapter;--->onDelete(Lcom/notriddle/budget/DeleteView;)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const v4, 0x7f0a0007

    invoke-virtual {v8, v4}, Lcom/notriddle/budget/DeleteView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 199
    .local v0, "id":J
    iget-wide v2, v7, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    .line 200
    .local v2, "oldDeleted":J
    iput-wide v0, v7, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    .line 201
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 202
    iget-object v4, v7, Lcom/notriddle/budget/DeleteAdapter;->mDeleter:Lcom/notriddle/budget/DeleteAdapter$Deleter;

    invoke-interface {v4, v2, v3}, Lcom/notriddle/budget/DeleteAdapter$Deleter;->performDelete(J)V

    .line 204
    :cond_0
    iget-object v4, v7, Lcom/notriddle/budget/DeleteAdapter;->mDeleter:Lcom/notriddle/budget/DeleteAdapter$Deleter;

    iget-wide v5, v7, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    invoke-interface {v4}, Lcom/notriddle/budget/DeleteAdapter$Deleter;->onDelete$1349ef()V

    .line 205
    invoke-virtual {v7}, Lcom/notriddle/budget/DeleteAdapter;->notifyDataSetChanged()V

    .line 206
    const-string v4, "Budget"

    const-string v5, "onDelete()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v4, v7, Lcom/notriddle/budget/DeleteAdapter;->mUndoMode:Landroid/view/ActionMode;

    if-nez v4, :cond_1

    iget-object v4, v7, Lcom/notriddle/budget/DeleteAdapter;->mCntx:Landroid/app/Activity;

    invoke-virtual {v4, v7}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, v7, Lcom/notriddle/budget/DeleteAdapter;->mUndoMode:Landroid/view/ActionMode;

    .line 208
    :cond_1
    return-void
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/DeleteAdapter;--->onDestroyActionMode(Landroid/view/ActionMode;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/notriddle/budget/DeleteAdapter;->mUndoMode:Landroid/view/ActionMode;

    .line 257
    invoke-virtual {v1}, Lcom/notriddle/budget/DeleteAdapter;->performDelete()Z

    .line 258
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    # InsDal Modified --> local register: (6)#
    .registers 11

    move-object/16 v6, p0
    move-object/16 v7, p1

    .param p1, "v"    # Landroid/view/View;

    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/DeleteAdapter;--->onLongClick(Landroid/view/View;)Z"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/AdapterView;

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView;

    .line 188
    .local v1, "p":Landroid/widget/AdapterView;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 189
    .local v3, "pos":I
    invoke-virtual {v6, v3}, Lcom/notriddle/budget/DeleteAdapter;->getItemId(I)J

    move-result-wide v4

    .line 190
    .local v4, "id":J
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 191
    .local v0, "l":Landroid/widget/AdapterView$OnItemLongClickListener;
    if-eqz v0, :cond_0

    move-object v2, v7

    .line 192
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v2

    .line 195
    .end local v0    # "l":Landroid/widget/AdapterView$OnItemLongClickListener;
    .end local v1    # "p":Landroid/widget/AdapterView;
    .end local v3    # "pos":I
    .end local v4    # "id":J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    # InsDal Modified --> local register: (1)#
    .registers 7

    move-object/16 v1, p0
    move-object/16 v2, p1
    move-object/16 v3, p2


    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteAdapter;--->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public final performDelete()Z
    # InsDal Modified --> local register: (6)#
    .registers 10

    move-object/16 v6, p0


    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/DeleteAdapter;--->performDelete()Z"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, -0x1

    .line 215
    iget-wide v2, v6, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 216
    iget-wide v0, v6, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    .line 217
    .local v0, "del":J
    iput-wide v4, v6, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    .line 218
    iget-object v2, v6, Lcom/notriddle/budget/DeleteAdapter;->mDeleter:Lcom/notriddle/budget/DeleteAdapter$Deleter;

    invoke-interface {v2, v0, v1}, Lcom/notriddle/budget/DeleteAdapter$Deleter;->performDelete(J)V

    .line 219
    invoke-direct {v6}, Lcom/notriddle/budget/DeleteAdapter;->stopUndoMode()V

    .line 220
    const/4 v2, 0x1

    .line 222
    .end local v0    # "del":J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 160
    invoke-super {v2, v3}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V


    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteAdapter;--->registerDataSetObserver(Landroid/database/DataSetObserver;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mObserverCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mObserverCount:I

    .line 162
    iget v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mObserverCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, v2, Lcom/notriddle/budget/DeleteAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 165
    :cond_0
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 167
    invoke-super {v2, v3}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V


    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteAdapter;--->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mObserverCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mObserverCount:I

    .line 169
    iget v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mObserverCount:I

    if-nez v0, :cond_0

    .line 170
    iget-object v0, v2, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, v2, Lcom/notriddle/budget/DeleteAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 172
    :cond_0
    return-void
.end method
