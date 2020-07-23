.class public Lcom/notriddle/budget/EditTextDefaultFocus;
.super Landroid/widget/EditText;
.source "EditTextDefaultFocus.java"


# instance fields
.field mDefaultFocus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .param p1, "cntx"    # Landroid/content/Context;

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/EditTextDefaultFocus;---><init>(Landroid/content/Context;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    # InsDal Modified --> local register: (3)#
    .registers 9

    move-object/16 v3, p0
    move-object/16 v4, p1
    move-object/16 v5, p2

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue

    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/EditTextDefaultFocus;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-direct {v3, v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-string v0, "http://schemas.android.com/apk/res/com.notriddle.budget"

    const-string v1, "defaultFocus"

    const/4 v2, 0x0

    invoke-interface {v5, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/EditTextDefaultFocus;->setDefaultFocus(Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    # InsDal Modified --> local register: (3)#
    .registers 10

    move-object/16 v3, p0
    move-object/16 v4, p1
    move-object/16 v5, p2
    move/16 v6, p3

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/EditTextDefaultFocus;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 45
    invoke-direct {v3, v4, v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    sget-object v1, Lcom/notriddle/budget/R$styleable;->EditTextDefaultFocus:[I

    invoke-virtual {v4, v5, v1, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/notriddle/budget/EditTextDefaultFocus;->setDefaultFocus(Z)V

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    # InsDal Modified --> local register: (3)#
    .registers 7

    move-object/16 v3, p0


    .prologue
    .line 52
    invoke-super {v3}, Landroid/widget/EditText;->onAttachedToWindow()V


    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/EditTextDefaultFocus;--->onAttachedToWindow()V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-boolean v1, v3, Lcom/notriddle/budget/EditTextDefaultFocus;->mDefaultFocus:Z

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v3}, Lcom/notriddle/budget/EditTextDefaultFocus;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v3}, Lcom/notriddle/budget/EditTextDefaultFocus;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 61
    :cond_0
    invoke-virtual {v3}, Lcom/notriddle/budget/EditTextDefaultFocus;->requestFocus()Z

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {v3}, Lcom/notriddle/budget/EditTextDefaultFocus;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 67
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 68
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 69
    invoke-virtual {v3}, Lcom/notriddle/budget/EditTextDefaultFocus;->clearFocus()V

    goto :goto_0
.end method

.method public setDefaultFocus(Z)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move/16 v4, p1

    .param p1, "ex"    # Z

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/EditTextDefaultFocus;--->setDefaultFocus(Z)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "EditTextDefaultFocus.setDefaultFocus"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v3}, Lcom/notriddle/budget/EditTextDefaultFocus;->requestFocus()Z

    .line 80
    :goto_0
    iput-boolean v4, v3, Lcom/notriddle/budget/EditTextDefaultFocus;->mDefaultFocus:Z

    .line 81
    return-void

    .line 78
    :cond_0
    invoke-virtual {v3}, Lcom/notriddle/budget/EditTextDefaultFocus;->clearFocus()V

    goto :goto_0
.end method
