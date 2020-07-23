.class final Lcom/notriddle/budget/DeleteView$3;
.super Ljava/lang/Object;
.source "DeleteView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/notriddle/budget/DeleteView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/notriddle/budget/DeleteView;


# direct methods
.method constructor <init>(Lcom/notriddle/budget/DeleteView;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteView$3;---><init>(Lcom/notriddle/budget/DeleteView;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object v1, v0, Lcom/notriddle/budget/DeleteView$3;->this$0:Lcom/notriddle/budget/DeleteView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    # InsDal Modified --> local register: (2)#
    .registers 6

    move-object/16 v2, p0


    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/DeleteView$3;--->run()V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, v2, Lcom/notriddle/budget/DeleteView$3;->this$0:Lcom/notriddle/budget/DeleteView;

    iget-object v0, v0, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 107
    return-void
.end method
