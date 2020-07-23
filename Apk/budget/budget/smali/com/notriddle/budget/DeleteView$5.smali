.class final Lcom/notriddle/budget/DeleteView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeleteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/DeleteView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/DeleteView;

.field final synthetic val$finalPosition:F


# direct methods
.method constructor <init>(Lcom/notriddle/budget/DeleteView;F)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move/16 v2, p2


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/DeleteView$5;---><init>(Lcom/notriddle/budget/DeleteView;F)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iput-object v1, v0, Lcom/notriddle/budget/DeleteView$5;->this$0:Lcom/notriddle/budget/DeleteView;

    iput v2, v0, Lcom/notriddle/budget/DeleteView$5;->val$finalPosition:F

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
    const-string v5, "Lcom/notriddle/budget/DeleteView$5;--->onAnimationEnd(Landroid/animation/Animator;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, v2, Lcom/notriddle/budget/DeleteView$5;->this$0:Lcom/notriddle/budget/DeleteView;

    iget-object v0, v0, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 330
    iget v0, v2, Lcom/notriddle/budget/DeleteView$5;->val$finalPosition:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 331
    iget-object v0, v2, Lcom/notriddle/budget/DeleteView$5;->this$0:Lcom/notriddle/budget/DeleteView;

    invoke-static {v0}, Lcom/notriddle/budget/DeleteView;->access$000(Lcom/notriddle/budget/DeleteView;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, v2, Lcom/notriddle/budget/DeleteView$5;->this$0:Lcom/notriddle/budget/DeleteView;

    invoke-virtual {v0}, Lcom/notriddle/budget/DeleteView;->performDelete()V

    goto :goto_0
.end method
