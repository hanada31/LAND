.class public final Lcom/notriddle/budget/EnvelopesAdapter;
.super Landroid/widget/CursorAdapter;
.source "EnvelopesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/notriddle/budget/EnvelopesAdapter$CardContents;
    }
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field private sdkVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "cntx"    # Landroid/content/Context;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/EnvelopesAdapter;---><init>(Landroid/content/Context;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, v2, Lcom/notriddle/budget/EnvelopesAdapter;->sdkVersion:I

    .line 39
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, v2, Lcom/notriddle/budget/EnvelopesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    return-void
.end method

.method private fillCardContents(Landroid/content/Context;Lcom/notriddle/budget/EnvelopesAdapter$CardContents;Landroid/database/Cursor;)V
    # InsDal Modified --> local register: (5)#
    .registers 12

    move-object/16 v5, p0
    move-object/16 v6, p1
    move-object/16 v7, p2
    move-object/16 v8, p3

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "contents"    # Lcom/notriddle/budget/EnvelopesAdapter$CardContents;
    .param p3, "csr"    # Landroid/database/Cursor;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/EnvelopesAdapter;--->fillCardContents(Landroid/content/Context;Lcom/notriddle/budget/EnvelopesAdapter$CardContents;Landroid/database/Cursor;)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v3, v7, Lcom/notriddle/budget/EnvelopesAdapter$CardContents;->name:Landroid/widget/TextView;

    const-string v4, "name"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const-string v3, "cents"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 69
    .local v0, "cents":J
    iget-object v3, v7, Lcom/notriddle/budget/EnvelopesAdapter$CardContents;->value:Landroid/widget/TextView;

    invoke-static {v6, v0, v1}, Lcom/notriddle/budget/EditMoney;->toColoredMoney(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const-string v3, "color"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 71
    .local v2, "color":I
    iget v3, v5, Lcom/notriddle/budget/EnvelopesAdapter;->sdkVersion:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 72
    iget-object v3, v7, Lcom/notriddle/budget/EnvelopesAdapter$CardContents;->name:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/notriddle/budget/EnvelopesAdapter;->getColorStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v3, v7, Lcom/notriddle/budget/EnvelopesAdapter$CardContents;->name:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/notriddle/budget/EnvelopesAdapter;->getColorStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static getColorStateDrawable(I)Landroid/graphics/drawable/Drawable;
    # InsDal Modified --> local register: (8)#
    .registers 12

    move/16 v8, p0

    .param p0, "color"    # I

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/EnvelopesAdapter;--->getColorStateDrawable(I)Landroid/graphics/drawable/Drawable;"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 80
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 81
    .local v1, "retVal":Landroid/graphics/drawable/StateListDrawable;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 82
    .local v0, "normal":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x663400

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 83
    .local v3, "superS":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x77663400

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 84
    .local v2, "select":Landroid/graphics/drawable/Drawable;
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 85
    new-array v4, v7, [I

    const v5, 0x101009c

    aput v5, v4, v6

    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 86
    new-array v4, v7, [I

    const v5, 0x10100a0

    aput v5, v4, v6

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 87
    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 88
    new-array v4, v6, [I

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 89
    return-object v1
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    # InsDal Modified --> local register: (1)#
    .registers 8

    move-object/16 v1, p0
    move-object/16 v2, p1
    move-object/16 v3, p2
    move-object/16 v4, p3

    .param p1, "v"    # Landroid/view/View;
    .param p2, "cntx"    # Landroid/content/Context;
    .param p3, "csr"    # Landroid/database/Cursor;

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/EnvelopesAdapter;--->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/notriddle/budget/EnvelopesAdapter$CardContents;

    .line 55
    .local v0, "contents":Lcom/notriddle/budget/EnvelopesAdapter$CardContents;
    invoke-direct {v1, v3, v0, v4}, Lcom/notriddle/budget/EnvelopesAdapter;->fillCardContents(Landroid/content/Context;Lcom/notriddle/budget/EnvelopesAdapter$CardContents;Landroid/database/Cursor;)V

    .line 56
    return-void
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    # InsDal Modified --> local register: (5)#
    .registers 12

    move-object/16 v5, p0
    move-object/16 v6, p1
    move-object/16 v7, p2
    move-object/16 v8, p3

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "csr"    # Landroid/database/Cursor;
    .param p3, "par"    # Landroid/view/ViewGroup;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/EnvelopesAdapter;--->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v2, v5, Lcom/notriddle/budget/EnvelopesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "retVal":Landroid/view/View;
    new-instance v0, Lcom/notriddle/budget/EnvelopesAdapter$CardContents;

    invoke-direct {v0, v1}, Lcom/notriddle/budget/EnvelopesAdapter$CardContents;-><init>(Landroid/view/View;)V

    .line 61
    .local v0, "contents":Lcom/notriddle/budget/EnvelopesAdapter$CardContents;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    invoke-direct {v5, v6, v0, v7}, Lcom/notriddle/budget/EnvelopesAdapter;->fillCardContents(Landroid/content/Context;Lcom/notriddle/budget/EnvelopesAdapter$CardContents;Landroid/database/Cursor;)V

    .line 63
    return-object v1
.end method
