.class final Lcom/notriddle/budget/EnvelopeDetailsActivity$1;
.super Ljava/lang/Object;
.source "EnvelopeDetailsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/EnvelopeDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/EnvelopeDetailsActivity;

.field final synthetic val$head:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/EnvelopeDetailsActivity;Landroid/view/View;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/EnvelopeDetailsActivity$1;---><init>(Lcom/notriddle/budget/EnvelopeDetailsActivity;Landroid/view/View;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object v1, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity$1;->this$0:Lcom/notriddle/budget/EnvelopeDetailsActivity;

    iput-object v2, v0, Lcom/notriddle/budget/EnvelopeDetailsActivity$1;->val$head:Landroid/view/View;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    # InsDal Modified --> local register: (3)#
    .registers 11

    move-object/16 v3, p0
    move-object/16 v4, p1
    move/16 v5, p2
    move/16 v6, p3
    move/16 v7, p4

    .param p1, "lV"    # Landroid/widget/AbsListView;

    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/EnvelopeDetailsActivity$1;--->onScroll(Landroid/widget/AbsListView;III)V"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 133
    iget-object v2, v3, Lcom/notriddle/budget/EnvelopeDetailsActivity$1;->val$head:Landroid/view/View;

    if-ne v1, v2, :cond_0

    .line 134
    iget-object v1, v3, Lcom/notriddle/budget/EnvelopeDetailsActivity$1;->val$head:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    mul-int/lit8 v1, v1, -0x2

    div-int/lit8 v0, v1, 0x3

    .line 135
    .local v0, "move":I
    iget-object v1, v3, Lcom/notriddle/budget/EnvelopeDetailsActivity$1;->this$0:Lcom/notriddle/budget/EnvelopeDetailsActivity;

    iget-object v1, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mAmount:Landroid/widget/TextView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 136
    iget-object v1, v3, Lcom/notriddle/budget/EnvelopeDetailsActivity$1;->this$0:Lcom/notriddle/budget/EnvelopeDetailsActivity;

    iget-object v1, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mAmountName:Landroid/widget/TextView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 137
    iget-object v1, v3, Lcom/notriddle/budget/EnvelopeDetailsActivity$1;->this$0:Lcom/notriddle/budget/EnvelopeDetailsActivity;

    iget-object v1, v1, Lcom/notriddle/budget/EnvelopeDetailsActivity;->mProjected:Landroid/widget/TextView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 139
    .end local v0    # "move":I
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/EnvelopeDetailsActivity$1;--->onScrollStateChanged(Landroid/widget/AbsListView;I)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method
