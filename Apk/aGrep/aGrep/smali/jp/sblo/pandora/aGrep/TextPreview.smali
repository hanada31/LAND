.class public Ljp/sblo/pandora/aGrep/TextPreview;
.super Landroid/widget/ListView;
.source "TextPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/sblo/pandora/aGrep/TextPreview$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .param p1, "context"    # Landroid/content/Context;

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Ljp/sblo/pandora/aGrep/TextPreview;---><init>(Landroid/content/Context;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {v0, v1}, Ljp/sblo/pandora/aGrep/TextPreview;->init(Landroid/content/Context;)V

    .line 31
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
    const-string v4, "Ljp/sblo/pandora/aGrep/TextPreview;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {v0, v1}, Ljp/sblo/pandora/aGrep/TextPreview;->init(Landroid/content/Context;)V

    .line 26
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
    const-string v5, "Ljp/sblo/pandora/aGrep/TextPreview;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-direct {v0, v1}, Ljp/sblo/pandora/aGrep/TextPreview;->init(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private init(Landroid/content/Context;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "context"    # Landroid/content/Context;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Ljp/sblo/pandora/aGrep/TextPreview;--->init(Landroid/content/Context;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 35
    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/TextPreview;->setSmoothScrollbarEnabled(Z)V

    .line 36
    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/TextPreview;->setScrollingCacheEnabled(Z)V

    .line 37
    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/TextPreview;->setFocusable(Z)V

    .line 38
    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/TextPreview;->setFocusableInTouchMode(Z)V

    .line 39
    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/TextPreview;->setFastScrollEnabled(Z)V

    .line 40
    invoke-virtual {v2, v1}, Ljp/sblo/pandora/aGrep/TextPreview;->setBackgroundColor(I)V

    .line 41
    invoke-virtual {v2, v1}, Ljp/sblo/pandora/aGrep/TextPreview;->setCacheColorHint(I)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljp/sblo/pandora/aGrep/TextPreview;->setDividerHeight(I)V

    .line 43
    return-void
.end method
