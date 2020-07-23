.class public Lcom/notriddle/budget/MonitorScrollView;
.super Landroid/widget/ScrollView;
.source "MonitorScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .param p1, "context"    # Landroid/content/Context;

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/MonitorScrollView;---><init>(Landroid/content/Context;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 45
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
    const-string v4, "Lcom/notriddle/budget/MonitorScrollView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-direct {v0, v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
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
    const-string v5, "Lcom/notriddle/budget/MonitorScrollView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    # InsDal Modified --> local register: (1)#
    .registers 9

    move-object/16 v1, p0
    move/16 v2, p1
    move/16 v3, p2
    move/16 v4, p3
    move/16 v5, p4

    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oL"    # I
    .param p4, "oT"    # I

    .prologue
    .line 53
    invoke-super {v1, v2, v3, v4, v5}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V


    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/MonitorScrollView;--->onScrollChanged(IIII)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, v1, Lcom/notriddle/budget/MonitorScrollView;->mListener:Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, v1, Lcom/notriddle/budget/MonitorScrollView;->mListener:Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;

    invoke-interface {v0, v3}, Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;->onScrollChanged$255f295(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .param p1, "listener"    # Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/MonitorScrollView;--->setOnScrollListener(Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object v1, v0, Lcom/notriddle/budget/MonitorScrollView;->mListener:Lcom/notriddle/budget/MonitorScrollView$OnScrollListener;

    .line 49
    return-void
.end method
