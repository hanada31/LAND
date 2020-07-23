.class public final Lcom/notriddle/budget/SimpleLogAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SimpleLogAdapter.java"


# static fields
.field static final FROM:[Ljava/lang/String;

.field static final TO:[I


# direct methods
.method static constructor <clinit>()V
    # InsDal Modified --> local register: (4)#
    .registers 7



    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/SimpleLogAdapter;---><clinit>()V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "description"

    aput-object v1, v0, v2

    sput-object v0, Lcom/notriddle/budget/SimpleLogAdapter;->FROM:[Ljava/lang/String;

    .line 33
    new-array v0, v3, [I

    const v1, 0x1020014

    aput v1, v0, v2

    sput-object v0, Lcom/notriddle/budget/SimpleLogAdapter;->TO:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    # InsDal Modified --> local register: (7)#
    .registers 12

    move-object/16 v7, p0
    move-object/16 v8, p1

    .param p1, "cntx"    # Landroid/content/Context;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/SimpleLogAdapter;---><init>(Landroid/content/Context;)V"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const v2, 0x1090003

    const/4 v3, 0x0

    sget-object v4, Lcom/notriddle/budget/SimpleLogAdapter;->FROM:[Ljava/lang/String;

    sget-object v5, Lcom/notriddle/budget/SimpleLogAdapter;->TO:[I

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, v8

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 38
    return-void
.end method


# virtual methods
.method public final bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 29
    const-string v0, "description"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

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
    const-string v9, "Lcom/notriddle/budget/SimpleLogAdapter;--->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "retVal":Landroid/view/View;
    invoke-virtual {v4, v0, v5, v6}, Lcom/notriddle/budget/SimpleLogAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 50
    return-object v0
.end method
