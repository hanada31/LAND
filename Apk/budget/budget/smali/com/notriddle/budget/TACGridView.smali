.class public Lcom/notriddle/budget/TACGridView;
.super Landroid/widget/GridView;
.source "TACGridView.java"


# instance fields
.field expanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "context"    # Landroid/content/Context;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/TACGridView;---><init>(Landroid/content/Context;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-direct {v1, v2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/notriddle/budget/TACGridView;->expanded:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    # InsDal Modified --> local register: (1)#
    .registers 7

    move-object/16 v1, p0
    move-object/16 v2, p1
    move-object/16 v3, p2

    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/TACGridView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-direct {v1, v2, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/notriddle/budget/TACGridView;->expanded:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    # InsDal Modified --> local register: (1)#
    .registers 8

    move-object/16 v1, p0
    move-object/16 v2, p1
    move-object/16 v3, p2
    move/16 v4, p3

    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/TACGridView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/notriddle/budget/TACGridView;->expanded:Z

    .line 32
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    # InsDal Modified --> local register: (3)#
    .registers 9

    move-object/16 v3, p0
    move/16 v4, p1
    move/16 v5, p2

    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/TACGridView;--->onMeasure(II)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-boolean v1, v3, Lcom/notriddle/budget/TACGridView;->expanded:Z

    if-eqz v1, :cond_0

    .line 60
    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 62
    .local v0, "expandSpec":I
    invoke-super {v3, v4, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 64
    invoke-virtual {v3}, Lcom/notriddle/budget/TACGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 65
    invoke-virtual {v3}, Lcom/notriddle/budget/TACGridView;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    .end local v0    # "expandSpec":I
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {v3, v4, v5}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setExpanded(Z)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move/16 v1, p1

    .param p1, "expanded"    # Z

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/TACGridView;--->setExpanded(Z)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-boolean v1, v0, Lcom/notriddle/budget/TACGridView;->expanded:Z

    .line 52
    return-void
.end method
