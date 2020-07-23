.class final Lcom/notriddle/budget/DeleteView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeleteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/DeleteView;->performDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/DeleteView;

.field final synthetic val$oldPadding:I

.field final synthetic val$paddingAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/DeleteView;Landroid/animation/ObjectAnimator;I)V
    # InsDal Modified --> local register: (0)#
    .registers 7

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2
    move/16 v3, p3


    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteView$4;---><init>(Lcom/notriddle/budget/DeleteView;Landroid/animation/ObjectAnimator;I)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iput-object v1, v0, Lcom/notriddle/budget/DeleteView$4;->this$0:Lcom/notriddle/budget/DeleteView;

    iput-object v2, v0, Lcom/notriddle/budget/DeleteView$4;->val$paddingAnim:Landroid/animation/ObjectAnimator;

    iput v3, v0, Lcom/notriddle/budget/DeleteView$4;->val$oldPadding:I

    invoke-direct {v0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1


    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteView$4;--->onAnimationEnd(Landroid/animation/Animator;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, v2, Lcom/notriddle/budget/DeleteView$4;->this$0:Lcom/notriddle/budget/DeleteView;

    iget-object v0, v0, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, v2, Lcom/notriddle/budget/DeleteView$4;->this$0:Lcom/notriddle/budget/DeleteView;

    iget-object v0, v0, Lcom/notriddle/budget/DeleteView;->mListener:Lcom/notriddle/budget/DeleteView$OnDeleteListener;

    iget-object v1, v2, Lcom/notriddle/budget/DeleteView$4;->this$0:Lcom/notriddle/budget/DeleteView;

    invoke-interface {v0, v1}, Lcom/notriddle/budget/DeleteView$OnDeleteListener;->onDelete(Lcom/notriddle/budget/DeleteView;)V

    .line 297
    const-string v0, "Budget"

    const-string v1, "performDelete(): done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    const-string v0, "Budget"

    const-string v1, "performDelete(): canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, v2, Lcom/notriddle/budget/DeleteView$4;->val$paddingAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 301
    iget-object v0, v2, Lcom/notriddle/budget/DeleteView$4;->this$0:Lcom/notriddle/budget/DeleteView;

    iget v1, v2, Lcom/notriddle/budget/DeleteView$4;->val$oldPadding:I

    invoke-virtual {v0, v1}, Lcom/notriddle/budget/DeleteView;->setPaddingY(I)V

    goto :goto_0
.end method
