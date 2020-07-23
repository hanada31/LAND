.class public Lcom/notriddle/budget/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    # InsDal Modified --> local register: (3)#
    .registers 6



    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/CheckableRelativeLayout;---><clinit>()V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/notriddle/budget/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2

    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/CheckableRelativeLayout;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method


# virtual methods
.method public isChecked()Z
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/CheckableRelativeLayout;--->isChecked()Z"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-boolean v0, v1, Lcom/notriddle/budget/CheckableRelativeLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move/16 v3, p1

    .param p1, "extraSpace"    # I

    .prologue
    .line 48
    add-int/lit8 v1, v3, 0x1

    invoke-super {v2, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/CheckableRelativeLayout;--->onCreateDrawableState(I)[I"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    .line 49
    .local v0, "drawableState":[I
    invoke-virtual {v2}, Lcom/notriddle/budget/CheckableRelativeLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lcom/notriddle/budget/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/notriddle/budget/CheckableRelativeLayout;->mergeDrawableStates([I[I)[I

    .line 52
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    # InsDal Modified --> local register: (4)#
    .registers 9

    move-object/16 v4, p0
    move/16 v5, p1

    .param p1, "checked"    # Z

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/CheckableRelativeLayout;--->setChecked(Z)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-boolean v3, v4, Lcom/notriddle/budget/CheckableRelativeLayout;->mChecked:Z

    if-eq v3, v5, :cond_2

    .line 65
    iput-boolean v5, v4, Lcom/notriddle/budget/CheckableRelativeLayout;->mChecked:Z

    .line 66
    invoke-virtual {v4}, Lcom/notriddle/budget/CheckableRelativeLayout;->getChildCount()I

    move-result v1

    .line 67
    .local v1, "s":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, v1, :cond_1

    .line 68
    invoke-virtual {v4, v0}, Lcom/notriddle/budget/CheckableRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 70
    check-cast v2, Landroid/widget/Checkable;

    .line 71
    .end local v2    # "v":Landroid/view/View;
    iget-boolean v3, v4, Lcom/notriddle/budget/CheckableRelativeLayout;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v4}, Lcom/notriddle/budget/CheckableRelativeLayout;->refreshDrawableState()V

    .line 76
    .end local v0    # "i":I
    .end local v1    # "s":I
    :cond_2
    return-void
.end method

.method public toggle()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/CheckableRelativeLayout;--->toggle()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-boolean v0, v1, Lcom/notriddle/budget/CheckableRelativeLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/notriddle/budget/CheckableRelativeLayout;->setChecked(Z)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
