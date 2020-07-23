.class final Lcom/notriddle/budget/LogAdapter$CardContents;
.super Ljava/lang/Object;
.source "LogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/notriddle/budget/LogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CardContents"
.end annotation


# instance fields
.field public envelope:Landroid/widget/TextView;

.field public money:Ljava/lang/StringBuilder;

.field public name:Landroid/widget/TextView;

.field public parent:Landroid/view/View;

.field public time:Landroid/widget/TextView;

.field public value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "v"    # Landroid/view/View;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/LogAdapter$CardContents;---><init>(Landroid/view/View;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    const v0, 0x7f0a0006

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/notriddle/budget/LogAdapter$CardContents;->name:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0a0007

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/notriddle/budget/LogAdapter$CardContents;->value:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0a000f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/notriddle/budget/LogAdapter$CardContents;->time:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0a0010

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/notriddle/budget/LogAdapter$CardContents;->envelope:Landroid/widget/TextView;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, v2, Lcom/notriddle/budget/LogAdapter$CardContents;->money:Ljava/lang/StringBuilder;

    .line 49
    iput-object v3, v2, Lcom/notriddle/budget/LogAdapter$CardContents;->parent:Landroid/view/View;

    .line 50
    return-void
.end method
