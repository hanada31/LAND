.class final Lcom/notriddle/budget/DeleteAdapter$1;
.super Landroid/database/DataSetObserver;
.source "DeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/DeleteAdapter;-><init>(Landroid/app/Activity;Lcom/notriddle/budget/DeleteAdapter$Deleter;Landroid/widget/ListAdapter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/DeleteAdapter;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/DeleteAdapter;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteAdapter$1;---><init>(Lcom/notriddle/budget/DeleteAdapter;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-object v1, v0, Lcom/notriddle/budget/DeleteAdapter$1;->this$0:Lcom/notriddle/budget/DeleteAdapter;

    invoke-direct {v0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    # InsDal Modified --> local register: (9)#
    .registers 13

    move-object/16 v9, p0


    .prologue
    const-wide/16 v7, -0x1

    .line 65
    invoke-super {v9}, Landroid/database/DataSetObserver;->onChanged()V


    const-string v10, "M_InsDal"
    const-string v11, "Lcom/notriddle/budget/DeleteAdapter$1;--->onChanged()V"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v3, v9, Lcom/notriddle/budget/DeleteAdapter$1;->this$0:Lcom/notriddle/budget/DeleteAdapter;

    iget-wide v3, v3, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    .line 67
    iget-object v3, v9, Lcom/notriddle/budget/DeleteAdapter$1;->this$0:Lcom/notriddle/budget/DeleteAdapter;

    iget-object v3, v3, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 68
    .local v2, "l":I
    const/4 v0, 0x0

    .line 69
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v2, :cond_1

    .line 70
    iget-object v3, v9, Lcom/notriddle/budget/DeleteAdapter$1;->this$0:Lcom/notriddle/budget/DeleteAdapter;

    iget-object v3, v3, Lcom/notriddle/budget/DeleteAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    iget-object v5, v9, Lcom/notriddle/budget/DeleteAdapter$1;->this$0:Lcom/notriddle/budget/DeleteAdapter;

    iget-wide v5, v5, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    if-nez v0, :cond_2

    .line 75
    iget-object v3, v9, Lcom/notriddle/budget/DeleteAdapter$1;->this$0:Lcom/notriddle/budget/DeleteAdapter;

    iput-wide v7, v3, Lcom/notriddle/budget/DeleteAdapter;->mDeletedId:J

    .line 78
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v2    # "l":I
    :cond_2
    iget-object v3, v9, Lcom/notriddle/budget/DeleteAdapter$1;->this$0:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v3}, Lcom/notriddle/budget/DeleteAdapter;->notifyDataSetChanged()V

    .line 79
    return-void
.end method

.method public final onInvalidated()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue
    .line 81
    invoke-super {v1}, Landroid/database/DataSetObserver;->onInvalidated()V


    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteAdapter$1;--->onInvalidated()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, v1, Lcom/notriddle/budget/DeleteAdapter$1;->this$0:Lcom/notriddle/budget/DeleteAdapter;

    invoke-virtual {v0}, Lcom/notriddle/budget/DeleteAdapter;->notifyDataSetInvalidated()V

    .line 83
    return-void
.end method
