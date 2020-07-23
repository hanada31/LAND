.class public Ljp/sblo/pandora/aGrep/GrepView;
.super Landroid/widget/ListView;
.source "GrepView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/sblo/pandora/aGrep/GrepView$GrepAdapter;,
        Ljp/sblo/pandora/aGrep/GrepView$Callback;,
        Ljp/sblo/pandora/aGrep/GrepView$Data;
    }
.end annotation


# instance fields
.field private mCallback:Ljp/sblo/pandora/aGrep/GrepView$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .param p1, "context"    # Landroid/content/Context;

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/GrepView;---><init>(Landroid/content/Context;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-direct {v0, v1}, Ljp/sblo/pandora/aGrep/GrepView;->init(Landroid/content/Context;)V

    .line 88
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
    const-string v4, "Ljp/sblo/pandora/aGrep/GrepView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    invoke-direct {v0, v1}, Ljp/sblo/pandora/aGrep/GrepView;->init(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    # InsDal Modified --> local register: (0)#
    .registers 7

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2
    move/16 v3, p3

    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/GrepView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    invoke-direct {v0, v1}, Ljp/sblo/pandora/aGrep/GrepView;->init(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Ljp/sblo/pandora/aGrep/GrepView;)Ljp/sblo/pandora/aGrep/GrepView$Callback;
    .locals 1
    .param p0, "x0"    # Ljp/sblo/pandora/aGrep/GrepView;

    .prologue
    .line 19
    iget-object v0, p0, Ljp/sblo/pandora/aGrep/GrepView;->mCallback:Ljp/sblo/pandora/aGrep/GrepView$Callback;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "context"    # Landroid/content/Context;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/GrepView;--->init(Landroid/content/Context;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 57
    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/GrepView;->setSmoothScrollbarEnabled(Z)V

    .line 58
    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/GrepView;->setScrollingCacheEnabled(Z)V

    .line 59
    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/GrepView;->setFocusable(Z)V

    .line 60
    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/GrepView;->setFocusableInTouchMode(Z)V

    .line 61
    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/GrepView;->setFastScrollEnabled(Z)V

    .line 62
    invoke-virtual {v2, v1}, Ljp/sblo/pandora/aGrep/GrepView;->setBackgroundColor(I)V

    .line 63
    invoke-virtual {v2, v1}, Ljp/sblo/pandora/aGrep/GrepView;->setCacheColorHint(I)V

    .line 64
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/GrepView;->setDividerHeight(I)V

    .line 65
    new-instance v0, Ljp/sblo/pandora/aGrep/GrepView$1;

    invoke-direct {v0, v2}, Ljp/sblo/pandora/aGrep/GrepView$1;-><init>(Ljp/sblo/pandora/aGrep/GrepView;)V

    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/GrepView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    new-instance v0, Ljp/sblo/pandora/aGrep/GrepView$2;

    invoke-direct {v0, v2}, Ljp/sblo/pandora/aGrep/GrepView$2;-><init>(Ljp/sblo/pandora/aGrep/GrepView;)V

    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/GrepView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Ljp/sblo/pandora/aGrep/GrepView;--->onTouchEvent(Landroid/view/MotionEvent;)Z"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v1}, Ljp/sblo/pandora/aGrep/GrepView;->requestFocus()Z

    .line 109
    invoke-super {v1, v2}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCallback(Ljp/sblo/pandora/aGrep/GrepView$Callback;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .param p1, "cb"    # Ljp/sblo/pandora/aGrep/GrepView$Callback;

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/GrepView;--->setCallback(Ljp/sblo/pandora/aGrep/GrepView$Callback;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object v1, v0, Ljp/sblo/pandora/aGrep/GrepView;->mCallback:Ljp/sblo/pandora/aGrep/GrepView$Callback;

    .line 103
    return-void
.end method
