.class public final Lcom/notriddle/budget/SimpleEnvelopesAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SimpleEnvelopesAdapter.java"


# static fields
.field static final FROM:[Ljava/lang/String;

.field static final TO:[I


# instance fields
.field mExpanded:Z

.field private sdkVersion:I


# direct methods
.method static constructor <clinit>()V
    # InsDal Modified --> local register: (4)#
    .registers 7



    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/SimpleEnvelopesAdapter;---><clinit>()V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->FROM:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [I

    const v1, 0x1020014

    aput v1, v0, v2

    sput-object v0, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->TO:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    # InsDal Modified --> local register: (7)#
    .registers 14

    move-object/16 v7, p0
    move-object/16 v8, p1
    move-object/16 v9, p2
    move/16 v10, p3

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "csr"    # Landroid/database/Cursor;
    .param p3, "layout"    # I

    .prologue

    const-string v11, "M_InsDal"
    const-string v12, "Lcom/notriddle/budget/SimpleEnvelopesAdapter;---><init>(Landroid/content/Context;Landroid/database/Cursor;I)V"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 44
    sget-object v4, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->FROM:[Ljava/lang/String;

    sget-object v5, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->TO:[I

    move-object v0, v7

    move-object v1, v8

    move v2, v10

    move-object v3, v9

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, v7, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->sdkVersion:I

    .line 45
    iput-boolean v6, v7, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->mExpanded:Z

    .line 46
    return-void
.end method

.method private changeColor(ILandroid/view/View;)V
    # InsDal Modified --> local register: (4)#
    .registers 10

    move-object/16 v4, p0
    move/16 v5, p1
    move-object/16 v6, p2

    .param p1, "pos"    # I
    .param p2, "change"    # Landroid/view/View;

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/SimpleEnvelopesAdapter;--->changeColor(ILandroid/view/View;)V"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v4}, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 74
    .local v1, "csr":Landroid/database/Cursor;
    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 75
    const-string v2, "color"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 76
    .local v0, "color":I
    iget v2, v4, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->sdkVersion:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 77
    invoke-static {v0}, Lcom/notriddle/budget/EnvelopesAdapter;->getColorStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {v0}, Lcom/notriddle/budget/EnvelopesAdapter;->getColorStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    # InsDal Modified --> local register: (1)#
    .registers 8

    move-object/16 v1, p0
    move/16 v2, p1
    move-object/16 v3, p2
    move-object/16 v4, p3

    .param p1, "pos"    # I
    .param p2, "conv"    # Landroid/view/View;
    .param p3, "par"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    invoke-super {v1, v2, v3, v4}, Landroid/widget/SimpleCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/SimpleEnvelopesAdapter;--->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    .line 59
    .local v0, "retVal":Landroid/view/View;
    invoke-direct {v1, v2, v0}, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->changeColor(ILandroid/view/View;)V

    .line 60
    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    # InsDal Modified --> local register: (2)#
    .registers 9

    move-object/16 v2, p0
    move/16 v3, p1
    move-object/16 v4, p2
    move-object/16 v5, p3

    .param p1, "pos"    # I
    .param p2, "conv"    # Landroid/view/View;
    .param p3, "par"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    invoke-super {v2, v3, v4, v5}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/SimpleEnvelopesAdapter;--->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    .line 52
    .local v0, "retVal":Landroid/view/View;
    iget-boolean v1, v2, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {v2, v3, v0}, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->changeColor(ILandroid/view/View;)V

    .line 55
    :cond_0
    return-object v0
.end method

.method public final newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    # InsDal Modified --> local register: (4)#
    .registers 11

    move-object/16 v4, p0
    move-object/16 v5, p1
    move-object/16 v6, p2
    move-object/16 v7, p3

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "csr"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/SimpleEnvelopesAdapter;--->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "retVal":Landroid/view/View;
    invoke-virtual {v4, v0, v5, v6}, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 70
    return-object v0
.end method

.method public final setExpanded$1385ff()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/SimpleEnvelopesAdapter;--->setExpanded$1385ff()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/notriddle/budget/SimpleEnvelopesAdapter;->mExpanded:Z

    .line 49
    return-void
.end method
