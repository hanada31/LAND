.class final Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;
.super Ljava/lang/Object;
.source "PaycheckEnvelopesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/notriddle/budget/PaycheckEnvelopesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CardContents"
.end annotation


# instance fields
.field public name:Landroid/widget/TextView;

.field public parent:Landroid/view/View;

.field public value:Lcom/notriddle/budget/EditMoney;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "v"    # Landroid/view/View;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;---><init>(Landroid/view/View;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v2, v1, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;->parent:Landroid/view/View;

    .line 72
    const v0, 0x7f0a0006

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;->name:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0a0007

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/notriddle/budget/EditMoney;

    iput-object v0, v1, Lcom/notriddle/budget/PaycheckEnvelopesAdapter$CardContents;->value:Lcom/notriddle/budget/EditMoney;

    .line 74
    return-void
.end method
