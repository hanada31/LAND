.class public final Lcom/notriddle/budget/LogAdapter;
.super Landroid/widget/CursorAdapter;
.source "LogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/notriddle/budget/LogAdapter$CardContents;
    }
.end annotation


# instance fields
.field mDate:Ljava/text/DateFormat;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "cntx"    # Landroid/content/Context;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/LogAdapter;---><init>(Landroid/content/Context;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 38
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, v2, Lcom/notriddle/budget/LogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    invoke-static {v3}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, v2, Lcom/notriddle/budget/LogAdapter;->mDate:Ljava/text/DateFormat;

    .line 40
    return-void
.end method

.method private fillCardContents(Landroid/content/Context;Lcom/notriddle/budget/LogAdapter$CardContents;Landroid/database/Cursor;)V
    # InsDal Modified --> local register: (15)#
    .registers 22

    move-object/16 v15, p0
    move-object/16 v16, p1
    move-object/16 v17, p2
    move-object/16 v18, p3

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "contents"    # Lcom/notriddle/budget/LogAdapter$CardContents;
    .param p3, "csr"    # Landroid/database/Cursor;

    .prologue

    const-string v19, "M_InsDal"
    const-string v20, "Lcom/notriddle/budget/LogAdapter;--->fillCardContents(Landroid/content/Context;Lcom/notriddle/budget/LogAdapter$CardContents;Landroid/database/Cursor;)V"
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v11, "time"

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 85
    .local v8, "time":J
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v11, v8, v13

    if-lez v11, :cond_2

    const v11, 0x1060013

    :goto_0
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 90
    .local v3, "color":I
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/notriddle/budget/LogAdapter$CardContents;->name:Landroid/widget/TextView;

    const-string v12, "description"

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/notriddle/budget/LogAdapter$CardContents;->name:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    const-string v11, "cents"

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 95
    .local v1, "cents":J
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/notriddle/budget/LogAdapter$CardContents;->money:Ljava/lang/StringBuilder;

    .line 96
    .local v6, "money":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 97
    const-wide/16 v11, 0x0

    cmp-long v11, v1, v11

    if-lez v11, :cond_0

    .line 98
    const-string v11, "+"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/notriddle/budget/LogAdapter$CardContents;->value:Landroid/widget/TextView;

    invoke-static {v1, v2, v6}, Lcom/notriddle/budget/EditMoney;->toMoneyBuilder(JLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/notriddle/budget/LogAdapter$CardContents;->value:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 105
    .local v10, "timeD":Ljava/util/Date;
    iget-object v11, v15, Lcom/notriddle/budget/LogAdapter;->mDate:Ljava/text/DateFormat;

    invoke-virtual {v11, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "formattedDate":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/notriddle/budget/LogAdapter$CardContents;->time:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/notriddle/budget/LogAdapter$CardContents;->time:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    const-string v11, "envelope"

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 110
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    if-eqz v11, :cond_3

    .line 111
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 112
    const-string v11, "envelope"

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "previousEnvelope":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 117
    :goto_1
    const-string v11, "envelope"

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "currentEnvelope":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 119
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/notriddle/budget/LogAdapter$CardContents;->envelope:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    .end local v4    # "currentEnvelope":Ljava/lang/String;
    .end local v7    # "previousEnvelope":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 85
    .end local v1    # "cents":J
    .end local v3    # "color":I
    .end local v5    # "formattedDate":Ljava/lang/String;
    .end local v6    # "money":Ljava/lang/StringBuilder;
    .end local v10    # "timeD":Ljava/util/Date;
    :cond_2
    const v11, 0x106000c

    goto/16 :goto_0

    .line 115
    .restart local v1    # "cents":J
    .restart local v3    # "color":I
    .restart local v5    # "formattedDate":Ljava/lang/String;
    .restart local v6    # "money":Ljava/lang/StringBuilder;
    .restart local v10    # "timeD":Ljava/util/Date;
    :cond_3
    const-string v7, ""

    .restart local v7    # "previousEnvelope":Ljava/lang/String;
    goto :goto_1

    .line 121
    .restart local v4    # "currentEnvelope":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/notriddle/budget/LogAdapter$CardContents;->envelope:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/notriddle/budget/LogAdapter$CardContents;->envelope:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/notriddle/budget/LogAdapter$CardContents;->envelope:Landroid/widget/TextView;

    const-string v12, "color"

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2
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
    const-string v6, "Lcom/notriddle/budget/LogAdapter;--->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/notriddle/budget/LogAdapter$CardContents;

    .line 67
    .local v0, "contents":Lcom/notriddle/budget/LogAdapter$CardContents;
    invoke-direct {v1, v3, v0, v4}, Lcom/notriddle/budget/LogAdapter;->fillCardContents(Landroid/content/Context;Lcom/notriddle/budget/LogAdapter$CardContents;Landroid/database/Cursor;)V

    .line 68
    return-void
.end method

.method public final bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 32
    const-string v0, "description"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    const-string v10, "Lcom/notriddle/budget/LogAdapter;--->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 72
    const-string v2, "envelope"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 73
    iget-object v2, v5, Lcom/notriddle/budget/LogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000d

    invoke-virtual {v2, v3, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "retVal":Landroid/view/View;
    :goto_0
    new-instance v0, Lcom/notriddle/budget/LogAdapter$CardContents;

    invoke-direct {v0, v1}, Lcom/notriddle/budget/LogAdapter$CardContents;-><init>(Landroid/view/View;)V

    .line 78
    .local v0, "contents":Lcom/notriddle/budget/LogAdapter$CardContents;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    invoke-direct {v5, v6, v0, v7}, Lcom/notriddle/budget/LogAdapter;->fillCardContents(Landroid/content/Context;Lcom/notriddle/budget/LogAdapter$CardContents;Landroid/database/Cursor;)V

    .line 80
    return-object v1

    .line 75
    .end local v0    # "contents":Lcom/notriddle/budget/LogAdapter$CardContents;
    .end local v1    # "retVal":Landroid/view/View;
    :cond_0
    iget-object v2, v5, Lcom/notriddle/budget/LogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000c

    invoke-virtual {v2, v3, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "retVal":Landroid/view/View;
    goto :goto_0
.end method
