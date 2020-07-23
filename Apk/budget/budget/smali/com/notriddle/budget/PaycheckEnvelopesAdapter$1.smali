.class final Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;
.super Ljava/lang/Object;
.source "PaycheckEnvelopesAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

.field final synthetic val$value:Lcom/notriddle/budget/EditMoney;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/PaycheckEnvelopesAdapter;Lcom/notriddle/budget/EditMoney;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;---><init>(Lcom/notriddle/budget/PaycheckEnvelopesAdapter;Lcom/notriddle/budget/EditMoney;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object v1, v0, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;->this$0:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    iput-object v2, v0, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;->val$value:Lcom/notriddle/budget/EditMoney;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;--->afterTextChanged(Landroid/text/Editable;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
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
    const-string v6, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;--->beforeTextChanged(Ljava/lang/CharSequence;III)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    # InsDal Modified --> local register: (6)#
    .registers 14

    move-object/16 v6, p0
    move-object/16 v7, p1
    move/16 v8, p2
    move/16 v9, p3
    move/16 v10, p4


    .prologue

    const-string v11, "M_InsDal"
    const-string v12, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;--->onTextChanged(Ljava/lang/CharSequence;III)V"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v3, v6, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;->val$value:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v3}, Lcom/notriddle/budget/EditMoney;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v3, v6, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;->val$value:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v3}, Lcom/notriddle/budget/EditMoney;->getCents()J

    move-result-wide v0

    .line 105
    .local v0, "cents":J
    iget-object v3, v6, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;->val$value:Lcom/notriddle/budget/EditMoney;

    invoke-virtual {v3}, Lcom/notriddle/budget/EditMoney;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 106
    .local v2, "id":I
    const-string v3, "PaycheckEnvelopesAdapter.TextWatcher.onTextChanged"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cents="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v3, v6, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;->this$0:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    iget-object v3, v3, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->mDeposites:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    iget-object v3, v6, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;->this$0:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    iget-object v3, v3, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->mListener:Lcom/notriddle/budget/PaycheckEnvelopesAdapter$DepositesChangeListener;

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, v6, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;->this$0:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    iget-object v3, v3, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->mListener:Lcom/notriddle/budget/PaycheckEnvelopesAdapter$DepositesChangeListener;

    iget-object v4, v6, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$1;->this$0:Lcom/notriddle/budget/PaycheckEnvelopesAdapter;

    iget-object v4, v4, Lcom/notriddle/budget/PaycheckEnvelopesAdapter;->mDeposites:Landroid/util/SparseArray;

    invoke-interface {v3}, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$DepositesChangeListener;->onDepositesChange$555aa968()V

    goto :goto_0
.end method
