.class public final Lcom/notriddle/budget/csv/CSVReader;
.super Ljava/lang/Object;
.source "CSVReader.java"


# instance fields
.field private br:Ljava/io/BufferedReader;

.field private hasNext:Z

.field private linesSkiped:Z

.field private quotechar:C

.field private separator:C

.field private skipLines:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move-object/16 v2, p1

    .param p1, "reader"    # Ljava/io/Reader;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/csv/CSVReader;---><init>(Ljava/io/Reader;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lcom/notriddle/budget/csv/CSVReader;-><init>(Ljava/io/Reader;B)V

    .line 96
    return-void
.end method

.method private constructor <init>(Ljava/io/Reader;B)V
    # InsDal Modified --> local register: (1)#
    .registers 7

    move-object/16 v1, p0
    move-object/16 v2, p1
    move/16 v3, p2

    .param p1, "reader"    # Ljava/io/Reader;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/csv/CSVReader;---><init>(Ljava/io/Reader;B)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/notriddle/budget/csv/CSVReader;->hasNext:Z

    .line 111
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, v1, Lcom/notriddle/budget/csv/CSVReader;->br:Ljava/io/BufferedReader;

    .line 112
    const/16 v0, 0x2c

    iput-char v0, v1, Lcom/notriddle/budget/csv/CSVReader;->separator:C

    .line 113
    const/16 v0, 0x22

    iput-char v0, v1, Lcom/notriddle/budget/csv/CSVReader;->quotechar:C

    .line 114
    const/4 v0, 0x0

    iput v0, v1, Lcom/notriddle/budget/csv/CSVReader;->skipLines:I

    .line 115
    return-void
.end method

.method private getNextLine()Ljava/lang/String;
    # InsDal Modified --> local register: (3)#
    .registers 7

    move-object/16 v3, p0

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/csv/CSVReader;--->getNextLine()Ljava/lang/String;"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v2, v3, Lcom/notriddle/budget/csv/CSVReader;->linesSkiped:Z

    if-nez v2, :cond_1

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, v3, Lcom/notriddle/budget/csv/CSVReader;->skipLines:I

    if-ge v0, v2, :cond_0

    .line 142
    iget-object v2, v3, Lcom/notriddle/budget/csv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/notriddle/budget/csv/CSVReader;->linesSkiped:Z

    .line 146
    .end local v0    # "i":I
    :cond_1
    iget-object v2, v3, Lcom/notriddle/budget/csv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "nextLine":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 148
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/notriddle/budget/csv/CSVReader;->hasNext:Z

    .line 150
    :cond_2
    iget-boolean v2, v3, Lcom/notriddle/budget/csv/CSVReader;->hasNext:Z

    if-eqz v2, :cond_3

    .end local v1    # "nextLine":Ljava/lang/String;
    :goto_1
    return-object v1

    .restart local v1    # "nextLine":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final readNext()[Ljava/lang/String;
    # InsDal Modified --> local register: (10)#
    .registers 14

    move-object/16 v10, p0

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue

    const-string v11, "M_InsDal"
    const-string v12, "Lcom/notriddle/budget/csv/CSVReader;--->readNext()[Ljava/lang/String;"
    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 128
    invoke-direct {v10}, Lcom/notriddle/budget/csv/CSVReader;->getNextLine()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "nextLine":Ljava/lang/String;
    iget-boolean v1, v10, Lcom/notriddle/budget/csv/CSVReader;->hasNext:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v3

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_0

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {v10}, Lcom/notriddle/budget/csv/CSVReader;->getNextLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    :cond_0
    move-object v5, v4

    move v4, v2

    move v2, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-char v8, v10, Lcom/notriddle/budget/csv/CSVReader;->quotechar:C

    if-ne v7, v8, :cond_4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v2, 0x1

    if-le v8, v9, :cond_2

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iget-char v9, v10, Lcom/notriddle/budget/csv/CSVReader;->quotechar:C

    if-ne v8, v9, :cond_2

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    const/4 v8, 0x2

    if-le v2, v8, :cond_1

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iget-char v9, v10, Lcom/notriddle/budget/csv/CSVReader;->separator:C

    if-eq v8, v9, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v2, 0x1

    if-le v8, v9, :cond_1

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iget-char v9, v10, Lcom/notriddle/budget/csv/CSVReader;->separator:C

    if-eq v8, v9, :cond_1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    move v4, v3

    goto :goto_3

    :cond_4
    iget-char v8, v10, Lcom/notriddle/budget/csv/CSVReader;->separator:C

    if-ne v7, v8, :cond_5

    if-nez v4, :cond_5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    if-nez v4, :cond_9

    move-object v4, v5

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    :goto_4
    return-object v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    move v2, v4

    move-object v4, v5

    goto/16 :goto_0
.end method
