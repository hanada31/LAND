.class public Lcom/notriddle/budget/EditMoney;
.super Landroid/widget/EditText;
.source "EditMoney.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "cntx"    # Landroid/content/Context;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/EditMoney;---><init>(Landroid/content/Context;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x2002

    invoke-virtual {v1, v0}, Lcom/notriddle/budget/EditMoney;->setInputType(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    # InsDal Modified --> local register: (1)#
    .registers 7

    move-object/16 v1, p0
    move-object/16 v2, p1
    move-object/16 v3, p2

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/EditMoney;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {v1, v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/16 v0, 0x2002

    invoke-virtual {v1, v0}, Lcom/notriddle/budget/EditMoney;->setInputType(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    # InsDal Modified --> local register: (1)#
    .registers 8

    move-object/16 v1, p0
    move-object/16 v2, p1
    move-object/16 v3, p2
    move/16 v4, p3

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/EditMoney;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/16 v0, 0x2002

    invoke-virtual {v1, v0}, Lcom/notriddle/budget/EditMoney;->setInputType(I)V

    .line 44
    return-void
.end method

.method public static toColoredMoney(Landroid/content/Context;J)Ljava/lang/CharSequence;
    # InsDal Modified --> local register: (5)#
    .registers 11

    move-object/16 v5, p0
    move-wide/16 v6, p1

    .param p0, "cntx"    # Landroid/content/Context;
    .param p1, "cents"    # J

    .prologue

    const-string v8, "M_InsDal"
    const-string v9, "Lcom/notriddle/budget/EditMoney;--->toColoredMoney(Landroid/content/Context;J)Ljava/lang/CharSequence;"
    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {v6, v7, v0}, Lcom/notriddle/budget/EditMoney;->toMoneyBuilder(JLjava/lang/Appendable;)Ljava/lang/Appendable;

    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-gez v1, :cond_0

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method

.method public static toMoney(J)Ljava/lang/CharSequence;
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-wide/16 v2, p0

    .param p0, "cents"    # J

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/EditMoney;--->toMoney(J)Ljava/lang/CharSequence;"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v2, v3, v0}, Lcom/notriddle/budget/EditMoney;->toMoneyBuilder(JLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toMoneyBuilder(JLjava/lang/Appendable;)Ljava/lang/Appendable;
    # InsDal Modified --> local register: (8)#
    .registers 14

    move-wide/16 v8, p0
    move-object/16 v10, p2

    .param p0, "cents"    # J
    .param p2, "builder"    # Ljava/lang/Appendable;

    .prologue

    const-string v11, "M_InsDal"
    const-string v12, "Lcom/notriddle/budget/EditMoney;--->toMoneyBuilder(JLjava/lang/Appendable;)Ljava/lang/Appendable;"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x64

    .line 66
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-gez v4, :cond_0

    .line 67
    :try_start_0
    const-string v4, "-"

    invoke-interface {v10, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 68
    neg-long v8, v8

    .line 70
    :cond_0
    const-wide/16 v4, 0x64

    div-long v1, v8, v4

    .line 71
    .local v1, "dollarPart":J
    mul-long v4, v1, v6

    sub-long v4, v8, v4

    long-to-int v0, v4

    .line 72
    .local v0, "centPart":I
    const-wide/16 v4, 0xa

    cmp-long v4, v1, v4

    if-gez v4, :cond_1

    .line 73
    const-string v4, "0"

    invoke-interface {v10, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 75
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 76
    const/16 v4, 0xa

    if-ge v0, v4, :cond_2

    const-string v4, ".0"

    :goto_0
    invoke-interface {v10, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 78
    return-object v10

    .line 76
    :cond_2
    const-string v4, "."
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v0    # "centPart":I
    .end local v1    # "dollarPart":J
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public getCents()J
    # InsDal Modified --> local register: (8)#
    .registers 12

    move-object/16 v8, p0


    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/EditMoney;--->getCents()J"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v8}, Lcom/notriddle/budget/EditMoney;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "[^0-9\\.]"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "0"

    :cond_0
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    const-string v5, "\\."

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-gez v4, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    neg-int v0, v4

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v2

    :goto_1
    neg-int v7, v4

    if-eq v0, v7, :cond_2

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_3
    int-to-long v0, v0

    mul-long/2addr v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    # InsDal Modified --> local register: (2)#
    .registers 9

    move-object/16 v2, p0
    move/16 v3, p1
    move/16 v4, p2
    move-object/16 v5, p3

    .param p1, "focus"    # Z
    .param p2, "dir"    # I
    .param p3, "prev"    # Landroid/graphics/Rect;

    .prologue
    .line 58
    invoke-super {v2, v3, v4, v5}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V


    const-string v6, "M_InsDal"
    const-string v7, "Lcom/notriddle/budget/EditMoney;--->onFocusChanged(ZILandroid/graphics/Rect;)V"
    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-nez v3, :cond_0

    .line 60
    invoke-virtual {v2}, Lcom/notriddle/budget/EditMoney;->getCents()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/notriddle/budget/EditMoney;->setCents(J)V

    .line 62
    :cond_0
    return-void
.end method

.method public setCents(J)V
    # InsDal Modified --> local register: (2)#
    .registers 8

    move-object/16 v2, p0
    move-wide/16 v3, p1

    .param p1, "cents"    # J

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/EditMoney;--->setCents(J)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Lcom/notriddle/budget/EditMoney;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void

    .line 54
    :cond_0
    invoke-static {v3, v4}, Lcom/notriddle/budget/EditMoney;->toMoney(J)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
